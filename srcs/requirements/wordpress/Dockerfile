FROM alpine:3.17

RUN apk add php php-common php-json php-curl php-xml php-mysqli php-cgi fcgi php-pdo php-pdo_mysql php-soap php-posix php-ctype php-dom php-simplexml php-phar php-fpm curl mariadb-client && \
    curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
    chmod +x wp-cli.phar && \
    mv wp-cli.phar /usr/local/bin/wp && \
    mkdir /var/www && \
    mkdir /var/www/html && \
    wp core download --path=/var/www/html --allow-root

ADD conf/www.conf /etc/php81/php-fpm.d/www.conf
ADD conf/wp-config.php /var/www/html/wp-config.php

EXPOSE 9000