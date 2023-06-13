FROM php:7.4-apache

RUN apt-get update && \
    apt-get install -y libzip-dev libicu-dev libonig-dev zlib1g-dev mariadb-client && \
    docker-php-ext-install mysqli pdo pdo_mysql && \
    docker-php-ext-enable mysqli && \
    a2enmod rewrite

RUN mkdir /var/log/apache2/html
RUN mkdir /var/log/apache2/php

COPY /.well-known/pki-validation/ /var/www/html/.well-known/pki-validation/

COPY ./ssl/ca_bundle.crt /etc/ssl/ca_bundle.crt
COPY ./ssl/certificate.crt /etc/ssl/certificate.crt
COPY ./ssl/private.key /etc/ssl/private/private.key

COPY ./sites/ /var/www/

COPY ./config/ports.conf /etc/apache2/
COPY ./config/apache2.conf /etc/apache2/
COPY ./config/sites/b2b.conf /etc/apache2/sites-available/
COPY ./config/sites/www.conf /etc/apache2/sites-available/

RUN a2enmod ssl

RUN a2dissite 000-default.conf

RUN a2ensite www.conf
RUN a2ensite b2b.conf

RUN service apache2 start

WORKDIR /var/www/

EXPOSE 80
EXPOSE 443
