FROM debian:buster

RUN apt-get -y update && apt-get -y upgrade
RUN apt-get install -y nginx openssl
RUN mkdir -p /usr/nginx/logs
EXPOSE 443
COPY ./conf/nginx.conf /etc/nginx/.
RUN openssl req -x509 -nodes -days 365 -newkey rsa:4096 -keyout /etc/ssl/private/nginx.key -out /etc/ssl/certs/nginx.crt -subj "/C=FR/ST=Charente/L=Angouleme/O=42/CN=kle-guen.42.fr";

CMD ["nginx", "-g", "daemon off;"]
