FROM php:5.6.12-fpm

RUN apt-get update \
    && curl -sL https://deb.nodesource.com/setup | bash - \
    && apt-get install -y git libssl-dev zlib1g-dev libicu-dev g++ \
    && pecl install xdebug \
    && echo zend_extension=xdebug.so > /usr/local/etc/php/conf.d/xdebug.ini \
    && docker-php-ext-install zip mbstring intl

RUN curl -sS https://getcomposer.org/installer | php \
&& mv composer.phar /usr/bin/composer

ADD docker/php.ini /usr/local/etc/php/php.ini
WORKDIR /

RUN mkdir /app
COPY . /app

WORKDIR /app/symfony-demo

RUN chown -R www-data:www-data /tmp
RUN composer install -n

RUN /bin/bash
