NAME = inception

all	:	$(NAME)

$(NAME) : 
	cd srcs && docker compose up -d

clean	:
	docker stop $$(docker ps -aq)
	docker rm -f $$(docker ps -aq)

fclean	:	clean
	docker image rm -f $$(docker images -q)
#	docker volume rm -f $$(docker volume ls -q)
	docker network rm $$(docker network ls -q)

re	: fclean $(NAME)