# Use an official Python runtime as a base image
FROM ubuntu:22.04

# Set the working directory in the container
WORKDIR /aplicacion

RUN apt-get update
RUN apt-get install git -y
RUN git clone https://github.com/urian121/CRUD-COMPLETO-con-Python-MySQL-y-un-Dashboard.git
RUN cp ./conexion/conexionBD.py  ./CRUD-COMPLETO-con-Python-MySQL-y-un-Dashboard/my-app/conexionconexionBD.py


RUN apt-get install python3 -y
RUN apt-get install python3.10-venv -y
RUN apt-get install python3-pip -y

RUN apt-get install apache2 -y
RUN python3 -m venv env
RUN . env/bin/activate
RUN python3 -m pip install -r ./CRUD-COMPLETO-con-Python-MySQL-y-un-Dashboard/requirements.txt

EXPOSE 5600 

CMD ["python3", "./CRUD-COMPLETO-con-Python-MySQL-y-un-Dashboard/my-app/run.py"] 