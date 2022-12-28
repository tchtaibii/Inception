all: add_v up 

add_host:
	@chmod 777 /etc/hosts
	@echo "127.0.1.1       tchtaibi.42.fr" >> /etc/hosts
	@tput setaf 2; echo "'tchtaibi.42.fr' ✅"

stop :
	@docker-compose -f ./srcs/docker-compose.yml stop

up:
	@tput setaf 2; echo "DOCKER CONTAINERS UP ✅"
	@tput setaf 2; echo "🕐 Please wait..."
	@docker-compose -f ./srcs/docker-compose.yml up --build

down :
	@docker-compose -f ./srcs/docker-compose.yml down
clean:
	@docker system prune -af
	@docker volume rm  -f srcs_mariadb srcs_wordpress
	@docker image prune -f
	@docker volume prune -f
	@docker images -a | grep "pattern" | awk '{print $3}' | xargs docker rmi
	@docker rm -f $(docker ps -aq)
	@docker rmi $(docker images -a -q)
	@tput setaf 1; echo "CLEAN COMPLET ❌"

fclean:  delete_v clean

add_v:
	@mkdir -p /home/tchtaibi/data/db /home/tchtaibi/data/wordpress
	#mkdir -p ./srcs/tools/volume/db ./srcs/tools/volume/wordpress
	@tput setaf 2; echo "Dir volumes are created ✅"

delete_v:
	@rm -rf /home/tchtaibi/data/db /home/tchtaibi/data/wordpress
	#rm -rf ./srcs/tools/volume/wordpress ./srcs/tools/volume/db
	@tput setaf 1; echo "Dir volumes are deleted ❌"