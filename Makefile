SRC= srcs

all: add_dirs up 

# add_host:
# 	echo "127.0.1.1       tchtaibi.42.fr" >> /etc/hosts


restart:
	@cd srcs/ ; docker compose -f ./docker-compose.yml restart

up:
	@tput setaf 2; echo "🕐 Please wait..."
	@cd srcs/ ; docker compose -f ./docker-compose.yml up -d --build
	@tput setaf 2; echo "Containers are working now ✅"
	@cd ..

down : srcs/volume
	@cd srcs/ ; docker compose -f ./docker-compose.yml down

clean: down delete_dirs
	@docker system prune -af
	@docker image prune -f
	@docker volume prune -f
	@docker stop $(docker ps -qa) ; docker rm -f $(docker ps -aq)
	@docker rmi -f $(docker images -aq)
	@docker volume rm  -f $(docker volume ls -q)
	@docker network rm $(docker network ls -q) 2>/dev/null
	@tput setaf 1; echo "CLEAN COMPLET ❌"

fclean: clean

add_dirs:
	@mkdir -p srcs/volume/db
	@mkdir -p srcs/volume/wordpress
	@tput setaf 2; echo "Dir volumes are created ✅"

delete_dirs: srcs/volume
	rm -rf srcs/volume
	@tput setaf 1; echo "Dir volumes are deleted ❌"