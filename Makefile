# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ide-vill <iris.devillars@gmail.com>        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/05 18:15:28 by ide-vill          #+#    #+#              #
#    Updated: 2015/03/05 18:15:33 by ide-vill         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

STATIC_LIB 	= libfts.a

SRC 		= 	ft_isdigit.s 	\
				ft_isascii.s 	\
				ft_isalnum.s 	\
				ft_isalpha.s 	\
				ft_isprint.s 	\
				ft_toupper.s 	\
				ft_tolower.s 	\
				ft_bzero.s 		\
				ft_puts.s 		\
				ft_strlen.s 	\
				ft_strcat.s


STATIC_OBJ	= $(patsubst %.s,$(STATIC_DIR)/%.o,$(SRC))
DEBUG_OBJ	= $(patsubst %.s,$(DEBUG_DIR)/%.o,$(SRC))

HEAD_DIR	= includes
SRC_DIR		= src
STATIC_DIR	= static
DEBUG_DIR	= debug

CC			= gcc
NASM		= ~/.brew/bin/nasm -f macho64

$(shell mkdir -p $(STATIC_DIR) $(DEBUG_DIR))

all: $(STATIC_LIB)

debug : $(DEBUG_LIB)

$(STATIC_LIB): $(STATIC_OBJ)
	ar rc $@ $(STATIC_OBJ)
	ranlib $@

$(DEBUG_LIB): $(DEBUG_OBJ)
	ar rc $@ $(DEBUG_OBJ)
	ranlib $@

$(STATIC_DIR)/%.o: $(SRC_DIR)/%.s
	$(NASM) -I $(HEAD_DIR) -o $@ $<

$(DEBUG_DIR)/%.o: $(SRC_DIR)/%.s
	$(NASM) -I $(HEAD_DIR) -o $@ $< -g

.PHONY: clean fclean re norme

clean:
	@rm -f $(STATIC_OBJ) $(DEBUG_OBJ)

fclean: clean
	@rm -f $(STATIC_LIB) $(DEBUG_LIB)

re: fclean
	make

reall: all
