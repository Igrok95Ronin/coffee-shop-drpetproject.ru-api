package routes

import (
	"encoding/json"
	"fmt"
	"github.com/Igrok95Ronin/coffee-shop-drpetproject.ru-api.git/internal/models"
	"github.com/Igrok95Ronin/coffee-shop-drpetproject.ru-api.git/pkg/httperror"
	"github.com/julienschmidt/httprouter"
	"golang.org/x/crypto/bcrypt"
	"html/template"
	"net/http"
	"regexp"
	"strings"
)

// Регистрация (создание нового пользователя)
func (h *handler) Register(w http.ResponseWriter, r *http.Request, _ httprouter.Params) {
	var register models.Register

	if err := json.NewDecoder(r.Body).Decode(&register); err != nil {
		httperror.WriteJSONError(w, "Ошибка декодирования в json", err, http.StatusBadRequest)
		h.logger.Errorf("Ошибка декодирования в json: %s", err)
		return
	}

	// Убираем пробелы и экранируем спец символы
	var (
		phoneNumber = formatPhoneNumber(template.HTMLEscapeString(strings.TrimSpace(register.PhoneNumber))) // Приводим номер к формату SMSC
		code        = template.HTMLEscapeString(strings.TrimSpace(register.Code))
		password    = template.HTMLEscapeString(strings.TrimSpace(register.Password))
	)

	// Проверка кода
	if err := checksTheCode(h, w, code, phoneNumber); err != nil {
		h.logger.Error(err)
		return
	}

	// Валидация входных данных
	if err := inputDataValidation(w, phoneNumber, password); err != nil {
		h.logger.Error(err)
		return
	}

	// Проверяем есть ли пользователь с таким номером в бд
	exists, err := WeCheckThereUserWithThisNumber(h, phoneNumber)
	if err != nil {
		h.logger.Error(err)
		return
	} else if exists {
		h.logger.Errorf("Такой номер уже зарегистрирован:", err)
		httperror.WriteJSONError(w, "Такой номер уже зарегистрирован", err, http.StatusBadRequest)
		return
	}

	// Хешируем пароль
	hashedPassword, err := HashPassword(password)
	if err != nil {
		httperror.WriteJSONError(w, "Ошибка при хешировании пароля", err, http.StatusInternalServerError)
		h.logger.Errorf("Ошибка при хешировании пароля: %s", err)
		return
	}

	// Создаём объект нового пользователя
	newUser := models.Users{
		PhoneNumber:  phoneNumber,
		PasswordHash: hashedPassword,
	}

	// Сохраняем пользователя в базе
	if err = h.db.Create(&newUser).Error; err != nil {
		httperror.WriteJSONError(w, "Ошибка при регистрации пользователя", err, http.StatusInternalServerError)
		h.logger.Errorf("Ошибка при регистрации пользователя: %s", err)
		return
	}

	// Отправляем ответ
	w.WriteHeader(http.StatusCreated)
	w.Write([]byte("Пользователь успешно зарегистрирован"))
}

// Проверка кода
func checksTheCode(h *handler, w http.ResponseWriter, code, phoneNumber string) error {

	// Получаем код и кеша
	val, err := h.rdb.Get(h.ctx, VERIFIED+phoneNumber).Result()
	if err != nil {
		httperror.WriteJSONError(w, "Ошибка при получения кода из кеша", nil, http.StatusInternalServerError)
		return fmt.Errorf("Ошибка при получения кода из кеша")
	}

	// Сравниваем код который прислал пользователь с кодом из кеша
	if code != val {
		httperror.WriteJSONError(w, "Неверный код подтверждения", nil, http.StatusBadRequest)
		return fmt.Errorf("Неверный код подтверждения")
	}

	return nil
}

// Валидация входных данных
func inputDataValidation(w http.ResponseWriter, phoneNumber, password string) error {

	// Проверяем длину
	if len(phoneNumber) < 11 || len(password) < 6 {
		httperror.WriteJSONError(w, "Некорректный номер телефона или пароль (проверьте длину)", nil, http.StatusBadRequest)
		return fmt.Errorf("Некорректный номер телефона или пароль (проверьте длину)")
	}

	// Проверяем номер телефона
	if !phoneRegex.MatchString(phoneNumber) {
		httperror.WriteJSONError(w, "Некорректный формат номера телефона. Используйте +7XXXXXXXXXX или 8XXXXXXXXXX", nil, http.StatusBadRequest)
		return fmt.Errorf("Некорректный номер телефона")
	}

	// Приводим номер к формату SMSC
	phoneNumber = formatPhoneNumber(phoneNumber)

	// Проверяем, содержит ли пароль только латиницу и цифры
	var passwordRegex = regexp.MustCompile(`^[a-zA-Z0-9]+$`)
	if !passwordRegex.MatchString(password) {
		httperror.WriteJSONError(w, "Пароль должен содержать только латинские буквы и цифры", nil, http.StatusBadRequest)
		return fmt.Errorf("Пароль должен содержать только латинские буквы и цифры")
	}

	return nil
}

//---------------------------------------------------------------------------------------
//                                 УТИЛИТНЫЕ ФУНКЦИИ
//---------------------------------------------------------------------------------------

// HashPassword - хеширует пароль с помощью bcrypt (с cost = bcrypt.DefaultCost).
func HashPassword(password string) (string, error) {
	// bcrypt.GenerateFromPassword вернёт хеш пароля.
	// bcrypt.DefaultCost по умолчанию равен 10 (можно увеличить, чтобы усложнить подбор).
	bytes, err := bcrypt.GenerateFromPassword([]byte(password), bcrypt.DefaultCost)
	return string(bytes), err
}
