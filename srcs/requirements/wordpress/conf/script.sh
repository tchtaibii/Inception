echo "listen = 9000" >> /etc/php/7.3/fpm/pool.d/www.conf
wp core install --url=https://127.0.0.1  --title=${title} --admin_user=${admin_user} --admin_password=${admin_password} --admin_email=${admin_email} --path="/var/www/html/wordpress" --allow-root --skip-email
wp user create ${user_user} ${user_email} --user_pass=${user_password} --role=author --allow-root --path="/var/www/html/wordpress"
wp plugin install redis-cache --activate --allow-root --path="/var/www/html/wordpress"
service php7.3-fpm start
service php7.3-fpm stop
php-fpm7.3 -F -R