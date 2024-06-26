# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mdoumi <mdoumi@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/06/06 11:53:54 by mdoumi            #+#    #+#              #
#    Updated: 2024/06/26 15:49:03 by mdoumi           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = mariadb

all: build run

build:
	docker build -t $(NAME) srcs/requirements/$(NAME)

run:
	docker run -it $(NAME)
#	docker run -p 8080:443 -it $(NAME)

clean:

fclean: clean

re: fclean all