FROM golang:1.22.0-alpine3.19

# Set the Current Working Directory inside the container
WORKDIR /app

# Copy go.mod dan go.sum ke direktori kerja di dalam container
COPY go.mod go.sum ./

# Download semua dependensi. Dependensi akan di-cache jika go.mod dan go.sum tidak berubah
RUN go mod download

# Copy semua file dari direktori proyek ke direktori kerja di dalam container
COPY . .

# Build aplikasi Go
RUN go build -o main .

# Expose port 8080 untuk akses ke aplikasi HTTP
EXPOSE 8080

RUN apk update && apk --no-cache add bash curl

ENV HELLO_MESSAGE="Hello, Universe!"
ENV PORT=8080

ENV MONGO_ADDR=mongo
ENV MONGO_PORT=27017
ENV REDIS_ADDR=redis
ENV REDIS_PORT=6379

COPY main.go /app/main.go

CMD ["./main"]