# ---- Build stage ----
FROM golang:1.22.5 AS builder

WORKDIR /app

# Copy go.mod (and go.sum if it exists)
COPY go.mod ./
RUN go mod download

# Copy the rest of the source code
COPY . .

# Build the Go binary
RUN go build -o main .

# ---- Final (distroless) stage ----
FROM gcr.io/distroless/base

# Set working directory (important!)
WORKDIR /app

# Copy binary and static files
COPY --from=builder /app/main .
COPY --from=builder /app/static ./static

# Expose the port your Go app listens on
EXPOSE 8080

# Run the binary
CMD ["./main"]





