package routes

import (
	"encoding/json"
	"github.com/Igrok95Ronin/coffee-shop-drpetproject.ru-api.git/pkg/httperror"
	"github.com/julienschmidt/httprouter"
	"net/http"
)

// Корзина
func (h *handler) Basket(w http.ResponseWriter, r *http.Request, _ httprouter.Params) {
	type inCard struct {
		Name   string  `json:"name"`
		ImgSrc string  `json:"imgSrc"`
		Price  float64 `json:"price"`
	}

	var products []inCard

	// Используем контекст из middleware
	ctx := r.Context()

	// Запрос к БД
	if err := h.db.WithContext(ctx).
		Table("products").
		Select("name, img_src, price").
		Where("in_basket = ?", true).
		Scan(&products).Error; err != nil {
		h.logger.Error("Ошибка при запросе товаров:", err)
		httperror.WriteJSONError(w, "Ошибка запроса", err, http.StatusInternalServerError)
		return
	}

	// Проверка на пустую корзину
	if len(products) == 0 {
		httperror.WriteJSONError(w, "Корзина пуста", nil, http.StatusNotFound)
		return
	}

	// Отправляем JSON-ответ
	w.Header().Set("Content-Type", "application/json")
	w.WriteHeader(http.StatusOK)

	if err := json.NewEncoder(w).Encode(products); err != nil {
		h.logger.Error("Ошибка при кодировании JSON:", err)
		httperror.WriteJSONError(w, "Ошибка формирования ответа", err, http.StatusInternalServerError)
	}
}
