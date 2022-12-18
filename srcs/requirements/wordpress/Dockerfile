FROM debian:buster
ARG DB_NAME \
    DB_HOST \
    DB_USER \
    DB_PASSWORD \
    title \
    admin_user \
    admin_password \
    admin_email
RUN apt-get update && apt-get install -y wget php php7.3-fpm php7.3-mysql curl
WORKDIR /var/www/html/wordpress
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp
RUN chown -R www-data:www-data /var/www/html/wordpress
RUN wp core download --path="/var/www/html/wordpress"  --allow-root
RUN wp core config --dbname=${DB_NAME} --dbuser=${DB_USER} --dbpass=${DB_PASSWORD} --dbhost=${DB_HOST} --allow-root --path="/var/www/html/wordpress/" --skip-check
WORKDIR /
COPY /conf/script.sh /
RUN chmod 777 /script.sh
ENTRYPOINT [ "bash", "script.sh" ]
# RUN ./script.sh
CMD ["php-fpm7.3", "-F", "-R"]