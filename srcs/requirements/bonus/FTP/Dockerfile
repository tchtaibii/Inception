FROM debian:buster

RUN	apt update && apt upgrade && apt install -y vsftpd

# ENV -f conf/.env

ARG FTP_USER=${FTP_USER} \
    FTP_PWD=${FTP_PWD}

COPY conf/vsftpd.conf /tmp/vsftpd.conf

COPY conf/server_ftp.sh /tmp/server_ftp.sh


ENTRYPOINT ["bash", "/tmp/server_ftp.sh"]

CMD ["vsftpd", "/etc/vsftpd.conf"]