FROM debian:bullseye

RUN apt-get update -y && apt-get upgrade -y && \
    apt-get install mariadb-server -y
# && echo "DB_USER=$DB_USER" > /etc/my_app/db_config \
# && echo "DB_PASSWD=$DB_PASSWD" >> /etc/my_app/db_config \
# && mkdir -p /run/mysqld

# ADD ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf
COPY ./conf/50-server.cnf /tmp/50-server.cnf
COPY ./tools/init.sh /tmp

WORKDIR /tmp

EXPOSE 3306

# CMD [${DB_USER}, ${DB_PASSWD}]
ENTRYPOINT [ "bash", "init.sh" ]
