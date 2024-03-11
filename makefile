#makefile for hello-world.asm
hello-world: hello-world.o
	gcc -o hello-world hello-world.o -no-pie
hello-world.o: hello-world.asm
	nasm -f elf64 -g -F dwarf hello-world.asm -l hello-world.lst