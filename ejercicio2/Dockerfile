# Use Tomcat 9 base image
FROM tomcat:9.0

# Install Git
RUN apt-get update && apt-get install -y git

WORKDIR /repositorio
# Clone the repository containing the WAR file
RUN git clone https://github.com/miusuariodegit/Contenedores.git 

# Copy the WAR file to the Tomcat webapps directory
# Change "your-app.war" to the actual name of your WAR file

RUN cp /repositorio/ejercicio2/PaginaElectronicos.war /usr/local/tomcat/webapps/PaginaElectronicos.war
#COPY /app/your-app.war /usr/local/tomcat/webapps/

# Expose port 8080
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]


#FROM tomcat:9-jdk8-openjdk
#WORKDIR /repositorio
#RUN git clone https://github.com/miusuariodegit/Contenedores.git .
#RUN cp /repositorio/paginaElectronicos/dist/PaginaElectronicos.war /usr/local/tomcat/webapps/PaginaElectronicos.war
#EXPOSE 8080
#CMD ["catalina.sh", "run"]

