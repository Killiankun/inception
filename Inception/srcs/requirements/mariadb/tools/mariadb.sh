#!/bin/sh

service mysql start && mysql -e "CREATE DATABASE IF NOT EXISTS ${DB_NAME};" \
&& mysql -e "GRANT ALL PRIVILEGES ON ${DB_NAME}.* TO '${DB_USER}'@'%' IDENTIFIED BY '${DB_PASSWORD}';" \
&& mysql -e "SET PASSWORD FOR '${DB_USER}'@'%'=PASSWORD('${DB_PASSWORD}');" \
&& mysql -e "FLUSH PRIVILEGES;"
mysqld --bind-address=0.0.0.0

#exec "$@"
