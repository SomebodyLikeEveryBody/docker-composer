FROM php:fpm

# Installer les dépendances nécessaires
RUN apt-get update && apt-get install -y \
    unzip \
    git \
    curl \
    libpng-dev \
    libonig-dev \
    libzip-dev \
    zip \
    && docker-php-ext-install pdo mbstring zip exif pcntl

# Installer Composer
RUN curl -sS https://getcomposer.org/installer | php -- \
    --install-dir=/usr/local/bin --filename=composer

# Définir le répertoire de travail
WORKDIR /var/www/html

# Exposer le port par défaut de PHP-FPM
EXPOSE 9000

CMD ["php-fpm"]