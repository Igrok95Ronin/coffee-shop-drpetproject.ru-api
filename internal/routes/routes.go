package routes

import (
	"github.com/Igrok95Ronin/coffee-shop-drpetproject.ru-api.git/internal/config"
	"github.com/Igrok95Ronin/coffee-shop-drpetproject.ru-api.git/internal/handlers"
	"github.com/Igrok95Ronin/coffee-shop-drpetproject.ru-api.git/pkg/logging"
	"github.com/julienschmidt/httprouter"
)

var _ handlers.Handler = &handler{}

type handler struct {
	cfg    *config.Config
	logger *logging.Logger
}

func NewHandler(cfg *config.Config, logger *logging.Logger) handlers.Handler {
	return &handler{
		cfg,
		logger,
	}
}

func (h *handler) Routes(router *httprouter.Router) {
	router.GET("/", h.Home)
}
