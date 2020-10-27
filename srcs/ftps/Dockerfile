FROM	alpine

MAINTAINER focudert <fcoudert@student.42.fr>

RUN	apk update ; \
    apk add vsftpd ; \
	apk add --no-cache openrc openssl openssh

RUN	openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/certs/vsftpd.pem -out /etc/ssl/certs/vsftpd.pem -subj "/C=FR/ST=IDE/L=Paris/O=42/OU=42/CN=mywebsite.com" 

COPY	vsftpd.conf /etc/vsftpd/vsftpd.conf


EXPOSE 20 21 2100-21010

CMD /usr/sbin/vsftpd /etc/vsftpd/vsftpd.conf