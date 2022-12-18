FROM debian:buster
RUN apt-get update && apt-get upgrade -y
# RUN chown -R www-data:www-data /var/www/html/wordpress
# RUN chmod -R 777 /var/www/html
ADD /website /var/www/html/wordpress/website/
CMD while true; do sleep 1; done