FROM golang:latest
RUN makdir /app
ADD . /app/
WORKDIR /app
RUN go build -o main .
CMD ["/app/main"]
