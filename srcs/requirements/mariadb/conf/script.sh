service mysql start

mysql -u root -e "CREATE USER IF NOT EXISTS 'user'@'localhost' IDENTIFIED BY '123';"

sleep 1;

mysql -u root -e "GRANT ALL PRIVILEGES ON *.* TO 'user'@'localhost';"

sleep 1;

mysql -u root -e "flush privileges;"

sleep 1;

mysql -u root -e  "CREATE DATABASE IF NOT EXISTS wordpress; flush privileges;"

sleep 1;
# change root password

service mysql stop

sleep 1;

mysqld