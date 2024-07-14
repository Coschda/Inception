FROM debian:buster

RUN apt update -y
RUN apt upgrade -y

RUN apt install mariadb-server -y

COPY conf/mariadb.conf	/etc/mysql/mariadb.conf.d/50-server.cnf

COPY conf/sql_script.sh /usr/local/bin/sql_script.sh
RUN chmod 755 /usr/local/bin/sql_script.sh

ENTRYPOINT ["bash", "/usr/local/bin/sql_script.sh"]