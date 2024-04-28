#FROM ubuntu:latest
FROM golang:alpine

EXPOSE 8080
WORKDIR /usr/src/app
COPY example-backend/ .

ENV REQUEST_ORIGIN=http://localhost:5000

#RUN apt-get update && apt-get install -y wget gcc

RUN go build && \
    adduser -D appuser

#RUN rm -rf /usr/local/go && \
#    wget -c https://golang.org/dl/go1.16.15.linux-amd64.tar.gz -O - | tar -xz -C /usr/local

USER appuser

CMD ["./server"]