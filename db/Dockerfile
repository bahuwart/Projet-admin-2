#Utiliser l'image de base de mysql
FROM mysql:latest

#Lancer la base de données
RUN chown -R mysql:root /var/lib/mysql/

#Crée une variable d'environement pour le mot de passe de la db
ENV MYSQL_DATABASE=test
ENV MYSQL_USER=user
ENV MYSQL_PASSWORD=user123
ENV MYSQL_ROOT_PASSWORD=admin

COPY setup.sql /docker-entrypoint-initdb.d/