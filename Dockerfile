# Set the base image to use for subsequent instructions
FROM alpine:latest

RUN apk add --no-cache curl

# Set the working directory inside the container
WORKDIR /script

# Copy any source file(s) required for the action
COPY entrypoint.sh .

# Configure the container to be run as an executable
ENTRYPOINT ["/script/entrypoint.sh"]
