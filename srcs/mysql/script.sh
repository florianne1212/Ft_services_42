#!/bin/sh

if [[ ! -d "/var/lib/mysql/mysql" || ! -d "/var/lib/mysql/wordpress" || ! -d "/var/lib/mysql/phpmyadmin" ]]
then
	mysql_install_db --user=root --datadir=/var/lib/mysql
	mysqld --user=root --init_file=/init.sql
fi
