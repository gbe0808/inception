FROM alpine:3.18

RUN apk add php php-common php-json php-curl php-xml php-mysqli php-cgi fcgi php-pdo php-pdo_mysql php-soap php-posix php-ctype php-dom php-simplexml php-phar php-fpm curl mariadb-client && \
    curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
    chmod +x wp-cli.phar && \
    mv wp-cli.phar /usr/local/bin/wp && \
    mkdir -p /var/www/html && \
    adduser -D -g 'www-data' -G 'www-data' www-data

COPY ./conf/www.conf /etc/php81/php-fpm.d/www.conf
COPY ./tools/init.sh /tmp

EXPOSE 9000

ENTRYPOINT [ "sh", "/tmp/init.sh" ]