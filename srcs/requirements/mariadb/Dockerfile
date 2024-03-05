FROM debian:bullseye

RUN apt-get update -y && apt-get upgrade -y && \
    apt-get install mariadb-server -y

COPY ./conf/50-server.cnf /tmp/50-server.cnf
COPY ./tools/init.sh /tmp

EXPOSE 3306

ENTRYPOINT [ "bash", "/tmp/init.sh" ]
