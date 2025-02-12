package config

import (
	"fmt"
	"github.com/Igrok95Ronin/coffee-shop-drpetproject.ru-api.git/pkg/logging"
	"github.com/ilyakaznacheev/cleanenv"
	"github.com/joho/godotenv"
	"os"
	"sync"
)

// Config структура для хранения конфигурации приложения
type Config struct {
	Port string `yaml:"port" env:"PORT"` // Порт, на котором работает API
	DB   struct {
		User     string `yaml:"user" env:"POSTGRES_USER"`         // Имя пользователя БД
		Password string `yaml:"password" env:"POSTGRES_PASSWORD"` // Пароль БД
		DBName   string `yaml:"dbname" env:"POSTGRES_DB"`         // Название БД
		Host     string `yaml:"host" env:"POSTGRES_HOST"`         // Хост БД (имя сервиса в Docker или localhost)
		Port     int64  `yaml:"port" env:"POSTGRES_PORT"`         // Порт БД
		SslMode  string `yaml:"sslMode" env:"SSL_MODE"`           // SSL режим БД (disable/enable)
		TimeZone string `yaml:"timeZone" env:"TIME_ZONE"`         // Часовой пояс
	} `yaml:"db"`
	Redis struct {
		Password string `yaml:"password"`
	} `yaml:"redis"`
	SMSC struct {
		Login    string `yaml:"login"`
		Password string `yaml:"password"`
	} `yaml:"smsc"`
	Token struct {
		Access  string `yaml:"access" env:"JWT_ACCESS"`   // Токен доступа
		Refresh string `yaml:"refresh" env:"JWT_REFRESH"` // Refresh-токен
	} `yaml:"token"`
}

// Глобальная переменная для хранения экземпляра конфигурации
var instance *Config
var once sync.Once

// GetConfig загружает конфигурацию один раз и возвращает ее
func GetConfig() *Config {
	logger := logging.GetLogger()

	// Загружаем .env
	if err := godotenv.Load(); err != nil {
		logger.Warn("Не удалось загрузить .env файл, переменные окружения могут отсутствовать")
	}

	once.Do(func() {
		instance = &Config{}

		// Загружаем данные из config.yml
		if err := cleanenv.ReadConfig("./config.yml", instance); err != nil {
			help, _ := cleanenv.GetDescription(instance, nil)
			logger.Info(help)
			logger.Fatal(err)
			fmt.Println(help)
		}

		// Читаем переменные окружения и заменяем значения в конфиге
		overrideWithEnv(instance)
	})

	return instance
}

// overrideWithEnv перезаписывает конфигурацию значениями из переменных окружения (если они заданы)
func overrideWithEnv(cfg *Config) {

	if user := os.Getenv("POSTGRES_USER"); user != "" {
		cfg.DB.User = user
	}
	if password := os.Getenv("POSTGRES_PASSWORD"); password != "" {
		cfg.DB.Password = password
	}
	if dbName := os.Getenv("POSTGRES_DB"); dbName != "" {
		cfg.DB.DBName = dbName
	}

	if redisPassword := os.Getenv("REDIS_PASSWORD"); redisPassword != "" {
		cfg.Redis.Password = redisPassword
	}

	if smscLogin := os.Getenv("SMSC_LOGIN"); smscLogin != "" {
		cfg.SMSC.Login = smscLogin
	}
	if smscPassword := os.Getenv("SMSC_PASSWORD"); smscPassword != "" {
		cfg.SMSC.Password = smscPassword
	}

	if access := os.Getenv("JWT_ACCESS"); access != "" {
		cfg.Token.Access = access
	}
	if refresh := os.Getenv("JWT_REFRESH"); refresh != "" {
		cfg.Token.Refresh = refresh
	}
}
