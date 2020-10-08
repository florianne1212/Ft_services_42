use mysql;
ALTER USER 'root'@'localhost' IDENTIFIED BY 'password';
FLUSH PRIVILEGES;

CREATE DATABASE IF NOT EXISTS `wordpress`;
CREATE USER 'newuser'@'localhost' IDENTIFIED BY 'newuser' ;
GRANT ALL PRIVILEGES ON *.* TO 'newuser'@'localhost';
FLUSH PRIVILEGES;
