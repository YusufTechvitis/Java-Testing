# Use a base image with Apache already installedd
FROM httpd:latest

# Set the working directory inside the container
WORKDIR /usr/local/apache2/htdocs

# Remove the existing index.html file
RUN rm index.html

# Copy the contents of your Java-Testing directory to the working directory in the container
COPY . .


