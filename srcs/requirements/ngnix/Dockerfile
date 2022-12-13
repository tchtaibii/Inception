FROM debian:buster

RUN apt-get update && apt-get install -y nginx openssl wget

COPY /conf/default /etc/nginx/sites-available/

RUN openssl req -new -newkey rsa:2048 -days 365 -nodes -x509 -keyout /etc/ssl/private.key -out /etc/ssl/crt.crt -passout pass:"Neo$4ev" -subj "/C=MA/ST=CASABLANCA/L=BENGUERIR/O=TEHSUS/CN=tehsusrhist@gmail.com" >&-

CMD ["nginx", "-g", "daemon off;"]

