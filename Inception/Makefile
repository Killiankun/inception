FILE = ./srcs/docker-compose.yml

build:
	mkdir -p /home/kle-guen/data/mariadb
	mkdir -p /home/kle-guen/data/wordpress
	docker compose -f $(FILE) build

start:
	docker compose -f $(FILE)  up -d

stop:
	docker compose -f $(FILE) down

restart:
	docker compose -f $(FILE) restart

clean:
	docker compose -f $(FILE) down -v
	rm -rf /home/kle-guen/data/mariadb
	rm -rf /home/kle-guen/data/wordpress

fclean:
	docker system prune -af

re:
	rm -rf /home/kle-guen/data/mariadb
	rm -rf /home/kle-guen/data/wordpress
	mkdir -p /home/kle-guen/data/mariadb
	mkdir -p /home/kle-guen/data/wordpress
	docker compose -f $(FILE) down && docker system prune -af && docker compose -f $(FILE) up -d
