FROM golang:alpine AS builder

WORKDIR /src

COPY *.go .

RUN go build hello.go

ENTRYPOINT ["./hello"]