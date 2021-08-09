asm: asm1.o asm2.o
	ld -o asm asm1.o asm2.o

asm1.o: asm1.s
	as -o asm1.o asm1.s

asm2.o: asm2.s
	as -o asm2.o asm2.s

clean:
	rm *.o asm
