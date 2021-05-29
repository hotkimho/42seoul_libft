# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: hkim2 <hkim2@student.42seoul.kr>           +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/05/19 17:24:17 by hkim2             #+#    #+#              #
#    Updated: 2021/05/29 15:14:52 by hkim2            ###   ########.fr        #
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
	   ft_calloc\
	   ft_strdup\
	   ft_substr\
	   ft_strjoin\
	   ft_strtrim\
	   ft_split\
	   ft_itoa\
	   ft_strmapi\
	   ft_putchar_fd\
	   ft_putstr_fd\
	   ft_putendl_fd\
	   ft_putnbr_fd

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
