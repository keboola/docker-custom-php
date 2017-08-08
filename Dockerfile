FROM php:7-cli

RUN apt-get update -q \
  && apt-get install -y \
  git \
  unzip \
  libxml2-dev \
  --no-install-recommends

RUN docker-php-ext-install soap

RUN curl -sS https://getcomposer.org/installer | php \
  && mv composer.phar /usr/local/bin/composer

COPY php.ini /usr/local/etc/php/php.ini

WORKDIR /home
