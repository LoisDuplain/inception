FROM debian:buster
EXPOSE 9000

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get -y install php7.3 php-mysqli php-fpm mariadb-client
RUN apt-get -y install wget curl

COPY ./conf/www.conf /etc/php/7.3/fpm/pool.d
RUN mkdir /run/php/

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp

RUN mkdir -p /var/www/wordpress
WORKDIR /var/www/wordpress
COPY ./conf/tool.sh ./

CMD ["./tool.sh"]
