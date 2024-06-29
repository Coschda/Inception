FROM debian:buster

RUN apt update -y
RUN apt upgrade -y

RUN apt -y install wget
RUN apt-get install -y php7.3 php-fpm php-mysql mariadb-client

COPY conf/www.conf /etc/php/7.3/fpm/pool.d/www.conf

RUN wget https://fr.wordpress.org/wordpress-6.5.5-fr_FR.tar.gz -P /var/www
RUN cd /var/www && tar -xzf wordpress-6.5.5-fr_FR.tar.gz && rm wordpress-6.5.5-fr_FR.tar.gz
RUN	chown -R root:root /var/www/wordpress

RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp

COPY conf/wp_conf.sh /usr/local/bin/wp_conf.sh
RUN chmod +x /usr/local/bin/wp_conf.sh

ENTRYPOINT ./usr/local/bin/wp_conf.sh