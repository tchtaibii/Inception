all: add_v up 

add_host:
	@chmod 777 /etc/hosts
	@echo "127.0.1.1       tchtaibi.42.fr" >> /etc/hosts
	@tput setaf 2; echo "'tchtaibi.42.fr' ✅"

stop :
	@cd ./srcs/ ; docker-compose -f ./docker-compose.yml stop

up:
	@tput setaf 2; echo "DOCKER CONTAINERS UP ✅"
	@tput setaf 2; echo "🕐 Please wait..."
	@cd ./srcs/ ; docker-compose -f ./docker-compose.yml up --build

down :
	@docker-compose -f ./srcs/docker-compose.yml down

clean:
	@docker stop $(docker ps -qa);  docker system prune -af ; docker volume rm  -f srcs_mariadb srcs_wordpress; \
	docker rm $(docker ps -qa) ; docker rmi -f $(docker images -qa) ; docker volume rm $(docker volume ls -q); \
	docker network rm $(docker network ls -q) 2>/dev/null
	@tput setaf 1; echo "CLEAN COMPLET ❌"

fclean:  delete_v clean

add_v:
	
	@mkdir -p /home/tchtaibi/data/db /home/tchtaibi/data/wordpress
	#mkdir -p ./srcs/tools/volume/db ./srcs/tools/volume/wordpress
	@tput setaf 2; echo "Dir volumes are created ✅"

delete_v:
	@sudo rm -rf /home/tchtaibi/data/db /home/tchtaibi/data/wordpress
	#rm -rf ./srcs/tools/volume/wordpress ./srcs/tools/volume/db
	@tput setaf 1; echo "Dir volumes are deleted ❌"