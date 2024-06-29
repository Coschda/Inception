#!/bin/bash

sleep 15
if [ ! -f /var/www/wordpress/wp-config.php ]; then
    wp config create    --allow-root \
                        --dbname="$MYSQL_DATABASE" \
                        --dbuser="$MYSQL_USER" \
                        --dbpass="$MYSQL_PASSWORD" \
                        --dbhost=mariadb:3306 \
                        --path='/var/www/wordpress'
    wp core install     --allow-root\
                        --path="/var/www/wordpress"\
                        --url="$LOGIN.42.fr"\
                        --title="test1"\
                        --admin_user="$WP_ADMIN"\
                        --admin_password="$WP_ADMIN_PASSWORD"\
                        --admin_email="$WP_ADMIN_EMAIL"
    wp user create "$WP_USER" "$WP_USER_MAIL"\
                        --allow-root\
                        --path="/var/www/wordpress"\
                        --user_pass="$WP_USER_PASSWORD"\
                        --display_name="$WP_DISPLAY_NAME"\
                        --role="author"
fi

/usr/sbin/php-fpm7.3 -F