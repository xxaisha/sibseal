FROM golang:1.19-alpine AS builder

WORKDIR /app

# Copy your Go source code (replace with your actual file name)
COPY main.go .

# Set environment variables for target architecture
ENV GOOS=windows GOARCH=amd64

# Build the Go program
RUN go build -o main

FROM alpine:latest

WORKDIR /app

# Copy the built executable from the builder stage
COPY --from=builder /app/main /app/main

# Expose the port for the web server
EXPOSE 8080

# Run the executable
CMD ["/app/main"]
