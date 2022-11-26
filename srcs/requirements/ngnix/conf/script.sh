openssl req -new -newkey rsa:2048 -days 365 -nodes -x509 -keyout /etc/ssl/private.key -out /etc/ssl/crt.crt -passout pass:"Neo$4ev" -subj "/C=MA/ST=CASABLANCA/L=BENGUERIR/O=TEHSUS/CN=tehsusrhist@gmail.com" >&-
nginx -g "daemon off;"
