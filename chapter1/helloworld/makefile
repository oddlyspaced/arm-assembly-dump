asmtut: asmtut.o
	ld -o asmtut asmtut.o

asmtut.o: helloworld.s
	as -o asmtut.o helloworld.s

clean:
	rm *.o asmtut
