FROM debian:buster

RUN apt-get update && apt-get install -y wget php php7.3-fpm php7.3-mysql 

COPY /conf /

RUN chmod 777 /script.sh

CMD [ "/bin/bash", "script.sh"]