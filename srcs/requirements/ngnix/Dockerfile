FROM debian:buster

RUN apt-get update && apt-get install -y nginx openssl wget

COPY /conf/default /etc/nginx/sites-available/

COPY /conf/script.sh /

EXPOSE 443

RUN chmod 777 /script.sh

CMD [ "/bin/bash", "script.sh"]

