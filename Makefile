
# default command, builds an executable called "newton".
# executable can be called with ./newton 49 4
EXEC=newton
comp=comparison
CC = gcc 
MAIN= main

all: EXEC


# link the object files into the executable.
# the -lm option is to tell the linker to include math libraries.
$(EXEC): $(MAIN).o $(EXEC).o $(comp).o
	$(CC) -o $@ $^ -lm

# compile the main.c file into the main.o object file.
$(M).o: $(MAIN).c  $(EXEC).h
	$(CC) -o $@ -c $<

# compile the newton.c file into the newton.o object file.
$(EXEC).o: $(EXEC).c $(EXEC).h
	$(CC) -o $@ -c $<

$(comp).o: $(comp)c $(comp).h
	$(CC) -o $@ -c $<
# remove the executable and intermediary object files.
clean:
	rm -rf $(EXEC) $(MAIN).o $(EXEC).o $(comp).o


