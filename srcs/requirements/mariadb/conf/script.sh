service mysql start
mysql -u root -e "CREATE DATABASE IF NOT EXISTS ${DB_NAME}; flush privileges;"
mysql -u root -e "GRANT ALL PRIVILEGES ON *.* TO '${MYSQL_USER}'@'%' IDENTIFIED BY '${MYSQL_PASSWORD}'; flush privileges;"
mysql -u root -e "flush privileges;"
mysql -u root -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '${MYSQL_ROOT_PASSWORD}'; FLUSH PRIVILEGES;"