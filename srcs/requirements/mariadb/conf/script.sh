service mysql start

mysql -u root -e "CREATE USER IF NOT EXISTS '${DB_USER}'@'%' IDENTIFIED BY '${DB_PASSWORD}';"

sleep 1;

mysql -u root -e "GRANT ALL PRIVILEGES ON *.* TO '${DB_USER}'@'%';"

sleep 1;

mysql -u root -e "flush privileges;"

sleep 1;

mysql -u root -e  "CREATE DATABASE IF NOT EXISTS ${DB_NAME}; flush privileges;"

sleep 1;
# change root password

service mysql stop

sleep 1;

mysqld