#Seleccionamos la version de la imagen a trabajar en este caso ubuntu:24.0
FROM ubuntu:24.04 AS builder

#Instalamos las dependencias de los paquetes a utilizar
RUN apt update && apt install -y wget git build-essential ca-certificates git curl nano mailagent && \
    rm -rf /var/lib/apt/lists/*

#Variable de ambiente que establece la version de GO
ENV GO_VERSION=1.22.5

#Se descargan los paquetes de go se descomprimen y se borra el instalador
RUN wget https://go.dev/dl/go${GO_VERSION}.linux-amd64.tar.gz && \
    tar -C /usr/local -xzf go${GO_VERSION}.linux-amd64.tar.gz && \
    rm go${GO_VERSION}.linux-amd64.tar.gz

#Se agrega el directorio de go a la variable de ambiente PATH  
ENV PATH="/usr/local/go/bin:${PATH}"

#Se establecen las variables de ambiente de GO 
ENV CGO_ENABLED=0 GOOS=linux GOARCH=amd64

#Se establece el directorio de trabajo app
WORKDIR /app

#Se clona el repositorio 
RUN git clone https://github.com/miusuariodegit/Contenedores.git

#Se pide que se inicialice go con las dependencias de la aplicacion en el repositorio
RUN go mod init github.com/miusuariodegit/Contenedores/aplicacionGolang/aplicacion

#Se pide que se descanguen las dependencias de la aplicacion que se encuentra en el repositorio
RUN go mod download

#Se copia la aplicacion al directorio de trabajo
RUN cp /app/Contenedores/aplicacionGolang/aplicacion/GolangHello.go /app/GolangHello.go 

#Se construye la aplicacion
RUN go build -o main .

#Nos preparamos para ejecutar la aplicacion en la imagen ubuntu:24.04
FROM ubuntu:24.04

#se establece el mismo directorio de trabajo
WORKDIR /app

#se instalan las dependencias
RUN apt update && apt install -y ca-certificates curl nano  && \
    rm -rf /var/lib/apt/lists/*

#se copia el archivo compilado al directorio /app
COPY --from=builder /app/main .

#se expone el puerto 8090
EXPOSE 8090

#se ejecuta la aplicacion
CMD ["./main"]