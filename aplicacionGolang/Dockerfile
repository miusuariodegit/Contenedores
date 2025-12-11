FROM ubuntu:24.04
ENV GO_VERSION 1.20.5
ENV GOPATH /go
ENV PATH $PATH:/usr/local/go/bin:$GOPATH/bin
RUN apt-get update && \
    apt-get install -y wget tar golang-go mailagent git curl && \
    wget https://golang.org/dl/go$GO_VERSION.linux-amd64.tar.gz && \
    tar -C /usr/local -xzf go$GO_VERSION.linux-amd64.tar.gz && \
    rm go$GO_VERSION.linux-amd64.tar.gz && \
    apt-get clean
    
    

WORKDIR /app

RUN git clone https://github.com/miusuariodegit/Contenedores.git
RUN chmod 777 /app/Contenedores/aplicacionGolang/aplicacion/aplicacion
#RUN go mod init /app/Contenedores/aplicacionGolang/aplicacion/GolangCrud.go
#RUN go get -u github.com/go-sql-driver/mysql
#RUN go get github.com/gorilla/mux

#go mod init myproject
#go mod init github.com/miusuariodegit/Contenedores
#go get -u github.com/go-sql-driver/mysql
#get -u github.com/go-sql-driver/mysql
#RUN go build -o /app/Contenedores/aplicacionGolang/aplicacion/aplicacion /app/Contenedores/aplicacionGolang/aplicacion/


CMD ["/app/Contenedores/aplicacionGolang/aplicacion/aplicacion"]
