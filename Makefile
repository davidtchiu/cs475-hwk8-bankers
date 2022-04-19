all: main.c banker.o vector.o
	gcc -Wall -o bankers main.c banker.o vector.o

banker.o: banker.h banker.c
	gcc -Wall -c banker.c

vector.o: vector.h vector.c
	gcc -Wall -c vector.c

clean:
	rm -f bankers *.o
