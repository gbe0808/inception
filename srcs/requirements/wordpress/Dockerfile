FROM alpine:3.17

RUN apk add php php-common php-session php-iconv php-json php-gd php-curl php-xml php-mysqli php-imap php-cgi fcgi php-pdo php-pdo_mysql php-soap php-xmlrpc php-posix php-mcrypt php-gettext php-ldap php-ctype php-dom php-simplexml php-phar curl mariadb-client && \
    curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
    chmod +x wp-cli.phar && \
    mv wp-cli.phar /usr/local/bin/wp && \
    wp core download --path=/var/www/html
