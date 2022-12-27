mkdir -p /var/run/vsftpd/empty
cp /etc/vsftpd.conf /etc/vsftpd.conf.tchtaibi
mv /tmp/vsftpd.conf /etc/vsftpd.conf
adduser  --gecos "" $FTP_USER --disabled-password
echo "$FTP_USER:$FTP_PWD" | /usr/sbin/chpasswd &> /dev/null
chown -R $FTP_USER:$FTP_USER /home/tehsus/
mkdir -p /home/tehsus/ftp
chmod -R 777 /home/tehsus/
chmod +x /etc/vsftpd.conf
echo $FTP_USER | tee -a /etc/vsftpd.userlist &> /dev/null
echo "FTP started on :21 " $FTP_USER
exec "$@"