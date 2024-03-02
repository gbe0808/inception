#!/bin/sh

wp core download --path=/var/www/html --allow-root

cp /tmp/wp-config.php /var/www/html/wp-config.php

chown -R www-data:www-data /var/www/html

/bin/sh