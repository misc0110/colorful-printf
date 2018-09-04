all: main.c colorprint.c
	gcc main.c colorprint.c -fsanitize=address -g -o test

