mkdir /run/mysqld

mysql_install_db --user=root --ldata=/var/lib/mysql

rc-service mariadb start