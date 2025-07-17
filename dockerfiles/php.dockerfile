FROM php:8.1.33-fpm-alpine
# fpm required by nginx
WORKDIR /var/www/html

RUN docker-php-ext-install pdo pdo_mysql