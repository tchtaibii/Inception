FROM debian:buster

RUN apt-get update -y && apt-get upgrade -y 

RUN apt-get install -y  mariadb-server mariadb-client


RUN chmod 777 /script.sh

CMD [ "/bin/bash", "script.sh"]