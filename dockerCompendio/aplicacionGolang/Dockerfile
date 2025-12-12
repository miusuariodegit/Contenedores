#Se selecciona la imagen ubuntu:24.04
FROM ubuntu:24.04 AS builder

#Se actualiza el repositorio y se instalan dependencias para debuguear en caso de ser necesario
RUN apt update && apt install -y wget git build-essential ca-certificates git curl nano mailagent && \
    rm -rf /var/lib/apt/lists/*

#Se declara una variable de ambiente con la version de GO 
ENV GO_VERSION=1.22.5

#Se descargan los paquetes de instalacion de GO, se descomprimen y se borra el instalador
RUN wget https://go.dev/dl/go${GO_VERSION}.linux-amd64.tar.gz && \
    tar -C /usr/local -xzf go${GO_VERSION}.linux-amd64.tar.gz && \
    rm go${GO_VERSION}.linux-amd64.tar.gz

#Se actualiza el path con la ruta de instalacion de go 
ENV PATH="/usr/local/go/bin:${PATH}"

#se establecen variables de ambiente de GO
ENV CGO_ENABLED=0 GOOS=linux GOARCH=amd64

#Se establece el directorio de trabajo app
WORKDIR /app

#Se clona el repositorio de la aplicacion
RUN git clone https://github.com/miusuariodegit/Contenedores.git

#Se inicializa go con el repositorio de la aplicacion
RUN go mod init github.com/miusuariodegit/Contenedores/dockerCompendio/aplicacionGolang/aplicacion

#Se instalan las dependencias
RUN go mod download

#Se copia la aplicacion de go 
RUN cp /app/Contenedores/dockerCompendio/aplicacionGolang/aplicacion/GolangHello.go /app/GolangHello.go 

#Se compila la aplicacion 
RUN go build -o main .

#de la imagen ubuntu:24.04
FROM ubuntu:24.04

#Se establece el directorio app como directorio de trabajo
WORKDIR /app

#Se actualiza el repositorio y se instalan los certificados
RUN apt update && apt install -y ca-certificates curl && \
    rm -rf /var/lib/apt/lists/*

#Se copia el archivo main de la capa de construccion
COPY --from=builder /app/main .

#se expone el puerto 8090
EXPOSE 8090

#Se ejecuta la aplicacion
CMD ["./main"]