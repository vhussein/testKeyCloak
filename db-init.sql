CREATE USER 'keycloak'@'localhost' IDENTIFIED BY 'password';
UPDATE mysql.user SET HOST = '%' WHERE USER='keycloak';
GRANT ALL PRIVILEGES ON *.* TO 'keycloak'@'%' WITH GRANT OPTION;
FLUSH PRIVILEGES;

CREATE DATABASE  IF NOT EXISTS `keycloak`;
