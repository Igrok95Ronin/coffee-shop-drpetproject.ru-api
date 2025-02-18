package routes

import (
	"github.com/Igrok95Ronin/coffee-shop-drpetproject.ru-api.git/internal/models"
	"github.com/julienschmidt/httprouter"
	"net/http"
)

// RoleMiddleware проверяет, есть ли у пользователя нужная роль
func RoleMiddleware(requiredRole string, next httprouter.Handle) httprouter.Handle {
	return func(w http.ResponseWriter, r *http.Request, ps httprouter.Params) {
		// Получаем user_id из контекста (добавляется в AuthMiddleware)
		userID, ok := r.Context().Value("user_id").(int64)
		if !ok {
			http.Error(w, "Ошибка аутентификации", http.StatusUnauthorized)
			return
		}

		// Получаем подключение к БД
		db := InitDB() // Функция для получения подключения к БД (должна быть объявлена в проекте)

		// Получаем роль пользователя из БД
		var user models.Users
		if err := db.Where("id = ?", userID).First(&user).Error; err != nil {
			http.Error(w, "Ошибка при получении пользователя", http.StatusInternalServerError)
			return
		}

		// Проверяем, соответствует ли роль пользователя требуемой
		if user.Role != requiredRole {
			http.Error(w, "Доступ запрещен: недостаточно прав", http.StatusForbidden)
			return
		}

		// Вызываем следующий обработчик, если роль совпадает
		next(w, r, ps)
	}
}
