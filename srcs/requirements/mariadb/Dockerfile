FROM alpine:3.17

ARG DB_USER DB_PASSWD

RUN apk update && apk upgrade && \
    apk add mariadb && \
    apk add mariadb-client

EXPOSE 3306
