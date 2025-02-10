package routes

import (
	"github.com/Igrok95Ronin/coffee-shop-drpetproject.ru-api.git/internal/models"
	"github.com/julienschmidt/httprouter"
	"log"
	"net/http"
)

func (h *handler) Home(w http.ResponseWriter, r *http.Request, _ httprouter.Params) {
	var users models.Users

	if err := h.db.Find(&users).Error; err != nil {
		log.Fatal("Error")
	}

	w.Write([]byte(users.PhoneNumber))
}
