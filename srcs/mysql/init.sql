use mysql;
ALTER USER 'root'@'localhost' IDENTIFIED BY 'password';
FLUSH PRIVILEGES;

CREATE DATABASE IF NOT EXISTS `wordpress`;
CREATE USER 'newuser'@'%' IDENTIFIED BY 'newuser' ;
GRANT ALL PRIVILEGES ON wordpress.* TO 'newuser'@'%';
FLUSH PRIVILEGES;
