# **************************************************************************** #
#                                                           LE - /             #
#                                                               /              #
#    Makefile                                         .::    .:/ .      .::    #
#                                                  +:+:+   +:    +:  +:+:+     #
#    By: quruiz <quruiz@student.le-101.fr>          +:+   +:    +:    +:+      #
#                                                  #+#   #+    #+    #+#       #
#    Created: 2018/01/18 12:41:18 by quruiz       #+#   ##    ##    #+#        #
#    Updated: 2018/02/24 20:52:55 by quruiz      ###    #+. /#+    ###.fr      #
#                                                          /                   #
#                                                         /                    #
# **************************************************************************** #

NAME = libft.a
FLAG = -Werror -Wall -Wextra
SRC = $(shell find . -type f -name "*.c")
OBJ = $(SRC:.c=.o)
HEADER = libft.h

all: $(NAME)

%.o: %.c
		@gcc $(FLAG) -c $^ -o $@ -I $(HEADER)

$(NAME): $(OBJ)
		@ar rc $(NAME) $(OBJ) $@ $^
		@ranlib $(NAME)

clean:
		@rm -f $(OBJ)

fclean: clean
		@rm -f $(NAME)

re: fclean all
