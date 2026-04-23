# Use a small Linux base image
FROM alpine:latest

# Set a working directory
WORKDIR /app

# (Optional) If you have a specific file to copy, like a jar or html:
# COPY . .

# A simple command so the container stays alive or shows a message
CMD ["echo", "Docker Build Successful!"]
