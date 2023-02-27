CC = gcc
DEBUG = -g

PROG = snake

all: $(PROG) main.o

$(PROG): $(PROG).o main.o
	$(CC) $(CFLAGS) -o $@ $^
	chmod a+rx,g-w $@

main.o: main.c $(PROG).h
	$(CC) $(CFLAGS) -c $<

$(PROG).o: $(PROG).c $(PROG).h makefile
	$(CC) $(CFLAGS) -c $<

.PHONY: clean

clean:
	rm -f psush *.o *~ \#*

