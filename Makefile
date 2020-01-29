##
## EPITECH PROJECT, 2019
## Generated with mms
## File description:
## Makefile
##

NRM		=	\e[0m
NRED	=	\e[31m
NGRN	=	\e[32m
NYEL	=	\e[33m
NCYN	=	\e[36m
BRED	=	\e[1;31m
BGRN	=	\e[1;32m
BYEL	=	\e[1;33m
BCYN	=	\e[1;36m

## CONFIGURATION

SRC		=	ramdom.c
BIN		=	peudo_ramdom
CMP		=	gcc
FLAGS	=	-g -Wall --extra

all: NAME clean

infos:
	@echo "$(NRM)Source..........: $(BCYN) $(SRC) $(NRM)"
	@echo "$(NRM)Binary..........: $(BCYN) $(BIN) $(NRM)"
	@echo "$(NRM)Compiler........: $(BCYN) $(CMP) $(NRM)"
	@echo "$(NRM)Flags...........: $(BCYN) $(FLAGS) $(NRM)"
NAME: infos
	@echo "$(NRM)Status..........: $(BGRN) Compiling $(NRM)"
	@echo "$(NRM)Status..........: $(BYEL) Starting logs $(NRM)"
	@$(CMP) -o $(BIN) $(SRC) $(FLAGS)
	@echo "$(NRM)Status..........: $(BYEL) Logs ended $(NRM)"
	@if [ -e "$(BIN)" ]; then echo "$(NRM)Status..........: $(BGRN) Compiled $(NRM)"; else echo "$(NRM)Status..........: $(BRED) Failed $(NRM)"; fi
clean:
	@echo "$(NRM)Status..........: $(BGRN) Cleanning $(NRM)"
	@find -name "*.o" -delete -o -name -delete
	@echo "$(NRM)Status..........: $(BGRN) Cleanned $(NRM)"
fclean:
	@echo "$(NRM)Status..........: $(BGRN) Cleanning $(NRM)"
	@rm -f $(BIN)
	@find -name "*.a" -delete -o -name -delete
	@echo "$(NRM)Status..........: $(BGRN) Cleanned $(NRM)"
re: fclean all
