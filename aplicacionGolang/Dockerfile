FROM ubuntu:24.04 AS builder

RUN apt update && apt install -y wget git build-essential ca-certificates && \
    rm -rf /var/lib/apt/lists/*

ENV GO_VERSION=1.22.5
RUN wget https://go.dev/dl/go${GO_VERSION}.linux-amd64.tar.gz && \
    tar -C /usr/local -xzf go${GO_VERSION}.linux-amd64.tar.gz && \
    rm go${GO_VERSION}.linux-amd64.tar.gz

ENV PATH="/usr/local/go/bin:${PATH}"
ENV CGO_ENABLED=0 GOOS=linux GOARCH=amd64
RUN apt install -y git curl nano mailagent


WORKDIR /app

RUN git clone https://github.com/miu
COPY /app/Contenedores/aplicacionGolang/aplicacion/go.mod /app/Contenedores/aplicacionGolang/aplicacion/go.sum ./
RUN go mod download
COPY . .
RUN go build -o main .

FROM ubuntu:24.04
WORKDIR /app
RUN apt update && apt install -y ca-certificates && \
    rm -rf /var/lib/apt/lists/*

COPY --from=builder /app/main .

EXPOSE 8080

CMD ["./main"]