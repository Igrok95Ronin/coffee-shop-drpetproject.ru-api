package middleware

import (
	"github.com/Igrok95Ronin/coffee-shop-drpetproject.ru-api.git/pkg/logging"
	"net/http"
	"time"
)

// TracingMiddleware измеряет время выполнения каждого запроса
func TracingMiddleware(next http.Handler) http.Handler {
	return http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		logger := logging.GetLogger()
		start := time.Now() // Начало выполнения
		defer func() {
			duration := time.Since(start)
			logger.Infof("%s %s выполнен за %s\n", r.Method, r.URL.Path, duration)
		}()

		// Передаем запрос дальше
		next.ServeHTTP(w, r)
	})
}
