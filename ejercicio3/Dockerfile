# Use a base image with PHP and Apache pre-installed
FROM php:8.2-apache

# Install any necessary PHP extensions
# Example: install MySQL extension
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Enable Apache modules if needed (e.g., mod_rewrite)
RUN a2enmod rewrite

# Copy your application code into the webroot
COPY ./aplicacion /var/www/html

# Expose port 80 for HTTP traffic
EXPOSE 80

# Command to keep Apache running in the foreground
CMD ["apache2-foreground"]


