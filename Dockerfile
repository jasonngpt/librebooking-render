FROM php:8.2-apache

# Install PHP extensions
RUN apt-get update && apt-get install -y \
    libpng-dev libjpeg-dev libfreetype6-dev libzip-dev unzip git \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install gd mysqli pdo pdo_mysql zip mbstring xml intl \
    && a2enmod rewrite

# Set working directory
WORKDIR /var/www/html

# Download LibreBooking
RUN git clone https://github.com/LibreBooking/app.git librebooking
WORKDIR /var/www/html/librebooking

# Apache config
COPY ./apache.conf /etc/apache2/sites-available/000-default.conf

EXPOSE 80
CMD ["apache2-foreground"]
