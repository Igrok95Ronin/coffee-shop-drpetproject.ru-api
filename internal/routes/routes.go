package routes

import (
	"github.com/Igrok95Ronin/coffee-shop-drpetproject.ru-api.git/internal/config"
	"github.com/Igrok95Ronin/coffee-shop-drpetproject.ru-api.git/internal/handlers"
	"github.com/julienschmidt/httprouter"
)

var _ handlers.Handler = &handler{}

type handler struct {
	cfg *config.Config
}

func NewHandler(cfg *config.Config) handlers.Handler {
	return &handler{
		cfg,
	}
}

func (h *handler) Routes(router *httprouter.Router) {
	router.GET("/", h.Home)
}
