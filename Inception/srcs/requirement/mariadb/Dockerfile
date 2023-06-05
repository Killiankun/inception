FROM debian:buster

RUN apt-get -y update && apt-get -y upgrade

COPY ./tools/mariadb.sh ./
RUN chmod 777 ./mariadb.sh

RUN apt-get -y install mariadb-server mariadb-client

RUN mkdir -p /var/run/mysqld
RUN chown -R mysql:mysql /var/run/mysqld
RUN chmod -R 777 var/run/mysqld 

EXPOSE 3306

ENTRYPOINT ["./mariadb.sh"]
