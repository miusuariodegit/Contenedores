FROM ubuntu:24.04 AS builder

RUN apt update && apt install -y wget git build-essential ca-certificates git curl nano mailagent && \
    rm -rf /var/lib/apt/lists/*

ENV GO_VERSION=1.22.5
RUN wget https://go.dev/dl/go${GO_VERSION}.linux-amd64.tar.gz && \
    tar -C /usr/local -xzf go${GO_VERSION}.linux-amd64.tar.gz && \
    rm go${GO_VERSION}.linux-amd64.tar.gz

ENV PATH="/usr/local/go/bin:${PATH}"
ENV CGO_ENABLED=0 GOOS=linux GOARCH=amd64

WORKDIR /app

RUN git clone https://github.com/miusuariodegit/Contenedores.git

RUN go mod init github.com/miusuariodegit/Contenedores/aplicacionGolang/aplicacion
RUN go get -u github.com/go-sql-driver/mysql
RUN go get github.com/gorilla/mux

#//COPY /app/Contenedores/aplicacionGolang/aplicacion/go.mod .
#COPY /app/Contenedores/aplicacionGolang/aplicacion/go.sum .
RUN go mod download
#COPY . .
RUN cp /app/Contenedores/aplicacionGolang/aplicacion/GolangCrud.go /app/GolangCrud.go 

RUN go build -o main .

FROM ubuntu:24.04
WORKDIR /app
RUN apt update && apt install -y ca-certificates curl nano  && \
    rm -rf /var/lib/apt/lists/*

COPY --from=builder /app/main .

EXPOSE 8090

CMD ["./main"]