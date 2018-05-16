FROM golang:1.10.1-alpine3.7
COPY main.go .
RUN go build -o app main.go
EXPOSE 8080
CMD ["./app"]

