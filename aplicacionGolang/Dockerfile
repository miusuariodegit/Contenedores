FROM golang:1.21-bullseye AS builder

WORKDIR /app

RUN apt-get update && apt-get install -y git 
RUN git clone https://github.com/miusuariodegit/Contenedores.git


COPY go.mod go.sum ./
RUN go mod download

COPY . .

RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -ldflags="-s -w" -o main .

FROM ubuntu:22.04

WORKDIR /app

COPY --from=builder /app/main .

EXPOSE 8090

# Command to run the application when the container starts
CMD ["./main"]


