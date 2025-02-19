package routes

import (
	"encoding/json"
	"net/http"
	"strconv"

	"github.com/Igrok95Ronin/coffee-shop-drpetproject.ru-api.git/internal/models"
	"github.com/julienschmidt/httprouter"
)

func (h *handler) Home(w http.ResponseWriter, r *http.Request, _ httprouter.Params) {
	// Получаем параметры limit и offset из URL
	limit, _ := strconv.Atoi(r.URL.Query().Get("limit"))
	if limit <= 0 {
		limit = 24 // По умолчанию 24 записей
	}

	offset, _ := strconv.Atoi(r.URL.Query().Get("offset"))

	// Получаем товары в обратном порядке по ID
	var products []models.Products
	if err := h.db.Order("id DESC").Limit(limit).Offset(offset).Find(&products).Error; err != nil {
		h.logger.Error("Ошибка при запросе товаров:", err)
		http.Error(w, "Ошибка запроса", http.StatusInternalServerError)
		return
	}

	// Устанавливаем заголовок Content-Type
	w.Header().Set("Content-Type", "application/json")
	w.WriteHeader(http.StatusOK)

	// Отправляем JSON-ответ
	if err := json.NewEncoder(w).Encode(products); err != nil {
		h.logger.Error("Ошибка при кодировании JSON:", err)
		http.Error(w, "Ошибка формирования ответа", http.StatusInternalServerError)
	}
}
