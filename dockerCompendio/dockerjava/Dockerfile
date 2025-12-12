FROM tomcat:9.0

RUN apt-get update && apt-get install -y git

RUN git clone https://github.com/miusuariodegit/Contenedores.git /repositorio

RUN cp /repositorio/Contenedores/dockerCompendio/dockerjava/aplicacion/PaginaElectronicos.war /usr/local/tomcat/webapps/PaginaElectronicos.war

EXPOSE 8080

CMD ["catalina.sh", "run"]


