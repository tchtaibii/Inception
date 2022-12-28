if [ ! -e "/etc/vsftpd.conf.tchtaibi" ]; then
    mkdir -p /var/run/vsftpd/empty
    mv /etc/vsftpd.conf /etc/vsftpd.conf.tchtaibi
    mv /tmp/vsftpd.conf /etc/
    adduser  --gecos "" $FTP_USER --disabled-password
    echo "$FTP_USER:$FTP_PWD" | /usr/sbin/chpasswd &> /dev/null
    mkdir -p /home/tehsus/ftp
    chown -R $FTP_USER:$FTP_USER /home/tehsus/
    chmod -R 777 /home/tehsus/
    chmod +x /etc/vsftpd.conf
    echo $FTP_USER | tee -a /etc/vsftpd.userlist &> /dev/null
fi

echo "FTP started on :21 " $FTP_USER
exec "$@"