PATH_WP = /home/$(shell whoami)/data/wordpress
PATH_DB = /home/$(shell whoami)/data/mariadb

all:
	@mkdir -p $(PATH_WP)
	@mkdir -p $(PATH_DB)
	docker compose -f srcs/docker-compose.yml up -d --build

down:
	docker compose -f srcs/docker-compose.yml down

clean: down
	@docker system prune -a --force
	@docker volume prune --force

fclean: clean
	sudo rm -rf $(PATH_WP) $(PATH_DB)
	@docker volume rm $$(docker volume ls -q) 2>/dev/null || true

re: fclean all

.PHONY: all down clean fclean re
