# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: hkim2 <hkim2@student.42seoul.kr>           +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/05/19 17:24:17 by hkim2             #+#    #+#              #
#    Updated: 2021/05/27 18:25:18 by hkim2            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a
CC = gcc
CFLAGS = -Wall -Wextra -Werror
AR = ar rcs
RM = rm -f

FUNC = ft_strlen\
       ft_memset\
       ft_bzero\
       ft_strlcat\
       ft_strlcpy\
       ft_strchr\
	   ft_memcpy\
	   ft_memccpy\
	   ft_memmove\
	   ft_memchr\
	   ft_strrchr\
	   ft_strnstr\
	   ft_strncmp\
	   ft_atoi\
	   ft_isalpha\
	   ft_isdigit\
	   ft_isalnum\
	   ft_isascii\
	   ft_isprint\
	   ft_toupper\
	   ft_tolower\
	   ft_calloc

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
