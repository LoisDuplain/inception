SRCS	=	srcs/docker-compose.yml

all:	up

up:
	sudo mkdir -p /Users/loisduplain/Desktop/inception-volumes/lduplain/data/mariadb
	sudo mkdir -p /Users/loisduplain/Desktop/inception-volumes/lduplain/data/wordpress
	sudo docker-compose -f $(SRCS) up --build -d
down:
	sudo docker-compose -f $(SRCS) down

ps:
	sudo docker-compose -f $(SRCS) ps

top:
	sudo docker-compose -f $(SRCS) top
clean:
	sudo docker-compose -f $(SRCS) down --rmi all -v
fclean:
	sudo docker-compose -f $(SRCS) down --rmi all -v
	sudo rm -rf /Users/loisduplain/Desktop/inception-volumes/lduplain/data/

prune:	fclean
	sudo docker system prune -f --all --volumes

.PHONY:	all up down ps top clean fclean prune