FROM ubuntu 
RUN apt-get update
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get install –y apache2-utils
RUN apt-get install –y apache2
RUN apt-get clean 
COPY index.html ./var/www/html/index.html
EXPOSE 80 
CMD [“apache2ctl”, “-D”, “FOREGROUND”]
