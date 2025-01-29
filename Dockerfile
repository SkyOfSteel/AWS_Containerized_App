# Use the official Ubuntu base image
FROM ubuntu:22.04

# Install the Apache HTTP server package from the CentOS repository
RUN apt update && apt install -y apache2

# Copy the index.html and style.css files from the Docker build context to the default Apache document root directory in the container
COPY index.html /var/www/html/
COPY style.css /var/www/html/css/

# Specify the command to run when the container starts, which starts the Apache HTTP server in the foreground
CMD ["apache2ctl", "-D", "FOREGROUND"]

# Expose port 80 to allow incoming HTTP traffic to the container
EXPOSE 80
