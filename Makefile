CC=gcc
FLAGS=-Wall -g

all: my_mat.a isort txtfind


mainsort.a:mainsort.o
	ar -rcs mainsort.a mainsort.o
maintxt.a:maintxt.o
	ar -rcs maintxt.a maintxt.o
isort:mainsort.o
	$(CC) $(FLAGS) -fPIC -o isort mainsort.o
txtfind:maintxt.o
	$(CC) $(FLAGS) -fPIC -o txtfind maintxt.o:



-fPIC

maintxt.o: main.c /////my_mat.h
	$(CC) $(FLAGS) -c maintxt.c
mainsort.o: main.c ///////// my_mat.h
	$(CC) $(FLAGS) -c mainsory.c

.PHONY:clean all
clean:
	rm -f *.o *.a isort txtfind