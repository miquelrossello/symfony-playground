FROM php:8-fpm

RUN apt-get update -y && apt-get upgrade -y

RUN apt-get install git zip unzip -y

RUN curl -sS https://getcomposer.org/installer | php -- \
    --install-dir=/usr/bin --filename=composer

COPY php.ini /usr/local/etc/php

WORKDIR /var/www/symfony-playground