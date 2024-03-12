mov: mov.o
	gcc -o mov mov.o -no-pie
mov.o: mov.asm
	nasm -f elf64 -g -F dwarf mov.asm -l mov.lst