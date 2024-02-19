# Use a lightweight base image
FROM ubuntu:latest

# Set the working directory inside the container
WORKDIR /app

# Install gcc
RUN apt-get update && apt-get install -y gcc

# Copy the C source code into the container
COPY hello.c .

# Compile the C code
RUN gcc -o hello hello.c

# Set the entry point for the container
ENTRYPOINT ["./hello"]

