#Se seleccion la imagen php:8.2-apache
FROM php:8.2-apache

#Se instalan las dependencias mysqli pdo pdo_mysql
RUN docker-php-ext-install mysqli pdo pdo_mysql

#Se habilita el modo rewrite
RUN a2enmod rewrite

#Se actualiza el repositorio y se instala git
RUN apt-get update && apt-get install -y git

#Se clona el repositorio 
RUN git clone https://github.com/miusuariodegit/Contenedores.git /repositorio

#Se copia la aplicacion del directorio crud100
RUN cp -r /repositorio/dockerCompendio/dockerphp/aplicacion/crud100 /var/www/html

#Se expone el puerto 80
EXPOSE 80

#se ejecuta el apache2
CMD ["apache2-foreground"]


