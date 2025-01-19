# Base image with Go runtime
FROM golang:1.20

# Set Go environment variables
ENV GO111MODULE=on

# Set the working directory inside the container
WORKDIR /app

# Copy all files from the local directory into the container
COPY . .

# Build the GoPhish application inside the container
RUN go build -o gophish .

# Expose the ports used by GoPhish
EXPOSE 3333 8080 8443 80

# Command to run GoPhish when the container starts
CMD ["./gophish"]
