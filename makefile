CC = gcc
CFLAGS = -Werror -Wall -ansi -pedantic -g
OBJ = LinkedList.o LinkedListTest.o
EXEC = list

$(EXEC) : $(OBJ)
	$(CC) $(OBJ) -o $(EXEC)

LinkedList.o : LinkedList.c LinkedList.h
	$(CC) $(CFLAGS) -c LinkedList.c

LinkedListTest.o : LinkedListTest.c LinkedList.h
	$(CC) $(CFLAGS) -c LinkedListTest.c

clean: 
	rm -f $(OBJ) $(EXEC) 
