package routes

import (
	"context"
	"fmt"
	"github.com/Igrok95Ronin/coffee-shop-drpetproject.ru-api.git/internal/config"
	"github.com/Igrok95Ronin/coffee-shop-drpetproject.ru-api.git/internal/handlers"
	"github.com/Igrok95Ronin/coffee-shop-drpetproject.ru-api.git/pkg/logging"
	"github.com/julienschmidt/httprouter"
	"github.com/redis/go-redis/v9"
	"gorm.io/gorm"
	"net/http"
)

var _ handlers.Handler = &handler{}

type handler struct {
	cfg    *config.Config
	logger *logging.Logger
	db     *gorm.DB
	ctx    context.Context
	rdb    *redis.Client
}

func NewHandler(cfg *config.Config, logger *logging.Logger, db *gorm.DB, ctx context.Context, rdb *redis.Client) handlers.Handler {
	return &handler{
		cfg,
		logger,
		db,
		ctx,
		rdb,
	}
}

func (h *handler) Routes(router *httprouter.Router) {
	router.POST("/send-sms", h.sendSMS) // Получить SMS
	// Регистрация (создание нового пользователя)
	router.POST("/register", h.Register)
	// Логин (получение access и refresh токенов)
	router.POST("/login", h.Login)
	// Обновление (refresh) токенов
	router.POST("/refresh", h.Refresh)
	// Защищённый маршрут, доступный только при наличии валидного access-токена
	// GET /protected
	//
	// Оборачиваем ProtectedHandler в AuthMiddleware.
	// Благодаря этому любой маршрут, который мы обернём AuthMiddleware,
	// станет защищённым, и проверка access-токена будет выполняться автоматически.
	router.GET("/protected", AuthMiddleware(h.Protected))
	// Выход из системы
	router.POST("/logout", h.Logout)
	router.GET("/", h.Home)
}

// ProtectedHandler - обработчик примера защищённого маршрута.
// Доступ сюда возможен только через AuthMiddleware.
func (h *handler) Protected(w http.ResponseWriter, r *http.Request, _ httprouter.Params) {
	//// Достаём user_id из контекста (установили в AuthMiddleware).
	userID, ok := r.Context().Value("user_id").(int64)

	if !ok {
		// Если что-то пошло не так и user_id не смогли получить
		http.Error(w, "Не удалось получить user_id из контекста", http.StatusInternalServerError)
		return
	}

	// Если всё ок, возвращаем сообщение, что доступ разрешён.
	w.WriteHeader(http.StatusOK)
	w.Write([]byte(fmt.Sprintf("Доступ к защищённому маршруту разрешен: %d", userID)))
}
