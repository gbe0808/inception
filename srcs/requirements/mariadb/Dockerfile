FROM alpine:3.17

ARG DB_USER DB_PASSWD

RUN apk add --update --no-cache mariadb mariadb-client \
    && sed -i 's/skip-networking/# skip-networking/g' /etc/my.cnf.d/mariadb-server.cnf \
    # && sed -i 's/bind-address/# bind-address/g' /etc/my.cnf.d/mariadb-server.cnf \
    && echo "DB_USER=$DB_USER" > /etc/my_app/db_config \
    && echo "DB_PASSWD=$DB_PASSWD" >> /etc/my_app/db_config \
    && mkdir -p /run/mysqld

EXPOSE 3306

CMD [${DB_USER}, ${DB_PASSWD}]
ENTRYPOINT [ "./init.sh" ]
