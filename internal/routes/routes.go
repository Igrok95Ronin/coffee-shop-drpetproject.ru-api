package routes

import (
	"github.com/Igrok95Ronin/coffee-shop-drpetproject.ru-api.git/internal/config"
	"github.com/Igrok95Ronin/coffee-shop-drpetproject.ru-api.git/internal/handlers"
	"github.com/Igrok95Ronin/coffee-shop-drpetproject.ru-api.git/pkg/logging"
	"github.com/julienschmidt/httprouter"
	"gorm.io/gorm"
)

var _ handlers.Handler = &handler{}

type handler struct {
	cfg    *config.Config
	logger *logging.Logger
	db     *gorm.DB
}

func NewHandler(cfg *config.Config, logger *logging.Logger, db *gorm.DB) handlers.Handler {
	return &handler{
		cfg,
		logger,
		db,
	}
}

func (h *handler) Routes(router *httprouter.Router) {
	router.GET("/", h.Home)
}
