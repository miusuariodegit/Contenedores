# Base image
FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y python3 python3-pip python3-venv build-essential curl apache2 git && rm -rf /var/lib/apt/lists/*
WORKDIR /app
RUN python3 -m venv env
ENV PATH="/app/env/bin:$PATH"

RUN git clone https://github.com/miusuariodegit/Contenedores.git
RUN pip install --no-cache-dir -r ./Contenedores/ejercicio6/aplicacion/requirements.txt

EXPOSE 5600

CMD ["python", "./Contenedores/ejercicio6/aplicacion/run.py"]



#FROM ubuntu:22.04
#WORKDIR /aplicacion
#RUN apt-get update && apt-get install -y python3 python3-venv python3-pip apache2 git
#RUN git clone https://github.com/miusuariodegit/Contenedores.git
#RUN python3 -m venv env
##RUN . env/bin/activate && pip install --upgrade pip 
#RUN pip install -r ./Contenedores/ejercicio6/aplicacion/requirements.txt 
#CMD ["/bin/bash", "-c", ". env/bin/activate && pip install --upgrade pip && python ./Contenedores/ejercicio6/aplicacion/run.py"]
##CMD ["python3", "./Contenedores/ejercicio6/aplicacion/run.py"]




#RUN python3 -m venv env
#RUN source env/bin/activate 
#RUN python3 -m pip install -r ./Contenedores/ejercicio6/aplicacion/requirements.txt

#--------------------------------------

# Use an official Python runtime as a base image
#FROM ubuntu:22.04

# Set the working directory in the container
#WORKDIR /aplicacion


#RUN apt-get update
#RUN apt-get install git -y
#RUN apt-get install python3 -y
#RUN apt-get install python3.10-venv -y
#RUN apt-get install python3-pip -y
#RUN apt-get install apache2 -y
#RUN git clone https://github.com/miusuariodegit/Contenedores.git

#RUN python3 -m venv /opt/venv
#ENV VIRTUAL_ENV=/opt/venv
#ENV PATH="$VIRTUAL_ENV/bin:$PATH"
#RUN python3 -m pip install -r ./Contenedores/ejercicio6/aplicacion/requirements.txt

#CMD ["python", "./Contenedores/ejercicio6/aplicacion/run.py"] 

#hasta aqui