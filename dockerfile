FROM ubuntu:22.04
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y apache2 curl sudo php libapache2-mod-php
EXPOSE 80
CMD ["apachectl", "-D", "FOREGROUND"]