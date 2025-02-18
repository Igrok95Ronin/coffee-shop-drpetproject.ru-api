package routes

import (
	"encoding/json"
	"github.com/Igrok95Ronin/coffee-shop-drpetproject.ru-api.git/internal/models"
	"github.com/julienschmidt/httprouter"
	"net/http"
)

// CheckUserRole проверяет роль пользователя по user_id из контекста.
func (h *handler) CheckUserRole(w http.ResponseWriter, r *http.Request, _ httprouter.Params) {
	// Получаем user_id из контекста
	userID, ok := r.Context().Value("user_id").(int64)
	if !ok {
		http.Error(w, "Не удалось получить user_id из контекста", http.StatusInternalServerError)
		return
	}

	// Получаем роль пользователя из базы
	var user models.Users
	if err := h.db.Where("id = ?", userID).First(&user).Error; err != nil {
		http.Error(w, "Ошибка при получении пользователя", http.StatusInternalServerError)
		return
	}

	// Отправляем ответ с ролью
	response := map[string]string{"role": user.Role}
	w.Header().Set("Content-Type", "application/json")
	json.NewEncoder(w).Encode(response)
}
