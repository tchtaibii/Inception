FROM debian:buster

RUN apt-get update -y && apt-get upgrade -y 
RUN apt-get install -y  mariadb-server mariadb-client
RUN rm -f /etc/mysql/mariadb.conf.d/50-server.cnf

COPY ${PWD}/requirements/mariadb/conf/50-server.cnf /etc/mysql/mariadb.conf.d/
COPY ${PWD}/requirements/mariadb/conf/script.sh /
COPY ${PWD}/requirements/mariadb/conf/my.cnf /etc/mysql/my.cnf

ARG DB_NAME \
    MYSQL_USER \
    MYSQL_ROOT_USER \
    MYSQL_PASSWORD \
    MYSQL_ROOT_PASSWORD

RUN service mysql start
RUN chmod 777 /script.sh
RUN bash script.sh
RUN service mysql stop
CMD ["mysqld"]