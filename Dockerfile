FROM php:7-cli
MAINTAINER Ondrej Popelka <ondrej.popelka@keboola.com>

RUN apt-get update -q \
  && apt-get install -y \
  git \
  unzip 

RUN cd \
  && curl -sS https://getcomposer.org/installer | php \
  && ln -s /root/composer.phar /usr/local/bin/composer

COPY php.ini /usr/local/etc/php/php.ini

WORKDIR /home
