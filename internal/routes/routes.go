package routes

import (
	"context"
	"github.com/Igrok95Ronin/coffee-shop-drpetproject.ru-api.git/internal/config"
	"github.com/Igrok95Ronin/coffee-shop-drpetproject.ru-api.git/internal/handlers"
	"github.com/Igrok95Ronin/coffee-shop-drpetproject.ru-api.git/pkg/logging"
	"github.com/julienschmidt/httprouter"
	"github.com/redis/go-redis/v9"
	"gorm.io/gorm"
)

var _ handlers.Handler = &handler{}

type handler struct {
	cfg    *config.Config
	logger *logging.Logger
	db     *gorm.DB
	ctx    context.Context
	rdb    *redis.Client
}

func NewHandler(cfg *config.Config, logger *logging.Logger, db *gorm.DB, ctx context.Context, rdb *redis.Client) handlers.Handler {
	return &handler{
		cfg,
		logger,
		db,
		ctx,
		rdb,
	}
}

func (h *handler) Routes(router *httprouter.Router) {
	router.POST("/send-sms", h.sendSMS) // Получить SMS
	// Регистрация (создание нового пользователя)
	router.POST("/register", h.Register)
	// Логин (получение access и refresh токенов)
	router.POST("/login", h.Login)
	// Обновление (refresh) токенов
	router.POST("/refresh", h.Refresh)
	router.GET("/", h.Home)
}
