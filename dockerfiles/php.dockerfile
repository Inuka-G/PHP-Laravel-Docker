FROM php:8.4.10-fpm-alpine

# fpm required by nginx
WORKDIR /var/www/html

COPY src .

RUN docker-php-ext-install pdo pdo_mysql

RUN chown -R www-data:www-data /var/www/html