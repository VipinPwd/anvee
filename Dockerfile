FROM golang:latest
CMD ["CD $BUILD_HOME"] 
RUN mkdir /app
ADD . /app/
WORKDIR /app
RUN go build -o main .
CMD ["/app/main"]
