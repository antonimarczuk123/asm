#makefile for prntf.asm
prntf: prntf.o
	gcc -o prntf prntf.o -no-pie
prntf.o: prntf.asm
	nasm -f elf64 -g -F dwarf prntf.asm -l prntf.lst