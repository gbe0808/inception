FROM debian:12.1

RUN apt-get update && apt-get upgrade && \
    apt-get install mariadb-server -y
# && sed -i 's/skip-networking/# skip-networking/g' /etc/my.cnf.d/mariadb-server.cnf \
# # && sed -i 's/bind-address/# bind-address/g' /etc/my.cnf.d/mariadb-server.cnf \
# && echo "DB_USER=$DB_USER" > /etc/my_app/db_config \
# && echo "DB_PASSWD=$DB_PASSWD" >> /etc/my_app/db_config \
# && mkdir -p /run/mysqld

EXPOSE 3306

# CMD [${DB_USER}, ${DB_PASSWD}]
# ENTRYPOINT [ "./init.sh" ]
