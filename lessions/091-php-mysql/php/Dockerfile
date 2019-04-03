FROM php:7.0-apache

# Install extra php libraries
RUN docker-php-ext-install mysqli

COPY src/ /var/www/html/