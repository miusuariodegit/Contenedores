#Se selecciona la imagen tomcat:9.0 por que tiene el JDK8 instalado y vamos a correr una aplicacion que usa ese JDK 
FROM tomcat:9.0

#Se actualiza el repositorio y se instala git
RUN apt-get update && apt-get install -y git

#Se clona el repositorio
RUN git clone https://github.com/miusuariodegit/Contenedores.git /repositorio

#Se copia la aplicacion web 
RUN cp /repositorio/aplicacionJava/PaginaElectronicos.war /usr/local/tomcat/webapps/PaginaElectronicos.war

#Se expone el puerto 8080
EXPOSE 8080

#Se ejecuta el tomcat
CMD ["catalina.sh", "run"]


