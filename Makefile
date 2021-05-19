# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: hkim2 <hkim2@student.42seoul.kr>           +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/05/19 17:24:17 by hkim2             #+#    #+#              #
#    Updated: 2021/05/19 17:55:45 by hkim2            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a
CC = gcc
CFLAGS = -Wall -Wextra -Werror
AR = ar rcs
RM = rm -f

FUNC = ft_strlen\
       ft_strdup

SRCS = $(addsuffix .c, $(FUNC))

OBJS = $(addsuffix .o, $(FUNC))

.c.o: $(SRCS)
	$(CC) $(CFLAGS) -c -o $@ $<

$(NAME) : $(OBJS)
	$(AR) $@ $^

all : $(NAME)

clean:
	$(RM) $(OBJS)

fclean:
	$(RM) $(NAME)

re: clean all
