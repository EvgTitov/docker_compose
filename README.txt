Настройка окружения
Установка Docker и Docker Compose

Установите Docker Desktop

Проверьте версии:

docker --version
docker-compose --version
_____________________________________________

Конфигурация сервисов
PostgreSQL (db)
Использует образ postgres:latest

Создает базу данных testdb

Пользователь: testuser

Пароль: testpass

Порт: 5432

Данные хранятся в томе db_cont
___________________________________________
Nginx (nginx)
Использует образ nginx:latest

Порт: 80

Монтирует:

Конфигурацию из ./nginx в /etc/nginx/conf.d

Проект из ./app в /var/www/html

Зависит от сервиса PHP
____________________________________________________
PHP (php)
Сборка из Dockerfile в директории php

Порт: 9000

Монтирует:

Проект из ./app в /var/www/html

Конфигурацию PHP из ./php/php.ini

Redis (redis)
Использует образ redis:6

Порт: 6379

Данные хранятся в томе redis_cont
____________________________________________________