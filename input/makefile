#makefile for my-input.asm
my-input: my-input.o
	gcc -o my-input my-input.o -no-pie
my-input.o: my-input.asm
	nasm -f elf64 -g -F dwarf my-input.asm -l my-input.lst