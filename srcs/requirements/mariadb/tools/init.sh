#!/bin/bash

cp /tmp/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

service mariadb start

mysql << EOF

FLUSH PRIVILEGES;
CREATE USER $DB_USER@'%' IDENTIFIED BY '$DB_PASSWD';
CREATE DATABASE IF NOT EXISTS $DB_NAME;
GRANT ALL PRIVILEGES ON $DB_NAME.* TO $DB_USER@'%' IDENTIFIED BY '$DB_PASSWD';
FLUSH PRIVILEGES;
EOF

service mariadb stop
mysqld -u root