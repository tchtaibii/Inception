FROM debian:buster

RUN apt-get update && apt-get install -y wget php php7.3-fpm php7.3-mysql 

WORKDIR /var/www/html/

RUN wget https://wordpress.org/latest.tar.gz

RUN tar -xvf latest.tar.gz 

RUN chown -R www-data:www-data /var/www/html/wordpress

WORKDIR /

COPY /conf/script.sh /

COPY /conf/wp-config.php /var/www/html/wordpress/

COPY /conf/logo.png /

COPY /conf/oaknut /var/www/html/wordpress/wp-content/themes/oaknut

RUN mkdir -p /var/www/html/wordpress/wp-content/uploads /var/www/html/wordpress/wp-content/uploads/2022/ /var/www/html/wordpress/wp-content/uploads/2022/ /var/www/html/wordpress/wp-content/uploads/2022/12/

RUN chmod 777 /script.sh

CMD [ "/bin/bash", "script.sh"]