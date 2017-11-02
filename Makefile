.SUFFIXES:

# specify C standard
STD=-std=c11
# specify C compiler
CC=gcc $(STD)
# specify compile flags
CFLAGS=-Wall -Wextra -pedantic 

all: hello

hello: hello.o 
	$(CC) $^ -o $@ 

hello.o: hello.c 
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	$(RM) hello.o hello

test: hello
	python ./test.py

.PHONY:	all clean test

