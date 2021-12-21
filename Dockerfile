FROM ubuntu 
RUN apt-get update
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get install apache2 -y
RUN apt-get clean 
COPY index.html /var/www/html/index.html
EXPOSE 80 
CMD [“/usr/sbin/apache2”, “-D”, “FOREGROUND”]

