# Use a base image with PHP and Apache pre-installed
FROM php:8.2-apache

# Install any necessary PHP extensions
# Example: install MySQL extension
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Enable Apache modules if needed (e.g., mod_rewrite)
RUN a2enmod rewrite

RUN apt-get update && apt-get install -y git

# Clone the repository containing the WAR file
RUN git clone https://github.com/miusuariodegit/Contenedores.git /repositorio

# Copy the WAR file to the Tomcat webapps directory
# Change "your-app.war" to the actual name of your WAR file

RUN cp -r /repositorio/ejercicio3/aplicacion/crud100 /var/www/html

# Copy your application code into the webroot
#COPY ./aplicacion /var/www/html

# Expose port 80 for HTTP traffic
EXPOSE 80

# Command to keep Apache running in the foreground
CMD ["apache2-foreground"]


