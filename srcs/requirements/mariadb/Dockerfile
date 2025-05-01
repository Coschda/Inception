FROM debian:bullseye

# Install MariaDB dependencies
RUN apt-get update -y && \
    apt-get upgrade -y && \
    apt-get install mariadb-server mariadb-client -y && \
    mkdir -p /var/run/mysqld && \
    chown -R mysql:mysql /var/run/mysqld && \
    chown -R mysql:mysql /etc/mysql/ && \
    chown -R mysql:mysql /var/lib/mysql && \
    mkdir -p /run/mysqld && \
    chown -R mysql:mysql /run/mysqld

# Copy custom configuration file
COPY conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

# Expose MariaDB port
EXPOSE 3306

# Start MariaDB server
CMD ["mysqld_safe"]
