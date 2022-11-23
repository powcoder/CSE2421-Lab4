#Braeden J

all: compile lab4.zip clean

compile: lab4

lab4: main.o Queue1.c Queue2.c Stack1.c Stack2.c
	gcc -g -o $@ $^

lab4.zip: makefile *.c *.h readme
	zip lab4.zip makefile *.c *.h readme

# Compile the c file into an o file.
# You'll want to change this line for the lab.
%.o:%.c *.h
	gcc -ansi -pedantic -Wimplicit-function-declaration -Wreturn-type -g -c $< -o $@

#Remove all intermediate files.
clean:
	rm -rf *.o

#These two are shorthand because typing less characters is cool!:
z: lab4.zip

c: clean
