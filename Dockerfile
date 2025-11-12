FROM php:8.2-apache

# Modules Apache (réécritures pour CMS)
RUN a2enmod rewrite headers

# Extensions PHP dont PDO MySQL
RUN docker-php-ext-install pdo pdo_mysql mysqli

# (Optionnel) autres extensions fréquentes :
# RUN apt-get update && apt-get install -y libzip-dev libjpeg-dev libpng-dev libfreetype6-dev libicu-dev \
#   && docker-php-ext-configure gd --with-freetype --with-jpeg \
#   && docker-php-ext-install zip gd intl

# DocumentRoot classique
WORKDIR /var/www/html

# Autoriser .htaccess à gérer les réécritures
RUN sed -ri 's!/var/www/html>!/var/www/html>\n\tAllowOverride All\n\tOptions FollowSymLinks\n!g' /etc/apache2/sites-available/000-default.conf
