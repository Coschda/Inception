# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mdoumi <mdoumi@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/06/06 11:53:54 by mdoumi            #+#    #+#              #
#    Updated: 2024/06/29 11:03:13 by mdoumi           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

all:
	mkdir -p /home/mdoumi/data/mariadb
	mkdir -p /home/mdoumi/data/wordpress
	docker compose -f ./srcs/docker-compose.yml up -d --build

down:
	docker compose -f ./srcs/docker-compose.yml down

fclean: down
	rm -rf /home/mdoumi/data/mariadb
	rm -rf /home/mdoumi/data/wordpress
	docker system prune -f
	docker image prune -af
	docker volume rm srcs_wordpress srcs_mariadb