FROM woosungchoi/fpm-alpine:latest

VOLUME /var/www/web

WORKDIR /var/www/web

COPY docker-entrypoint.sh /usr/local/bin/

ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["php-fpm"]
