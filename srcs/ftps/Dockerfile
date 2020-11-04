FROM	alpine

MAINTAINER focudert <fcoudert@student.42.fr>

RUN	apk update ; \
    apk add vsftpd ; \
	apk add --no-cache openrc openssl openssh

RUN	openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/certs/vsftpd.pem -out /etc/ssl/certs/vsftpd.pem -subj "/C=FR/ST=IDE/L=Paris/O=42/OU=42/CN=ftservices" 

COPY	vsftpd.conf /etc/vsftpd/vsftpd.conf

ADD start.sh /

RUN chmod 775 start.sh

EXPOSE 20 21 21000-21010

CMD /start.sh