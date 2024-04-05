# Use a base image with Apache already installed
FROM httpd:latest

# Set the working directory inside the container
WORKDIR /usr/local/apache2/htdocs

# Copy the contents of your Java-Testing directory to the working directory in the container
COPY . .
