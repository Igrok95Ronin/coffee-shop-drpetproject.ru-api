package routes

import (
	"encoding/json"
	"fmt"
	"github.com/Igrok95Ronin/coffee-shop-drpetproject.ru-api.git/internal/models"
	"github.com/Igrok95Ronin/coffee-shop-drpetproject.ru-api.git/pkg/httperror"
	"github.com/julienschmidt/httprouter"
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
		phoneNumber = template.HTMLEscapeString(strings.TrimSpace(register.PhoneNumber))
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

	fmt.Println("Форматированный номер для SMSC:", phoneNumber)
	fmt.Println("Пароль:", password)

}

// Проверка кода
func checksTheCode(h *handler, w http.ResponseWriter, code, phoneNumber string) error {
	// Приводим номер к формату SMSC
	phoneNumber = formatPhoneNumber(phoneNumber)

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
