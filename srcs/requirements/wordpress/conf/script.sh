chown -R www-data:www-data /var/www/html/wordpress
chmod -R 777 /var/www/html/wordpress
if [ ! -e "/var/www/html/wordpress/check.t" ]; then
    touch /var/www/html/wordpress/check.t
    echo "listen = 9000" >> /etc/php/7.3/fpm/pool.d/www.conf
    wp core install --url=https://127.0.0.1 --title=${title} --admin_user=${admin_user} --admin_password=${admin_password} --admin_email=${admin_email} --path="/var/www/html/wordpress" --allow-root --skip-email
    wp user create ${user_user} ${user_email} --user_pass=${user_password} --role=author --allow-root --path="/var/www/html/wordpress"
    wp config --allow-root set WP_REDIS_HOST redis --path="/var/www/html/wordpress"
    wp config --allow-root set WP_REDIS_PORT 6379 --path="/var/www/html/wordpress"
    wp config --allow-root set WP_REDIS_DATABASE 0 --path="/var/www/html/wordpress"
    wp plugin install redis-cache --activate  --allow-root --path="/var/www/html/wordpress"
    wp redis enable --allow-root --force --path="/var/www/html/wordpress"
fi
service php7.3-fpm start
service php7.3-fpm stop
exec "$@"