#Se selecciona la imagen ubuntu:22.04
FROM ubuntu:22.04

#Variable de ambiente para evitar el uso interactivo
ENV DEBIAN_FRONTEND=noninteractive

#Se actualiza el repositorio, se instala python, git, apache 2 
RUN apt-get update && apt-get install -y python3 python3-pip python3-venv build-essential curl apache2 git && rm -rf /var/lib/apt/lists/*

#Se establece que el directorio de trabajo es app
WORKDIR /app

#Se crea un ambiente virtual
RUN python3 -m venv env

#Se agrega al path el ambiente virtual
ENV PATH="/app/env/bin:$PATH"

#Se clona el repositorio
RUN git clone https://github.com/miusuariodegit/Contenedores.git

#Se instalan los requerimientos de la aplicacion
RUN pip install --no-cache-dir -r ./Contenedores/dockerpython/aplicacion/requirements.txt

#Se expone el puerto 5600
EXPOSE 5600

#Se ejecuta la aplicacion de python 
CMD ["python", "./Contenedores/dockerpython/aplicacion/run.py"]



