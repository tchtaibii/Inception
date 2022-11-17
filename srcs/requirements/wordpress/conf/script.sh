wget https://wordpress.org/latest.tar.gz
tar -xvf latest.tar.gz
mkdir -p /var/www/html/
chown -R www-data /var/www/html/
chmod -R 777 /var/www/html/
mv wordpress /var/www/html/
rm -rf /var/www/html/index.nginx-debian.html
