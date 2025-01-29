# Use the official Ubuntu base image
FROM ubuntu

# Install the Apache HTTP server package from the CentOS repository
RUN apt-get -y update
RUN apt install -y apache2
RUN apt install -y apache2-utils
RUN apt clean

# Copy the index.html and style.css files from the Docker build context to the default Apache document root directory in the container
COPY index.html /var/www/html/
COPY style.css /var/www/html/css/

# Specify the command to run when the container starts, which starts the Apache HTTP server in the foreground
CMD [“apache2ctl”, “-D”, “FOREGROUND”]

# Expose port 80 to allow incoming HTTP traffic to the container
EXPOSE 80
