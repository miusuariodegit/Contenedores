#Se utiliza la imagen ubuntu:22.04 
FROM ubuntu:22.04

#Variable de ambiente para deshabilitar el modo interactivo
ENV DEBIAN_FRONTEND=noninteractive

#Se actualiza el repositorio y se instala python y dependencias de la aplicacion
RUN apt-get update && apt-get install -y python3 python3-pip python3-venv build-essential curl apache2 git && rm -rf /var/lib/apt/lists/*

#Se selecciona el directorio app como directorio de trabajo
WORKDIR /app

#se crea un ambiente virtual
RUN python3 -m venv env

#Se agrega al PATH el ambiente virtual
ENV PATH="/app/env/bin:$PATH"

#Se clona el repositorio
RUN git clone https://github.com/miusuariodegit/Contenedores.git

#Se instalan los requerimientos de la aplicacion
RUN pip install --no-cache-dir -r ./Contenedores/dockerCompendio/dockerpython/aplicacion/requirements.txt

#Se expone el puerto 5600
EXPOSE 5600

#Se ejecuta la aplicacion en Python
CMD ["python", "./Contenedores/dockerCompendio/dockerpython/aplicacion/run.py"]


