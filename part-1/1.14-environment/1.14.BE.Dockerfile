FROM golang:1.16-alpine

WORKDIR /usr/src/app

ENV REQUEST_ORIGIN http://localhost:5000

COPY . .
RUN go build

CMD ["./server"]

EXPOSE 8080