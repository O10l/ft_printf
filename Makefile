NAME = libftprintf.a
FLAG = -Wall -Wextra -Werror
SRC = $(shell find . -name "ft_*.c")

all: $(NAME)

$(NAME):
	@gcc $(FLAG) -c $(SRC)
	@ar rc $(NAME) *.o
	@echo "\033[92m $@ [OK!]\033[0m"
clean:
	@rm -f  *.o
	@echo "\033[31m rm .o files [KO!]\033[0m"
fclean: clean
	@rm -f $(NAME)
	@echo "\033[31m rm .a [KO!]\033[0m"

re: fclean all

.PHONY : all clean fclean re
