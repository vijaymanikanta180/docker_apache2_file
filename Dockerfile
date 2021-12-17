FROM ubuntu 
RUN apt-get update
RUN apt-get DEBIAN_FRONTEND=noninteractive install –y apache2 
RUN apt-get install –y apache2-utils  
COPY index.html ./var/www/html/index.html
EXPOSE 80 
CMD [“apache2ctl”, “-D”, “FOREGROUND”]
