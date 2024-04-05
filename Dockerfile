# Use a base image with a lightweight Linux distribution
FROM alpine:latest

# Set the working directory inside the container
WORKDIR /app

# Copy the contents of your Java-Testing directory to the working directory in the container
COPY . .

# Command to run your application (if needed)
CMD ["echo", "This is a Java testing directory with text files"]
