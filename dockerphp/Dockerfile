FROM php:8.2-apache

RUN docker-php-ext-install mysqli pdo pdo_mysql

RUN a2enmod rewrite

RUN apt-get update && apt-get install -y git

RUN git clone https://github.com/miusuariodegit/Contenedores.git /repositorio

RUN cp -r /repositorio/dockerphp/aplicacion/crud100 /var/www/html

EXPOSE 80

CMD ["apache2-foreground"]


