DOCKER_COMPOSE_DEV = sudo docker compose -f docker/environments/docker-compose.dev.yml

.PHONY: dev clean deploy

# Local DNS
hosts:
	sudo nano /etc/hosts

dev:
	$(DOCKER_COMPOSE_DEV) up --build -d && cd tailwind4 && npm run watch

clean:
	$(DOCKER_COMPOSE_DEV) down --rmi all --volumes --remove-orphans

open:
	open http://localhost

open-mail:
	open http://localhost:8025

open-adminer:
	open http://localhost:8081

# Databas-kommandon
migrate:
	$(DOCKER_COMPOSE_DEV) run --rm dbmate up

migrate-rollback:
	$(DOCKER_COMPOSE_DEV) run --rm dbmate rollback

migrate-new:
	@if [ -z "$(name)" ]; then \
		echo "Error: Please provide a name for the migration"; \
		exit 1; \
	fi
	$(DOCKER_COMPOSE_DEV) run --rm dbmate --migrations-dir "../docker/db/migrations" new $(name)
