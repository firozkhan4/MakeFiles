.SILENT:

CC = gcc
CFLAGS = -Wall -Wextra -Werror -Wpedantic -std=c99 -g

SRC = $(wildcard src/*.c)
OBJ = $(SRC:.c=.o)

MAIN_FILE = main

all: build

build: $(OBJ)
	mkdir -p bin
	$(CC) $(CFLAGS) -o bin/$(MAIN_FILE) $^

run: build
	./bin/$(notdir $(CURDIR))

clean:
	rm -f bin/$(MAIN_FILE)
