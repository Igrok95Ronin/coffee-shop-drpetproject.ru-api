package routes

import (
	"encoding/json"
	"github.com/Igrok95Ronin/coffee-shop-drpetproject.ru-api.git/internal/models"
	"github.com/Igrok95Ronin/coffee-shop-drpetproject.ru-api.git/pkg/httperror"
	"github.com/julienschmidt/httprouter"
	"net/http"
)

// Показать продукт
func (h *handler) Product(w http.ResponseWriter, r *http.Request, ps httprouter.Params) {
	productID := ps.ByName("id")

	var products models.Products

	if err := h.db.Where("id = ?", productID).First(&products).Error; err != nil {
		httperror.WriteJSONError(w, "Возникла ошибка при получении данных о продукте", err, http.StatusBadRequest)
		h.logger.Errorf("Возникла ошибка при получении данных о продукте: %s", productID)
		return
	}

	// Устанавливаем заголовок Content-Type
	w.Header().Set("Content-Type", "application/json")
	w.WriteHeader(http.StatusOK)

	if err := json.NewEncoder(w).Encode(products); err != nil {
		h.logger.Error("Ошибка при кодировании JSON:", err)
		http.Error(w, "Ошибка формирования ответа", http.StatusInternalServerError)
	}

}
