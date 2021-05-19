NAME = libft.a
CC = gcc
CFLAGS = -Wall -Wextra -Werror
AR = ar
ARFLAGS = rcs

FUNC = ft_strlen

SRCS = $(addsuffix .c, $(FUNC))

OBJS = $(SRCS:.c=.o)

all : $(NAME)
	$(AR) $(ARFLAGS) $@ $?

