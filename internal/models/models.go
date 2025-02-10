package models

import "time"

// Структура для таблицы users
type Users struct {
	ID           int64     `json:"ID" gorm:"primaryKey;column:id"`           // Первичный ключ
	PhoneNumber  string    `json:"phoneNumber" gorm:"phone_number"`          // Номер телефона
	PasswordHash string    `json:"password" gorm:"column:password_hash"`     // Хеш пароля
	RefreshToken string    `json:"refreshToken" gorm:"column:refresh_token"` // Токен обновления (может быть NULL)
	CreatedAt    time.Time `gorm:"column:created_at"`                        // Дата создания
}
