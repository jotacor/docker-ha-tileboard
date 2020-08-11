FROM nginx:stable-alpine
LABEL maintainer="javi.corbin@gmail.com"

RUN apk add --no-cache --virtual .build-deps git && \
    rm -rf /var/www/html/* && \
    git clone https://github.com/resoai/TileBoard.git /var/www/html/ && \
    rm -rf /var/www/html/.git && \
    apk del .build-deps

ADD nginx/nginx.conf /etc/nginx/nginx.conf
ADD nginx/default.conf /etc/nginx/conf.d/default.conf
ADD tileboard/config.js /var/www/html

WORKDIR /var/www/html