.SILENT:

CC=gcc


SRC= $(wildcard src/*.c)

MAIN_FILE=main

all: build

build: $(OBJ)
	mkdir -p bin
	$(CC) -o bin/$(MAIN_FILE) $(SRC)

run: build
	bin/$(MAKE_FILE)

clean:
	rm -f bin/$(MAIN_FILE)
