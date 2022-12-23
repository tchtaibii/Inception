FROM debian:buster
RUN apt-get update -y && apt-get upgrade -y
RUN apt install software-properties-common -y
RUN apt install haproxy -y
RUN openssl req -new -newkey rsa:2048 -days 365 -nodes -x509 -keyout /etc/ssl/private.key -out /etc/ssl/crt.crt -passout pass:"Neo$4ev" -subj "/C=MA/ST=CASABLANCA/L=BENGUERIR/O=TEHSUS/CN=tehsusrhist@gmail.com" >&-
ADD conf/ /etc/haproxy/
CMD ["haproxy", "-f", "/usr/local/etc/haproxy/haproxy.cfg"]