package main

import (
	"context"
	"github.com/Igrok95Ronin/coffee-shop-drpetproject.ru-api.git/internal/config"
	"github.com/Igrok95Ronin/coffee-shop-drpetproject.ru-api.git/internal/routes"
	"github.com/Igrok95Ronin/coffee-shop-drpetproject.ru-api.git/pkg/logging"
	"github.com/julienschmidt/httprouter"
	"github.com/redis/go-redis/v9"
	"log"
	"net/http"
	"time"
)

func main() {
	db := routes.InitDB()
	sqlDB, err := db.DB()
	if err != nil {
		log.Fatalf("Failed to get database handle: %v", err)
	}
	defer sqlDB.Close()

	ctx := context.Background()

	router := httprouter.New()

	logger := logging.GetLogger()

	cfg := config.GetConfig()

	// Создаём клиент Redis.
	// Address: "localhost:6379" – если мы запускаем Go-код на той же машине, что и Docker.
	// Password: "secret_password" – тот же пароль, что указан в docker-compose.yml
	rdb := redis.NewClient(&redis.Options{
		Addr:     "localhost:6379",   // Адрес, где запущен Redis
		Password: cfg.Redis.Password, // Пароль, заданный в docker-compose.yml
		DB:       0,                  // Номер базы (по умолчанию 0)
	})

	handler := routes.NewHandler(cfg, logger, db, ctx, rdb)
	handler.Routes(router)

	corsHandler := routes.CorsSettings().Handler(router)

	start(corsHandler, cfg, logger)
}

func start(router http.Handler, cfg *config.Config, logger *logging.Logger) {

	const WRI = 15 * time.Second

	server := http.Server{
		Addr:         cfg.Port,
		Handler:      router,
		WriteTimeout: WRI,
		ReadTimeout:  WRI,
		IdleTimeout:  WRI,
	}

	logger.Infof("Server started %v", cfg.Port)
	logger.Fatal(server.ListenAndServe())
}
