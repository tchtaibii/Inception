FROM debian:buster

RUN apt-get update -y && apt-get upgrade -y 
RUN apt-get install -y  mariadb-server mariadb-client
RUN rm -f /etc/mysql/mariadb.conf.d/50-server.cnf

COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/
COPY ./conf/script.sh /
COPY ./conf/database.sql /
COPY ./conf/my.cnf /etc/mysql/my.cnf

RUN chmod 777 /script.sh

CMD [ "bash", "script.sh" ]
