FROM golang:alpine as build-stage

WORKDIR /usr/src/app

COPY example-backend/ .

RUN CGO_ENABLED=0 go build


FROM scratch

WORKDIR /usr/src/app

ENV REQUEST_ORIGIN=http://localhost:5000

EXPOSE 8080

COPY --from=build-stage /usr/src/app/  /usr/src/app/

ENTRYPOINT ["./server"]