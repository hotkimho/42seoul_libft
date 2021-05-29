# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: hkim2 <hkim2@student.42seoul.kr>           +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/05/19 17:24:17 by hkim2             #+#    #+#              #
#    Updated: 2021/05/29 20:44:04 by hkim2            ###   ########.fr        #
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
	   ft_memcmp\
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

BONUS =	ft_lstnew\
		ft_lstadd_front\
		ft_lstsize\
		ft_lstlast\
		ft_lstadd_back\

SRCS = $(addsuffix .c, $(FUNC))
BONUS_SRCS = $(addsuffix .c, $(BONUS))
OBJS = $(addsuffix .o, $(FUNC))
BONUS_OBJS = $(addsuffix .o, $(BONUS))

.c.o: $(SRCS)
	$(CC) $(CFLAGS) -c -o $@ $<

$(NAME) : $(OBJS)
	$(AR) $@ $^

all : $(NAME)

bonus : $(BONUS_OBJS)
	$(AR) $(NAME) $^
clean:
	$(RM) $(OBJS)

fclean:
	$(RM) $(NAME)

re: clean all
