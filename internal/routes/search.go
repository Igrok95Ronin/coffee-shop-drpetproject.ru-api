package routes

import (
	"encoding/json"
	"github.com/Igrok95Ronin/coffee-shop-drpetproject.ru-api.git/internal/models"
	"github.com/Igrok95Ronin/coffee-shop-drpetproject.ru-api.git/pkg/httperror"
	"github.com/julienschmidt/httprouter"
	"html/template"
	"net/http"
	"strconv"
	"strings"
)

// Search - обработчик для поиска товаров с ленивой загрузкой и подсчётом total
func (h *handler) Search(w http.ResponseWriter, r *http.Request, _ httprouter.Params) {
	// Получаем поисковый запрос из URL-параметра "q"
	query := template.HTMLEscapeString(strings.TrimSpace(r.URL.Query().Get("q")))

	// Проверяем длину запроса, чтобы избежать слишком коротких запросов
	if query == "" || len(query) < 3 {
		httperror.WriteJSONError(w, "Запрос поиска должен быть минимум 3 символа", nil, http.StatusBadRequest)
		h.logger.Error("Запрос поиска должен быть минимум 3 символа")
		return
	}

	// Получаем параметры limit (количество записей) и offset (смещение для пагинации)
	limit, err := strconv.Atoi(r.URL.Query().Get("limit"))
	if err != nil || limit <= 0 {
		limit = 24 // Если не указано, загружаем 24 записи по умолчанию
	}

	offset, err := strconv.Atoi(r.URL.Query().Get("offset"))
	if err != nil || offset < 0 {
		offset = 0 // Начинаем с первой записи
	}

	// Формируем строку для LIKE-запроса (поиск без учёта регистра)
	likeQuery := "%" + strings.ToLower(query) + "%"

	// Подсчитываем общее количество записей, которые соответствуют запросу
	var total int64
	if err := h.db.Model(&models.Products{}).
		Where("LOWER(name) ILIKE ?", likeQuery).
		Count(&total).Error; err != nil {
		h.logger.Error("Ошибка при подсчёте общего количества записей:", err)
		http.Error(w, "Ошибка подсчёта записей", http.StatusInternalServerError)
		return
	}

	// Получаем товары с учётом пагинации (limit и offset)
	var products []models.Products
	if err := h.db.
		Where("LOWER(name) ILIKE ?", likeQuery).
		Order("id DESC"). // Сортируем по ID в обратном порядке
		Limit(limit).
		Offset(offset).
		Find(&products).Error; err != nil {
		h.logger.Error("Ошибка при запросе товаров:", err)
		http.Error(w, "Ошибка выполнения запроса", http.StatusInternalServerError)
		return
	}

	// Подготавливаем JSON-ответ с данными и общим количеством записей
	response := map[string]interface{}{
		"products": products, // Список найденных товаров
		"total":    total,    // Общее количество всех найденных товаров
	}

	// Устанавливаем заголовки и код ответа
	w.Header().Set("Content-Type", "application/json")
	w.WriteHeader(http.StatusOK)

	// Кодируем и отправляем JSON-ответ
	if err := json.NewEncoder(w).Encode(response); err != nil {
		h.logger.Error("Ошибка при кодировании JSON:", err)
		http.Error(w, "Ошибка формирования ответа", http.StatusInternalServerError)
	}
}
