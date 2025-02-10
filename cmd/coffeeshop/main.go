package main

import (
	"fmt"
	"github.com/Igrok95Ronin/coffee-shop-drpetproject.ru-api.git/internal/config"
	"github.com/Igrok95Ronin/coffee-shop-drpetproject.ru-api.git/internal/routes"
	"github.com/julienschmidt/httprouter"
	"log"
	"net/http"
	"time"
)

func main() {
	router := httprouter.New()

	cfg := config.GetConfig()

	handler := routes.NewHandler(cfg)
	handler.Routes(router)

	start(router, cfg)
}

func start(router *httprouter.Router, cfg *config.Config) {

	const WRI = 15 * time.Second

	server := http.Server{
		Addr:         cfg.Port,
		Handler:      router,
		WriteTimeout: WRI,
		ReadTimeout:  WRI,
		IdleTimeout:  WRI,
	}

	fmt.Println("Server started....")
	log.Fatal(server.ListenAndServe())
}
