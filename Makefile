# **************************************************************************** #
#                                                           LE - /             #
#                                                               /              #
#    Makefile                                         .::    .:/ .      .::    #
#                                                  +:+:+   +:    +:  +:+:+     #
#    By: quruiz <quruiz@student.le-101.fr>          +:+   +:    +:    +:+      #
#                                                  #+#   #+    #+    #+#       #
#    Created: 2018/02/13 11:53:40 by quruiz       #+#   ##    ##    #+#        #
#    Updated: 2018/03/26 20:12:04 by quruiz      ###    #+. /#+    ###.fr      #
#                                                          /                   #
#                                                         /                    #
# **************************************************************************** #

NAME = libftprintf.a
INCLUDE = ft_printf.h
PATH_SRC = ./
PATH_LIBFT = ./libft
OBJ = $(SRC:.c=.o)
SRC = ft_dispatch.c ft_parser.c ft_printf.c ft_printf_d.c ft_parse.c \
		ft_printf_d_justify.c ft_printf_c.c ft_utils.c ft_printf_c.c \
		ft_printf_s.c ft_printf_x.c ft_printf_o.c ft_printf_o_justify.c \
		ft_printf_x_justify.c ft_printf_p.c

FLAGS = -Wall -Wextra -Werror

all: $(NAME)

$(NAME): makelibft $(OBJ)
	@ar rcs $(NAME) $(OBJ) libft/libft.a
	@ar rcs $(NAME) libft/*.o

%.o: $(PATH_SRC)%.c $(INCLUDE)
	@gcc $(FLAGS) -I $(INCLUDE) -c $< -o $@

makelibft:
	@make -C $(PATH_LIBFT)

clean:
	@rm -f $(OBJ)
	@make -C $(PATH_LIBFT) clean

fclean: clean
	@rm -f $(NAME)
	@make -C $(PATH_LIBFT) fclean

re: fclean all