package routes

import (
	"encoding/json"
	"fmt"
	"html/template"
	"net/http"
	"net/url"
	"strconv"
	"strings"
	"time"

	"github.com/Igrok95Ronin/coffee-shop-drpetproject.ru-api.git/internal/models"
	"github.com/Igrok95Ronin/coffee-shop-drpetproject.ru-api.git/pkg/httperror"
	"github.com/julienschmidt/httprouter"
	"github.com/redis/go-redis/v9"
)

// Search - обработчик для поиска товаров с ленивой загрузкой и подсчётом total
func (h *handler) Search(w http.ResponseWriter, r *http.Request, _ httprouter.Params) {
	// Получаем поисковый запрос из URL-параметра "q"
	query := template.HTMLEscapeString(strings.TrimSpace(r.URL.Query().Get("q")))

	// Проверяем длину запроса, чтобы избежать слишком коротких запросов
	if len(query) < 3 {
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

	// Генерируем ключ для Redis
	redisKey := generateSearchKey(query, limit, offset)

	// 1) Проверяем в Redis
	cachedData, err := h.rdb.Get(h.ctx, redisKey).Result()
	if err == nil && cachedData != "" {
		// Если в Redis нашлись данные
		h.logger.Infof("Найден кэш для ключа: %s", redisKey)

		// Декодируем JSON из Redis
		var cachedResponse map[string]interface{}
		if err = json.Unmarshal([]byte(cachedData), &cachedResponse); err == nil {
			// Обновляем TTL (продлеваем жизнь ключа на 3 минуту)
			h.rdb.Expire(h.ctx, redisKey, 3*time.Minute)

			// Отправляем уже закэшированный ответ
			h.writeJSONResponse(w, http.StatusOK, cachedResponse)
			return
		} else {
			h.logger.Errorf("Ошибка декодирования кэша JSON: %v", err)
			// Если декодировать не получилось, продолжаем запрос в БД
		}
	} else if err != nil && err != redis.Nil {
		// Любая ошибка отличная от "нет такого ключа" -> логируем
		h.logger.Errorf("Ошибка при GET из Redis: %v", err)
		// Не выходим, всё равно идём в БД
	}

	// 2) Если нет в Redis или ошибка — делаем запрос в БД
	h.logger.Infof("Кэш не найден, идём в БД: key=%s", redisKey)

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
		Order("id DESC").
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

	// 3) Сохраняем результат в Redis на 1 минуту
	if dataBytes, err := json.Marshal(response); err == nil {
		errSet := h.rdb.Set(h.ctx, redisKey, string(dataBytes), 3*time.Minute).Err()
		if errSet != nil {
			h.logger.Errorf("Ошибка при сохранении кэша в Redis: %v", errSet)
		}
	} else {
		h.logger.Errorf("Ошибка при маршалинге ответа для Redis: %v", err)
	}

	// 4) Возвращаем клиенту
	h.writeJSONResponse(w, http.StatusOK, response)
}

// Вспомогательная функция для генерации уникального ключа
func generateSearchKey(q string, limit, offset int) string {
	// Можно URL-энкодить q, если опасаемся спецсимволов
	encodedQ := url.QueryEscape(strings.ToLower(q))
	return fmt.Sprintf("search:%s:%d:%d", encodedQ, limit, offset)
}

// Функция для записи JSON-ответа
func (h *handler) writeJSONResponse(w http.ResponseWriter, code int, data interface{}) {
	w.Header().Set("Content-Type", "application/json")
	w.WriteHeader(code)
	if err := json.NewEncoder(w).Encode(data); err != nil {
		h.logger.Errorf("Ошибка при кодировании JSON: %v", err)
	}
}
