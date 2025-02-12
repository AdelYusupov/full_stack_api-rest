FROM golang:1.16.3-alpine3.13

WORKDIR /app

COPY . .

# Download and install
RUN go get -d -v ./...
# Build the go app
RUN go build -o api .

EXPOSE 1010

CMD ["./api"]