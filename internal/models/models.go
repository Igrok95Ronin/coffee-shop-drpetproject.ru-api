package models

import (
	"database/sql/driver"
	"encoding/json"
	"errors"
	"github.com/golang-jwt/jwt/v4"
	"time"
)

// Структура для таблицы users
type Users struct {
	ID           int64     `json:"ID" gorm:"primaryKey;column:id"`           // Первичный ключ
	PhoneNumber  string    `json:"phoneNumber" gorm:"column:phone_number"`   // Номер телефона
	PasswordHash string    `json:"password" gorm:"column:password_hash"`     // Хеш пароля
	RefreshToken string    `json:"refreshToken" gorm:"column:refresh_token"` // Токен обновления (может быть NULL)
	Role         string    `json:"role" gorm:"column:role;default:user"`     // Роль пользователя, по умолчанию 'user'
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

// TODO
// Тип для JSONB характеристик
type Characteristics map[string]string

// Реализация интерфейса Scanner (конвертация из []byte в map[string]string)
func (c *Characteristics) Scan(value interface{}) error {
	bytes, ok := value.([]byte)
	if !ok {
		return errors.New("failed to scan Characteristics: invalid type")
	}
	return json.Unmarshal(bytes, c)
}

// Реализация интерфейса Valuer (конвертация map[string]string в JSON для записи в БД)
func (c Characteristics) Value() (driver.Value, error) {
	return json.Marshal(c)
}

// Тип для JSONB массива изображений
type ImagesSrc []string

// Реализация интерфейса Scanner (конвертация из []byte в []string)
func (i *ImagesSrc) Scan(value interface{}) error {
	bytes, ok := value.([]byte)
	if !ok {
		return errors.New("failed to scan ImagesSrc: invalid type")
	}
	return json.Unmarshal(bytes, i)
}

// Реализация интерфейса Valuer (конвертация []string в JSON для записи в БД)
func (i ImagesSrc) Value() (driver.Value, error) {
	return json.Marshal(i)
}

// Products - структура для таблицы products
type Products struct {
	ID              int64           `json:"id" gorm:"primaryKey;column:id"`                                                 // Первичный ключ
	Name            string          `json:"name" gorm:"column:name;not null"`                                               // Название товара
	ImgSrc          string          `json:"imgSrc" gorm:"column:img_src;not null"`                                          // Путь до главного изображения
	Description     string          `json:"description" gorm:"column:description"`                                          // Описание товара
	Price           float64         `json:"price" gorm:"column:price;not null"`                                             // Цена товара
	Characteristics Characteristics `json:"characteristics" gorm:"column:characteristics;type:jsonb;not null;default:'{}'"` // JSONB объект
	ImgsSrc         ImagesSrc       `json:"imgsSrc" gorm:"column:imgs_src;type:jsonb;not null;default:'[]'"`                // JSONB массив
	InBasket        bool            `json:"inBasket" gorm:"column:in_basket;not null;default:false"`                        // Флаг корзины
	CreatedAt       time.Time       `json:"createdAt" gorm:"column:created_at"`                                             // Дата создания
}

// TableName - явно указываем имя таблицы
func (Products) TableName() string {
	return "products"
}
