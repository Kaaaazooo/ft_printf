# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sabrugie <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/07/10 19:12:22 by sabrugie          #+#    #+#              #
#    Updated: 2020/02/01 15:17:47 by sabrugie         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a
CC = gcc
HEADER = includes
SRCS_P = srcs/
LIBFT_P = libft/
CFLAGS = -Wall -Werror -Wextra $(OPTION)
OPTION = -I $(HEADER)

SRCS =	$(SRCS_P)ft_printf.c $(SRCS_P)ft_printf_utils.c \
		$(SRCS_P)parse.c $(SRCS_P)conv_functions.c \
		$(SRCS_P)conv_functions2.c $(SRCS_P)flags_functions.c \
		$(SRCS_P)length_modifiers.c $(SRCS_P)num_functions.c \
		$(SRCS_P)double_functions.c $(SRCS_P)double_functions2.c \
		$(SRCS_P)double_functions3.c $(SRCS_P)double_functions4.c \

OBJS = $(SRCS:.c=.o)

all: $(NAME)

$(NAME): $(OBJS)
	make -C $(LIBFT_P) all
	cp $(LIBFT_P)/libft.a $(NAME)
	ar -rc $(NAME) $(OBJS)

clean:
	make -C $(LIBFT_P) clean
	rm -rf $(OBJS)

anc: all clean

fclean: clean
	rm -rf $(NAME)
	rm -rf $(LIBFT_P)/libft.a
re: fclean all
