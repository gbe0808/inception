FROM alpine:3.18

RUN apk update && apk upgrade && \
    apk add --no-cache nginx && \
    mkdir /etc/nginx/ssl && \
    apk add --no-cache openssl && \
    openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/nginx/ssl/nginx.key -out /etc/nginx/ssl/nginx.crt -subj '/C=US/ST=Oregon/L=Portland/CN=www.madboa.com'

COPY conf/nginx.conf /etc/nginx

EXPOSE 443

# CMD ["nginx", "-g", "daemon off;"]