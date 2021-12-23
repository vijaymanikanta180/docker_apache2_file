FROM ubuntu 
RUN apt-get update
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get install apache2 -y
COPY index.html /var/www/html
EXPOSE 90
ENTRYPOINT ["/bin/bash"] 
CMD apachectl -D FOREGROUND
