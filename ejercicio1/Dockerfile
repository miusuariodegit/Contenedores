
#FROM mysql:8.4
#RUN mkdir /repositorio
#RUN cd /repositorio
#RUN git clone https://github.com/miusuariodegit/Contenedores.git .
#ENV MYSQL_ROOT_PASSWORD=mipassword
#ENV MYSQL_DATABASE=productosdb
#COPY /repositorio/paginaElectronicos/sql/productosDB.sql /docker-entrypoint-initdb.d/
#EXPOSE 3306



FROM tomcat:9-jdk8-openjdk
WORKDIR /repositorio
RUN git clone https://github.com/miusuariodegit/Contenedores.git .
RUN cp /repositorio/paginaElectronicos/dist/PaginaElectronicos.war /usr/local/tomcat/webapps/PaginaElectronicos.war
EXPOSE 8080
CMD ["catalina.sh", "run"]

