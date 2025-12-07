    1  unset DOCKER_HOST
    2  docker run --rm hello-world
    3  docker ps
    4  docker ps -a
    5  docker compose version
    6  ls
    7  cd Escritorio/
    8  mkdir ejemplo1
    9  cd ejemplo1/
   10  sudo nano docker-compose.yaml
   11  docker compose up -d
   12  docker ps
   13  docker run -d --name portainer --restart=always   -p 8000:8000 -p 9000:9000   -v /var/run/docker.sock:/var/run/docker.sock   -v portainer_data:/data   portainer/portainer-ce
   14  ls
   15  docker compose down
   16  ls
   17  cd..
   18  cd ..
   19  mk dir ejemplo2
   20  mkdir ejemplo2
   21  cd ejemplo2
   22  dir
   23  mkdir wp-docker
   24  cd wp-docker/
   25  sudo nano docker-compose.yml
   26  docker-compose up -d
   27 sudo curl -L 'https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)' -o /usr/local/bin/docker-comp
   28  docker compose up -d
   29  sudo nano docker-compose.yml
   30  docker-compose down
   31  docker compose down
   32  docker compose up
   33  ls
   34  history 500 > salida.sh
   
   