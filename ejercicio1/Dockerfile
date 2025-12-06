# Use the official MySQL image from Docker Hub
FROM mysql:latest

# Set environment variables for the new user and database
ENV MYSQL_ROOT_PASSWORD=your_secure_password
ENV MYSQL_DATABASE=my_database
ENV MYSQL_USER=external_user
ENV MYSQL_PASSWORD=password

# Expose the default MySQL port
EXPOSE 3306

# The default command to start the MySQL server is inherited from the base image
CMD ["mysqld"]



#FROM mysql:8.0
#ENV MYSQL_ROOT_PASSWORD=mipassword
#ENV MYSQL_DATABASE=productosdb
#ENV MYSQL_USER=usuario
#ENV MYSQL_PASSWORD=mipassword
#EXPOSE 3306


#FROM mysql/mysql-server:8.0
#RUN mkdir /repositorio
#RUN cd /repositorio
#RUN git clone https://github.com/miusuariodegit/Contenedores.git .
#ENV MYSQL_ROOT_PASSWORD=mipassword
#ENV MYSQL_DATABASE=productosdb
#COPY /repositorio/paginaElectronicos/sql/productosDB.sql /docker-entrypoint-initdb.d/
#EXPOSE 3306



#FROM tomcat:9-jdk8-openjdk
#WORKDIR /repositorio
#RUN git clone https://github.com/miusuariodegit/Contenedores.git .
#RUN cp /repositorio/paginaElectronicos/dist/PaginaElectronicos.war /usr/local/tomcat/webapps/PaginaElectronicos.war
#EXPOSE 8080
#CMD ["catalina.sh", "run"]

