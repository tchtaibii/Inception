service mysql start
mysql -u root -e  "CREATE DATABASE IF NOT EXISTS ${DB_NAME}; flush privileges;"
mysql -u root -e "GRANT ALL PRIVILEGES ON *.* TO '${DB_USER}'@'%' IDENTIFIED BY '${DB_PASSWORD}'; flush privileges;"
mysql < /database.sql -u ${DB_USER} -p${DB_PASSWORD} ${DB_NAME}
mysql -u root -e "flush privileges;"
service mysql stop
sleep 2;
mysqld_safe