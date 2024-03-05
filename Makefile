up :
	mkdir -p /home/sunwsong/data/wpvol
	mkdir -p /home/sunwsong/data/dbvol
	cd srcs && docker compose up -d

down :
	cd srcs && docker compose down

clean	:
	cd srcs && docker compose down --rmi all -v --remove-orphans

fclean	:
#	docker stop -t 1 $(docker ps -q)
	cd srcs && docker compose down --rmi all -v --remove-orphans
	rm -rf /home/sunwsong/data/wpvol
	rm -rf /home/sunwsong/data/dbvol

re	: clean up