#!/bin/bash
wp core download --allow-root
wp core config --dbname='inception1' --dbuser='lduplain' --dbpass='pouet' --dbhost='frweb4.pulseheberg.net:3306' --dbprefix='wp_' --allow-root
wp core install --url="localhost" --title="lduplain inception website" --admin_user="lduplain" --admin_password="superprout" --admin_email="lduplain@student.42lyon.fr" --allow-root
wp user create toto toto@toto.com --role='subscriber' --user_pass='prout' --allow-root
wp option update comment_registration 1 --allow-root
exec /usr/sbin/php-fpm7.3 -F
