-- Создаем таблицу users с добавленным полем phone_number
CREATE TABLE users (
                       id BIGINT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
                       user_name TEXT NOT NULL UNIQUE,
                       email TEXT NOT NULL UNIQUE,
                       password_hash TEXT NOT NULL,
                       phone_number TEXT UNIQUE, -- Добавленное поле для номера телефона, должно быть уникальным
                       refresh_token TEXT,
                       created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


