FROM php:7-apache

RUN apt-get update && apt-get install -y \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libmcrypt-dev \
        libpng-dev \
    && docker-php-ext-install -j5 iconv pdo pdo_mysql \
    && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install -j5 gd

RUN pecl install mcrypt-1.0.1 \
    && pecl install redis-3.1.6 \
    && pecl install xdebug-2.6.0beta1 \
    && docker-php-ext-enable mcrypt redis xdebug


RUN echo date.timezone=Asia/Bangkok > /usr/local/etc/php/conf.d/timezone.ini
