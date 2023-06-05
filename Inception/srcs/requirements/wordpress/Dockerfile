FROM debian:buster

RUN apt-get -y update && apt-get -y upgrade

RUN apt-get install -y php7.3 php-fpm php-mysqli mariadb-client curl

EXPOSE 9000

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && chmod +x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp && wp cli update

RUN mkdir -p /run/php/
RUN mkdir -p /var/www/html

COPY ./conf/www.conf /etc/php/7.3/fpm/pool.d/
COPY ./tools/wordpress.sh ./
RUN chmod 777 ./wordpress.sh


ENTRYPOINT ["./wordpress.sh"]
