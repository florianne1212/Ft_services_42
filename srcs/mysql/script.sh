#!/bin/sh

#mkdir -p /run/mysqld/


if [[ ! -d "/var/lib/mysql/mysql" || ! -d "/var/lib/mysql/wordpress" || ! -d "/var/lib/mysql/phpmyadmin" ]]
then
	mysql_install_db --user=root --datadir=/var/lib/mysql
	# /usr/bin/mysqld_safe --datadir="/var/lib/mysql"
	mysqld --user=root --init_file=/init.sql
fi
#sed -i 's/skip-networking/#skip-networking/g' /etc/my.cnf.d/mariadb-server.cnf


#mysql_install_db --user=root --ldata=/data
#/usr/bin/mysqld --console --init_file=/init.sql