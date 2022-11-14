openssl req -new -newkey rsa:2048 -days 365 -nodes -x509 -keyout /etc/ssl/private.key -out /etc/ssl/crt.crt -passout pass:"Neo$4ev" -subj "/C=MA/ST=CASABLANCA/L=BENGUERIR/O=TEHSUS/CN=tehsusrhist@gmail.com" >&-
mv /default /etc/nginx/sites-available/ >&-
rm -rf /var/www/html/index.nginx-debian.html >&-
mv /index.html /var/www/html/ >&-
nginx -g "daemon off;"
