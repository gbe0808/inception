#!/bin/bash

cp /tmp/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

service mariadb start

mysql << EOF

FLUSH PRIVILEGES;
CREATE USER 'sunwsong'@'%' IDENTIFIED BY 'u1234';
CREATE USER 'hyper'@'%' IDENTIFIED BY 'r1234';
CREATE DATABASE wpdb;
GRANT ALL PRIVILEGES ON wpdb.* TO 'hyper'@'%' IDENTIFIED BY 'r1234';
FLUSH PRIVILEGES;
EOF

# service mariadb stop

/bin/bash