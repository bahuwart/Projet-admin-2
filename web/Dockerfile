FROM ubuntu/apache2

RUN apt update
RUN apt upgrade -y
RUN apt-get -y install systemd
RUN apt-get -y install apache2
RUN apt-get -y install apache2 apache2-utils
RUN apt-get -y install php
RUN apt-get -y install php-common php-mysql php-xml php-xmlrpc php-curl php-gd php-imagick php-cli php-dev php-imap php
RUN apt-get -y install libapache2-mod-php
RUN apt-get -y install vim nano

COPY ./sites/www/index.html /var/www/html
COPY ./sites/b2b/index.php /var/www/html


EXPOSE 80

CMD ["apache2ctl", "-D", "FOREGROUND"]