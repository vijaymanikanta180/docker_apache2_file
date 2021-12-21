FROM ubuntu 
RUN apt-get update
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get install apache2 -y
EXPOSE 80 
ENTRYPOINT  ["/bin/bash"]
