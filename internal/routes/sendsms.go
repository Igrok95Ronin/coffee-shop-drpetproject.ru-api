package routes

import (
	"encoding/json"
	"fmt"
	"github.com/Igrok95Ronin/coffee-shop-drpetproject.ru-api.git/internal/models"
	"github.com/Igrok95Ronin/coffee-shop-drpetproject.ru-api.git/pkg/httperror"
	"github.com/julienschmidt/httprouter"
	"github.com/redis/go-redis/v9"
	"html/template"
	"io"
	"math/rand"
	"net/http"
	"net/url"
	"regexp"
	"strconv"
	"strings"
	"time"
)

const (
	BLACKLIST              = "blacklist:phone:"
	ATTEMPTS               = "attempts:phone:"
	VERIFIED               = "verified:phone:"
	sendSMSCooldownPattern = "sendSMS:cooldown:" // Ключ для блокировки повторной отправки
)

// Получить SMS
func (h *handler) sendSMS(w http.ResponseWriter, r *http.Request, _ httprouter.Params) {
	var smsRegUser models.SMSRegUsers

	if err := json.NewDecoder(r.Body).Decode(&smsRegUser); err != nil {
		httperror.WriteJSONError(w, "Ошибка декодирования в json", err, http.StatusBadRequest)
		h.logger.Errorf("Ошибка декодирования в json: %s", err)
		return
	}

	// Убираем пробелы и экранируем спец символы
	var (
		phoneNumber = template.HTMLEscapeString(strings.TrimSpace(smsRegUser.PhoneNumber))
	)

	// Проверяем длину
	if len(phoneNumber) < 11 {
		httperror.WriteJSONError(w, "Некорректный номер телефона (проверьте длину)", nil, http.StatusBadRequest)
		h.logger.Errorf("Некорректный номер телефона (проверьте длину): %s", nil)
		return
	}

	// Проверяем номер телефона
	if !phoneRegex.MatchString(phoneNumber) {
		httperror.WriteJSONError(w, "Некорректный формат номера телефона. Используйте 7XXXXXXXXXX или 8XXXXXXXXXX", nil, http.StatusBadRequest)
		h.logger.Errorf("Некорректный номер телефона: %s", phoneNumber)
		return
	}

	// Приводим номер к формату SMSC
	phoneNumber = formatPhoneNumber(phoneNumber)

	// 1) Проверяем, не запрошен ли код для этого номера менее 5 минут назад
	if err := h.checkSendSMSCooldown(phoneNumber); err != nil {
		httperror.WriteJSONError(w, err.Error(), nil, http.StatusTooManyRequests)
		h.logger.Error(err)
		return
	}

	// Проверка в черном списке
	if err := blacklistRedis(h, w, phoneNumber); err != nil {
		h.logger.Error(err)
		return
	}

	// Проверяем есть ли пользователь с таким номером в бд
	exists, err := WeCheckThereUserWithThisNumber(h, phoneNumber)
	if err != nil {
		h.logger.Error(err)
		return
	} else if exists {
		h.logger.Error(err)
		httperror.WriteJSONError(w, "Такой номер уже зарегистрирован", err, http.StatusBadRequest)
		return
	}

	// Отправить смс для подтверждения
	if err := sendSmsForConfirmation(h, w, phoneNumber); err != nil {
		h.logger.Error(err)
		return
	}

	// 2) Если отправка СМС прошла успешно, устанавливаем блокировку на 5 минут
	if err := h.setSendSMSCooldown(phoneNumber, 5*time.Minute); err != nil {
		h.logger.Errorf("Не удалось установить блокировку на отправку для номера %s: %v", phoneNumber, err)
	}

	w.WriteHeader(http.StatusOK)
}

// Регулярка для проверки номера телефона (11 цифр, может начинаться с +7 или 8)
var phoneRegex = regexp.MustCompile(`^\+?[78]\d{10}$`)

// Функция для приведения номера в формат SMSC
func formatPhoneNumber(phone string) string {
	// Убираем `+` в начале, если есть
	phone = strings.TrimPrefix(phone, "+")
	// Если номер начинается с `8`, заменяем `8` на `7`
	if strings.HasPrefix(phone, "8") {
		phone = "7" + phone[1:]
	}
	return phone
}

// Проверка, не находится ли номер в "режиме ожидания" перед повторной отправкой SMS
func (h *handler) checkSendSMSCooldown(phoneNumber string) error {
	rdb := h.rdb

	// Проверяем, не существует ли ключ "sendSMS:cooldown:PHONE"
	exists, err := rdb.Exists(h.ctx, sendSMSCooldownPattern+phoneNumber).Result()
	if err != nil {
		return fmt.Errorf("ошибка при проверке cooldown в Redis: %v", err)
	}

	// Если ключ уже есть, значит время "ожидания" ещё не истекло
	if exists > 0 {
		return fmt.Errorf("Вы можете запросить код подтверждения только 1 раз в 5 минут")
	}

	return nil
}

// Устанавливаем "cooldown" — чтобы нельзя было повторно отправить SMS в течение заданного времени
func (h *handler) setSendSMSCooldown(phoneNumber string, duration time.Duration) error {
	rdb := h.rdb

	if err := rdb.Set(h.ctx, sendSMSCooldownPattern+phoneNumber, 1, duration).Err(); err != nil {
		return err
	}
	return nil
}

// Проверка в черном списке
func blacklistRedis(h *handler, w http.ResponseWriter, phoneNumber string) error {
	rdb := h.rdb

	// Проверка соединения (ping)
	pong, err := rdb.Ping(h.ctx).Result()
	if err != nil {
		httperror.WriteJSONError(w, "Не удалось подключиться к Redis", err, http.StatusInternalServerError)
		return err
	}
	h.logger.Info("Ответ от Redis:", pong)

	// Проверка, есть ли номер в черном списке
	exists, err := rdb.Exists(h.ctx, BLACKLIST+phoneNumber).Result()
	if err != nil {
		httperror.WriteJSONError(w, "Ошибка при проверке ключа", err, http.StatusInternalServerError)
		return err
	}

	if exists > 0 {
		httperror.WriteJSONError(w, fmt.Sprintf("Данный номер %s заблокирован на 24 часа, за частые повторы", phoneNumber), nil, http.StatusBadRequest)
		return fmt.Errorf("номер %s в черном списке", phoneNumber)
	}

	// Увеличивает счетчик повторов для номера
	if err := IncreasesRepeatCounterForNumber(h, rdb, phoneNumber); err != nil {
		h.logger.Error("Ошибка при увеличении счетчика:", err)
		return err
	}

	return nil
}

// Увеличивает счетчик повторов для номера
func IncreasesRepeatCounterForNumber(h *handler, rdb *redis.Client, phoneNumber string) error {
	// Проверяем наличие ключа
	exists, err := rdb.Exists(h.ctx, ATTEMPTS+phoneNumber).Result()
	if err != nil {
		h.logger.Error(err)
		return err
	}

	// Если ключ есть то увеличиваем его
	if exists > 0 {
		val, err := rdb.Get(h.ctx, ATTEMPTS+phoneNumber).Result()
		if err != nil {
			h.logger.Error(err)
			return err
		}

		// Переводим в число
		valInt, err := strconv.Atoi(val)
		if err != nil {
			h.logger.Error(err)
			return err
		}

		// Пока меньше 3 увеличиваем
		if valInt < 3 {
			rdb.Incr(h.ctx, ATTEMPTS+phoneNumber)
		}

		// Если равен 3 то добавляем в черный список на 24 часа
		if valInt == 3 {
			if err = rdb.Set(h.ctx, BLACKLIST+phoneNumber, 1, 24*time.Hour).Err(); err != nil {
				h.logger.Error(err)
				return err
			}
			// Удаляем счетчик попыток, так как номер уже в ЧС
			rdb.Del(h.ctx, ATTEMPTS+phoneNumber)
		}
	} else {
		// Если нету то добавляем счетчик со значение 1
		if err = rdb.Set(h.ctx, ATTEMPTS+phoneNumber, 1, 24*time.Hour).Err(); err != nil {
			h.logger.Error(err)
			return err
		}
	}

	return nil
}

// Проверяем есть ли пользователь с таким номером в бд
func WeCheckThereUserWithThisNumber(h *handler, phoneNumber string) (bool, error) {

	var count int64

	err := h.db.Table("users").Where("phone_number = ?", phoneNumber).Count(&count).Error
	if err != nil {
		h.logger.Error(err)
		return false, err
	}

	return count > 0, nil
}

// Генерация 4-значного кода (например, "4287").
func generateVerificationCode() string {
	rand.Seed(time.Now().UnixNano())
	code := rand.Intn(10000) // число от 0 до 9999
	return fmt.Sprintf("%04d", code)
}

// Отправить смс для подтверждения
func sendSmsForConfirmation(h *handler, w http.ResponseWriter, phoneNumber string) error {
	login := h.cfg.SMSC.Login                      // Ваш логин на SMSC.ru
	password := h.cfg.SMSC.Password                // Ваш пароль на SMSC.ru
	verificationCode := generateVerificationCode() // Сгенерированный код

	// Создаем параметры запроса
	params := url.Values{}
	params.Set("login", login)
	params.Set("psw", password)
	params.Set("phones", phoneNumber)
	params.Set("mes", verificationCode)
	params.Set("fmt", "3") // Формат ответа: 3 - JSON

	// Отправляем POST-запрос к API SMSC.ru
	resp, err := http.PostForm("https://smsc.ru/sys/send.php", params)
	if err != nil {
		httperror.WriteJSONError(w, "ошибка при отправке запроса", err, http.StatusInternalServerError)
		return err
	}
	defer resp.Body.Close()

	// Читаем ответ сервера
	body, err := io.ReadAll(resp.Body)
	if err != nil {
		httperror.WriteJSONError(w, "ошибка при чтении ответа", err, http.StatusInternalServerError)
		return err
	}

	// Декодируем JSON-ответ
	var result map[string]interface{}
	err = json.Unmarshal(body, &result)
	if err != nil {
		httperror.WriteJSONError(w, "ошибка при декодировании JSON", err, http.StatusInternalServerError)
		return err
	}

	h.logger.Info(result)

	// Добавляет отправленный код в кэш на 1 час
	addsSubmittedCodeCache(h, phoneNumber, verificationCode)

	return nil
}

// Добавляет отправленный код в кэш на 1 час
func addsSubmittedCodeCache(h *handler, phoneNumber, verificationCode string) {
	h.rdb.Set(h.ctx, VERIFIED+phoneNumber, verificationCode, 1*time.Hour)
}
