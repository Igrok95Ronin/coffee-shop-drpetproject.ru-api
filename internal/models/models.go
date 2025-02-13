package models

import (
	"github.com/golang-jwt/jwt/v4"
	"time"
)

// Структура для таблицы users
type Users struct {
	ID           int64     `json:"ID" gorm:"primaryKey;column:id"`           // Первичный ключ
	PhoneNumber  string    `json:"phoneNumber" gorm:"phone_number"`          // Номер телефона
	PasswordHash string    `json:"password" gorm:"column:password_hash"`     // Хеш пароля
	RefreshToken string    `json:"refreshToken" gorm:"column:refresh_token"` // Токен обновления (может быть NULL)
	CreatedAt    time.Time `gorm:"column:created_at"`                        // Дата создания
}

// Структура для sms регистрации
type SMSRegUsers struct {
	PhoneNumber string `yaml:"phoneNumber"`
}

// Структура для регистрации
type Register struct {
	PhoneNumber string `yaml:"phoneNumber"`
	Code        string `yaml:"code"`
	Password    string `yaml:"password"`
}

// MyClaims - своя структура для claim'ов JWT, включающая стандартные поля jwt.RegisteredClaims
// и ID пользователя (UserID), чтобы знать, кому принадлежит токен.
type MyClaims struct {
	UserID int64 `json:"user_id"`
	jwt.RegisteredClaims
}
