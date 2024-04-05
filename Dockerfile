# Use a base image with a lightweight Linux distribution
FROM alpine:latest

# Set the working directory inside the container
WORKDIR /app

# Copy the contents of your Java-Testing directory to the working directory in the container
COPY . .

# Command to run when the container starts
CMD sh -c "docker run -p 80:80 -d --name apache yusufme3/yr-apache-image:latest"
