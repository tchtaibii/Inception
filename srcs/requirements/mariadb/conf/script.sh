service mysql start

mysql -u root -e "CREATE DATABASE IF NOT EXISTS '${DB_NAME}'; flush privileges;"
mysql -u root -e "GRANT ALL PRIVILEGES ON *.* TO '${DB_USER}'@'%' IDENTIFIED BY '${DB_PASSWORD}'; flush privileges;"
mysql < /database.sql -u ${DB_USER} -p${DB_PASSWORD} ${DB_NAME}
mysql -u root -e "flush privileges;"
# mysql -u root -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '${DB_ADMIN_PASSWORD}'; FLUSH PRIVILEGES;"
