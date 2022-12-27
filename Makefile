all: add_v up 

add_host:
	@chmod 777 /etc/hosts
	@echo "127.0.1.1       tchtaibi.42.fr" >> /etc/hosts

restart:
	@cd srcs/ ; docker-compose -f ./docker-compose.yml restart

up:
	@tput setaf 2; echo "🕐 Please wait..."
	@cd srcs ; docker-compose -f ./docker-compose.yml up --build

down : clean
	@cd /srcs ;  docker-compose -f ./docker-compose.yml down
clean: 
	@docker system prune -af
	@docker volume rm  -f srcs_mariadb srcs_wordpress
	@docker image prune -f
	@docker volume prune -f
	@tput setaf 1; echo "CLEAN COMPLET ❌"

fclean:  delete_v clean

add_v:
	#mkdir -p /home/tchtaibi/data/db /home/tchtaibi/data/wordpress
	@mkdir -p srcs/tools/volume/db srcs/tools/volume/wordpress
	@tput setaf 2; echo "Dir volumes are created ✅"

delete_v:
	#rm -rf /home/tchtaibi/data/db /home/tchtaibi/data/wordpress
	cd srcs/tools/volume ; rm -rf wordpress db
	@tput setaf 1; echo "Dir volumes are deleted ❌"