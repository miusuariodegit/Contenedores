FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y python3 python3-pip python3-venv build-essential curl apache2 git && rm -rf /var/lib/apt/lists/*
WORKDIR /app
RUN python3 -m venv env
ENV PATH="/app/env/bin:$PATH"

RUN git clone https://github.com/miusuariodegit/Contenedores.git
RUN pip install --no-cache-dir -r ./Contenedores/dockerCompendio/dockerpython/aplicacion/requirements.txt

EXPOSE 5600

CMD ["python", "./Contenedores/dockerCompendio/dockerpython/aplicacion/run.py"]


