FROM alpine

MAINTAINER focudert <fcoudert@student.42.fr>

RUN apk add mysql mysql-client;
RUN mkdir /run/mysqld;
RUN mysql_install_db --user=root --ldata=/var/lib/mysql;

COPY init.sql /init.sql

COPY mariadb-server.cnf /etc/my.cnf.d/mariadb-server.cnf
COPY my.cnf /etc/my.cnf

#RUN sed -i 's/#bind-address=0.0.0.0/bind-address=0.0.0.0/g' /etc/my.cnf.d/mariadb-server.cnf
#RUN printf "\n[mysqld]\nbind-address = 0.0.0.0\n" >> /etc/my.cnf

ENTRYPOINT mysqld --user=root --init_file=/init.sql

#CMD mysqld