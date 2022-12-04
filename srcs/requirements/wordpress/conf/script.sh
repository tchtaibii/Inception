# cp -f /wp-config.php /var/www/html/wordpress
echo "listen = 9000" >> /etc/php/7.3/fpm/pool.d/www.conf
mkdir -p /var/www/html/wordpress/wp-content/uploads/2022/ /var/www/html/wordpress/wp-content/uploads/2022/ /var/www/html/wordpress/wp-content/uploads/2022/12/
cp /logo.png /var/www/html/wordpress/wp-content/uploads/2022/12/
service php7.3-fpm start
service php7.3-fpm stop
php-fpm7.3 -F -R