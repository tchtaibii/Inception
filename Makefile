all: add_v up 

# add_host:
# 	echo "127.0.1.1       tchtaibi.42.fr" >> /etc/hosts


restart:
	@cd srcs/ ; docker compose -f ./docker-compose.yml restart

up:
	@tput setaf 2; echo "🕐 Please wait..."
	@cd srcs ; docker compose -f ./docker-compose.yml up --build
	@cd ..

down : clean 
	@cd /srcs ;  docker compose -f ./docker-compose.yml down
clean: 
	@docker system prune -af
	@docker volume rm  -f srcs_mariadb srcs_wordpress
	@docker image prune -f
	@docker volume prune -f
	@tput setaf 1; echo "CLEAN COMPLET ❌"

fclean:  delete_v clean

add_v:
	@mkdir -p srcs/volume/db
	@mkdir -p srcs/volume/wordpress
	# @chmod 777 srcs/volume/db srcs/volume/wordpress
	@tput setaf 2; echo "Dir volumes are created ✅"

delete_v: 
	cd srcs ; rm -rf volume
	@tput setaf 1; echo "Dir volumes are deleted ❌"