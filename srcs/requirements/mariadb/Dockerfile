FROM debian:buster

RUN apt update -y
RUN apt upgrade -y

RUN apt install mariadb-server -y
RUN apt install vim -y

COPY conf/mariadb.conf	/etc/mysql/mariadb.conf.d/50-server.cnf
COPY conf/sql_script.sh /usr/local/bin/sql_script.sh

ENTRYPOINT ./usr/local/bin/sql_script.sh