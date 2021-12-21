FROM ubuntu 
RUN apt-get update
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get install apache2 -y
EXPOSE 80 
CMD [“/usr/sbin/apache2”, “-D”, “FOREGROUND”]

