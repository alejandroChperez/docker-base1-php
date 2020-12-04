FROM php:7.3-fpm
LABEL vendor=al3jandroCH
# Instalar dependencias
RUN apt-get update && apt-get install -y \
        build-essential \
        default-mysql-client \
        libpng-dev \
        libzip-dev \
        libjpeg62-turbo-dev \
        libfreetype6-dev \
        locales \
        zip \
        jpegoptim optipng pngquant gifsicle \
        vim \
        unzip \
        git \
        curl \
        npm build-essential \
        nano
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli
RUN docker-php-ext-install pdo_mysql && docker-php-ext-enable pdo_mysql
RUN docker-php-ext-install gd zip
WORKDIR /var/www/html/nombre_proyecto

CMD ["php-fpm"]