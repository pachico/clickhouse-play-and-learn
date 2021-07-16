.PHONY: help

help:
	@grep -E '^[a-zA-Z1-9_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

up: ## Starts all the containers required to develop this project
	docker-compose up -d

down: ## Shuts down all the containers and removes their volume
	docker-compose down -v --remove-orphans

clickhouse: ## Log into one ClickHouse instance
	docker-compose exec clickhouse_1 clickhouse-client -u default --password pass

mariadb: ## Log into MariaDB
	docker-compose exec mariadb bash -c 'mysql -uroot -ppass'