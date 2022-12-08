FROM debian:buster

RUN apt-get update -y && apt-get upgrade -y 
RUN apt-get install -y  mariadb-server mariadb-client
RUN rm -f /etc/mysql/mariadb.conf.d/50-server.cnf

COPY ${PWD}/requirements/mariadb/conf/50-server.cnf /etc/mysql/mariadb.conf.d/
COPY ${PWD}/requirements/mariadb/conf/script.sh /
COPY ${PWD}/requirements/mariadb/conf/database.sql /
COPY ${PWD}/requirements/mariadb/conf/my.cnf /etc/mysql/my.cnf

ARG DB_NAME \
    DB_USER \
    DB_PASSWORD \
    DB_ADMIN_PASSWORD

RUN service mysql start
RUN chmod 777 /script.sh && bash script.sh
RUN service mysql stop
CMD ["mysqld"]