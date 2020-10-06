FROM alpine

MAINTAINER focudert <fcoudert@student.42.fr>

RUN apk add mysql mysql-client;
RUN mkdir /run/mysqld;
RUN mysql_install_db --user=root --ldata=/var/lib/mysql;

COPY init.sql /init.sql

ENTRYPOINT mysqld --user=root --init_file=/init.sql

CMD service mysql start