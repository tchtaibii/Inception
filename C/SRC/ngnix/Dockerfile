FROM debian:buster

RUN apt-get update && apt-get install -y nginx openssl wget

COPY /config/default / 

COPY /config/index.html /

COPY /config/script.sh /

EXPOSE 443

RUN chmod 777 /script.sh

CMD [ "/bin/bash", "script.sh"]

