# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: feazeved <feazeved@student.42porto.com>    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2025/04/06 02:10:17 by feazeved          #+#    #+#              #
#    Updated: 2025/04/29 23:50:50 by feazeved         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC = cc
NAME = libft.a
CFLAGS = -Wall -Wextra -Werror -I.

SRC = ft_isalpha.c ft_isdigit.c ft_isalnum.c ft_isascii.c ft_isprint.c \
      ft_strlen.c ft_strlcpy.c ft_strlcat.c ft_strchr.c ft_strrchr.c \
      ft_memmove.c ft_toupper.c ft_tolower.c ft_memcpy.c ft_bzero.c \
      ft_memset.c ft_strncmp.c ft_memchr.c ft_memcmp.c ft_strnstr.c \
      ft_calloc.c ft_strdup.c ft_putchar_fd.c ft_putstr_fd.c ft_strjoin.c \
      ft_putendl_fd.c ft_putnbr_fd.c ft_atoi.c ft_split.c ft_itoa.c \
      ft_substr.c ft_strmapi.c ft_striteri.c ft_strtrim.c

BONUS = ft_lstsize.c ft_lstadd_front.c ft_lstnew.c ft_lstlast.c\
      ft_lstadd_back.c ft_lstdelone.c ft_lstclear.c ft_lstiter.c \
      ft_lstmap.c

OBJS = $(SRC:.c=.o)
BOBJS = $(BONUS:.c=.o)

all: $(NAME)


$(NAME): $(OBJS)
	ar rcs $(NAME) $(OBJS)


clean:
	rm -f $(OBJS) $(BOBJS)
	rm -f .bonus


fclean: clean
	rm -f $(NAME)


re: fclean all


%.o:%.c
	$(CC) $(CFLAGS) -c $< -o $@



bonus: $(OBJS) $(BOBJS)
	ar rcs $(NAME) $(OBJS) $(BOBJS)
	touch .bonus

.PHONY: all clean fclean re bonus
