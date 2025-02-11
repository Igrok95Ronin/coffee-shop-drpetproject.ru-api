package routes

import (
	"context"
	"fmt"
	"github.com/julienschmidt/httprouter"
	"github.com/redis/go-redis/v9"
	"log"
	"net/http"
	"time"
)

// Получить SMS
func (h *handler) sendSMS(w http.ResponseWriter, r *http.Request, _ httprouter.Params) {
	ctx := context.Background()

	// Создаём клиент Redis
	rdb := redis.NewClient(&redis.Options{
		Addr:     "localhost:6379",     // Адрес, где запущен Redis
		Password: h.cfg.Redis.Password, // Пароль, заданный в docker-compose.yml
		DB:       0,                    // Номер базы (по умолчанию 0)
	})

	// Сохраним ключ "exampleKey" со значением "Hello, Redis!" время жизни 20 сек
	if err := rdb.Set(ctx, "first", "00000", 20*time.Second).Err(); err != nil {
		log.Fatalf("Ошибка при установке ключа: %v", err)
	}

	// Считаем значение ключа
	val, err := rdb.Get(ctx, "first").Result()
	if err != nil {
		log.Fatalf("Ошибка при получении ключа: %v", err)
	}

	fmt.Printf("Value for key 'first': %s\n", val)
}
