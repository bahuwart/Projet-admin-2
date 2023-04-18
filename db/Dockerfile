FROM mysql

RUN chown -R mysql:root /var/lib/mysql/

ENV MYSQL_DATABASE=test
ENV MYSQL_USER=user
ENV MYSQL_PASSWORD=user123
ENV MYSQL_ROOT_PASSWORD=admin

COPY setup.sql /mysql/setup.sql