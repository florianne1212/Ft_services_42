FROM alpine

MAINTAINER focudert <fcoudert@student.42.fr>

RUN apk add mariadb mariadb-client;
RUN mkdir /run/mysqld;
#RUN mysql_install_db --user=root --datadir=/var/lib/mysql;

COPY init.sql /init.sql

COPY mariadb-server.cnf /etc/my.cnf.d/mariadb-server.cnf
COPY my.cnf /etc/my.cnf

COPY ./script.sh .

RUN chmod 777 script.sh

ENTRYPOINT [ "./script.sh" ]
