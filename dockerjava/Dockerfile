#Se selecciona la imagen tomcat:9.0 a trabajar por que es una version antigua con el JDK 8.0 con el que se creo la aplicacion
FROM tomcat:9.0

#Se actualiza el repositorio y se instala git
RUN apt-get update && apt-get install -y git

#Se clona en repositorio
RUN git clone https://github.com/miusuariodegit/Contenedores.git /repositorio

#Se copia la aplicacion web en el directorio de aplicaciones de tomcat
RUN cp /repositorio/aplicacionJavaPuerto3307/PaginaElectronicos.war /usr/local/tomcat/webapps/PaginaElectronicos.war

#Se expone el puerto 8081
EXPOSE 8081

#Se ejecuta el tomcat
CMD ["catalina.sh", "run"]


