#!/bin/bash

#sleep 10
if [ ! -f /var/www/wordpress/wp-config.php ]; then
    wp config create	--allow-root \
                        --path='/var/www/wordpress' \
						--dbname="test" \
						--dbuser="mdoumi" \
						--dbpass="example" \
						--dbhost=mariadb:3306
    #wp core install     --allow-root \
                        #--path='/var/www/wordpress'
fi

