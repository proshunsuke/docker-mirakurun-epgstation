UID := $(shell id -u)
GID := $(shell id -g)

COMPOSE=env UID=${UID} GID=${GID} docker compose

setup/mirakurun:
	$(COMPOSE) run --rm -e SETUP=true mirakurun

start:
	$(COMPOSE) up -d

stop:
	$(COMPOSE) stop

down:
	$(COMPOSE) down

restart:
	$(COMPOSE) restart

ssh/epgstation:
	$(COMPOSE) exec epgstation /bin/sh

ssh/mirakurun:
	$(COMPOSE) exec mirakurun /bin/sh

db:
	$(COMPOSE) exec mysql mysql -h 127.0.0.1 -u epgstation -pepgstation epgstation

_delete/all:
	$(COMPOSE) down --rmi all --volumes --remove-orphans
