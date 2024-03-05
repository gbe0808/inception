up :
	mkdir -p /home/sunwsong/data/wpvol
	mkdir -p /home/sunwsong/data/dbvol
	cd srcs && docker compose up -d

down :
	cd srcs && docker compose down

clean	:
	cd srcs && docker compose down --rmi all -v --remove-orphans

fclean: clean
	rm -rf /home/sunwsong/data
	docker system prune --volumes --all --force

re	: clean up
