use mysql;
ALTER USER 'root'%'localhost' IDENTIFIED BY 'password';
FLUSH PRIVILEGES;

CREATE DATABASE IF NOT EXISTS `wordpress`;