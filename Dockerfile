FROM golang:1-bullseye
RUN mkdir /homesite/
COPY gin /homesite/gin
WORKDIR /homesite/gin
ENV GIN_MODE=release
RUN go build -o main .
ENTRYPOINT ["./main"]
