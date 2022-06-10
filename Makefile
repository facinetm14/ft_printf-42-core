# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: fakouyat <fakouyat@student.42wolfsburg.    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/06/10 14:56:58 by fakouyat          #+#    #+#              #
#    Updated: 2022/06/10 14:56:58 by fakouyat         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a

PATH_HELPERS = ./helpers/

HELPERS = $(PATH_HELPERS)ft_print_char.c\
		  $(PATH_HELPERS)ft_print_hex.c\
		  $(PATH_HELPERS)ft_print_int.c\
		  $(PATH_HELPERS)ft_print_ptr.c\
		  $(PATH_HELPERS)ft_print_str.c\
		  $(PATH_HELPERS)ft_print_unsigned.c\

FUNCTIONS = $(HELPERS) ft_printf.c

OBJECT_FILES = ${FUNCTIONS:.c=.o}

$(NAME) = all

CC = gcc

CFLAGS = -Wall -Wextra -Werror

all : $(NAME)

$(NAME) :
	$(CC) $(CFLAGS) -c $(FUNCTIONS)
	ar rcs $(NAME) ${OBJECT_FILES}

clean : 
	rm -rf ${OBJECT_FILES}

fclean : clean
	rm -rf $(NAME)

re : fclean all

.PHONY : all clean fclean re


		