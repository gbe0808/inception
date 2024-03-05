#!/bin/sh

wp core download --path=/var/www/html --locale=ko_KR --allow-root
sleep 5
wp config create --path=/var/www/html --dbname=$DB_NAME --dbuser=$DB_USER --dbpass=$DB_PASSWD --dbhost=$DB_HOST --locale=ko_KR --allow-root
# wp core install --path=/var/www/html --url=https://sunwsong.42.fr --title=Title --admin_user=hyper --admin_password=$WP_ADMIN_PASSWD --admin_email=gbe0808@naver.com --allow-root
# wp user create sunwsong user371302@naver.com --role=author --user_pass=$WP_USER_PASSWD --path=/var/www/html --allow-root

chown -R www-data:www-data /var/www/html
chmod -R 774 /var/www/html

# php-fpm81 -F
/bin/sh