package routes

import (
	"encoding/json"
	"fmt"
	"github.com/Igrok95Ronin/coffee-shop-drpetproject.ru-api.git/internal/config"
	"github.com/Igrok95Ronin/coffee-shop-drpetproject.ru-api.git/internal/models"
	"github.com/Igrok95Ronin/coffee-shop-drpetproject.ru-api.git/pkg/httperror"
	"github.com/golang-jwt/jwt/v4"
	"github.com/julienschmidt/httprouter"
	"golang.org/x/crypto/bcrypt"
	"html/template"
	"net/http"
	"strings"
	"time"
)

// Логин (получение access и refresh токенов)
func (h *handler) Login(w http.ResponseWriter, r *http.Request, _ httprouter.Params) {
	var users models.Users

	if err := json.NewDecoder(r.Body).Decode(&users); err != nil {
		httperror.WriteJSONError(w, "Ошибка декодирования в json", err, http.StatusBadRequest)
		h.logger.Errorf("Ошибка декодирования в json: %s", err)
		return
	}

	// Убираем пробелы и экранируем спец символы
	var (
		phoneNumber = formatPhoneNumber(template.HTMLEscapeString(strings.TrimSpace(users.PhoneNumber))) // Приводим номер к формату SMSC
		password    = template.HTMLEscapeString(strings.TrimSpace(users.PasswordHash))
	)

	// Ищем пользователя по номеру телефона в базе
	if err := h.db.Where("phone_number = ?", phoneNumber).First(&users).Error; err != nil {
		httperror.WriteJSONError(w, "Неверный номер телефона (такого пользователя нет в системе)", err, http.StatusBadRequest)
		h.logger.Errorf("Неверный номер телефона (такого пользователя нет в системе): %s", err)
		return
	}

	// Проверяем пароль (сравниваем с хешем в базе)
	if !CheckPasswordHash(password, users.PasswordHash) {
		httperror.WriteJSONError(w, "Неверный пароль", nil, http.StatusBadRequest)
		h.logger.Errorf("Неверный пароль: %s", nil)
		return
	}

	// Генерируем access-токен
	accessToken, err := GenerateAccessToken(h, users.ID)
	if err != nil {
		httperror.WriteJSONError(w, "Ошибка при генерации access-токена", err, http.StatusInternalServerError)
		h.logger.Errorf("Ошибка при генерации access-токена: %s", err)
		return
	}

	// Генерируем refresh-токен
	refreshToken, err := GenerateRefreshToken(h, users.ID)
	if err != nil {
		httperror.WriteJSONError(w, "Ошибка при генерации refresh-токена", err, http.StatusInternalServerError)
		h.logger.Errorf("Ошибка при генерации refresh-токена: %s", err)
		return
	}

	// Сохраняем refresh-токен у пользователя в базе (на практике лучше хранить хеш)
	users.RefreshToken = refreshToken
	if err = h.db.Save(&users).Error; err != nil {
		httperror.WriteJSONError(w, "Ошибка при сохранении refresh-токена в БД", err, http.StatusInternalServerError)
		h.logger.Errorf("Ошибка при сохранении refresh-токена в БД: %s", err)
		return
	}

	// Устанавливаем access-токен в куки (жизнь 15 минут)
	// HttpOnly: true означает, что кука не доступна из JavaScript (защита от XSS).
	http.SetCookie(w, &http.Cookie{
		Name:     "access_token",
		Value:    accessToken,
		Expires:  time.Now().Add(15 * time.Minute),
		HttpOnly: true,
		Path:     "/",
		// Secure:   true, // Использовать при HTTPS
		// SameSite: http.SameSiteStrictMode,
	})

	// Устанавливаем refresh-токен в куки (жизнь 30 дней)
	http.SetCookie(w, &http.Cookie{
		Name:     "refresh_token",
		Value:    refreshToken,
		Expires:  time.Now().Add(30 * 24 * time.Hour),
		HttpOnly: true,
		Path:     "/",
		// Secure:   true, // Использовать при HTTPS
		// SameSite: http.SameSiteStrictMode,
	})

	// Теперь возвращаем и роль
	response := map[string]interface{}{
		"message": "Авторизация прошла успешно",
		"role":    users.Role,
	}
	w.Header().Set("Content-Type", "application/json")
	json.NewEncoder(w).Encode(response)
}

// CheckPasswordHash - проверяет соответствие "сырого" пароля и хеша.
func CheckPasswordHash(password, hash string) bool {
	// bcrypt.CompareHashAndPassword вернёт nil, если всё совпадает.
	err := bcrypt.CompareHashAndPassword([]byte(hash), []byte(password))
	return err == nil
}

// GenerateAccessToken - генерирует access-токен с временем жизни 15 минут.
// Внутри указываем UserID и стандартные поля (ExpiresAt, IssuedAt, NotBefore).
func GenerateAccessToken(h *handler, userID int64) (string, error) {
	// Создаём claims.
	claims := models.MyClaims{
		UserID: userID,
		RegisteredClaims: jwt.RegisteredClaims{
			ExpiresAt: jwt.NewNumericDate(time.Now().Add(15 * time.Minute)), // Токен протухнет через 15 минут
			IssuedAt:  jwt.NewNumericDate(time.Now()),                       // Время выпуска
			NotBefore: jwt.NewNumericDate(time.Now()),                       // Не раньше этого времени
		},
	}

	// Создаём токен с алгоритмом HS256.
	token := jwt.NewWithClaims(jwt.SigningMethodHS256, claims)
	// Подписываем токен нашим секретным ключом.
	return token.SignedString([]byte(h.cfg.Token.Access))
}

// GenerateRefreshToken - генерирует refresh-токен с временем жизни 30 дней.
func GenerateRefreshToken(h *handler, userID int64) (string, error) {
	claims := models.MyClaims{
		UserID: userID,
		RegisteredClaims: jwt.RegisteredClaims{
			ExpiresAt: jwt.NewNumericDate(time.Now().Add(30 * 24 * time.Hour)), // 30 дней
			IssuedAt:  jwt.NewNumericDate(time.Now()),
			NotBefore: jwt.NewNumericDate(time.Now()),
		},
	}
	token := jwt.NewWithClaims(jwt.SigningMethodHS256, claims)
	return token.SignedString([]byte(h.cfg.Token.Refresh))
}

// ValidateAccessToken - парсит и валидирует access-токен. Возвращает claims, если успешно.
func ValidateAccessToken(cfg *config.Config, accessToken string) (*models.MyClaims, error) {
	keyFunc := func(token *jwt.Token) (interface{}, error) {
		// Возвращаем секрет, которым подписан access-токен
		return []byte(cfg.Token.Access), nil
	}

	// Парсим токен
	parsedToken, err := jwt.ParseWithClaims(accessToken, &models.MyClaims{}, keyFunc)
	if err != nil {
		return nil, err
	}

	// Проверяем, что claims верного типа и токен валиден
	claims, ok := parsedToken.Claims.(*models.MyClaims)
	if !ok || !parsedToken.Valid {
		return nil, fmt.Errorf("Невалидный токен")
	}

	return claims, nil
}
