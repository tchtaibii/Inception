FROM debian:buster
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y php  php7.3-mysql wget php7.3-fpm
RUN mkdir -p /var/www/html/adminer
RUN wget "http://www.adminer.org/latest.php" -O /var/www/html/adminer/index.php
RUN chmod 755 /var/www/html/adminer/index.php
RUN chown -R www-data:www-data /var/www/html/adminer/index.php
CMD php -S [::]:8080 -t /var/www/html/adminer/