#!/bin/bash
wp core download --allow-root
wp core config --dbname='wordpress' --dbuser='lduplain' --dbpass='superprout' --dbhost='mariadb:3306' --dbprefix='wp_' --allow-root
wp core install --url="lduplain.42.fr" --title="lduplain inception_42 website" --admin_user="lduplain" --admin_password="superprout" --admin_email="lduplain@student.42lyon.fr" --allow-root
wp user create toto toto@toto.com --role='subscriber' --user_pass='prout' --allow-root
wp option update comment_registration 1 --allow-root
exec /usr/sbin/php-fpm7.3 -F
