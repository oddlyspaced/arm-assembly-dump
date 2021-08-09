@
@ Example of ADD instruction
@ This will return 254 in $? which is the two's complement of -2 in 1 byte
@

.global _start

@ Multiply 2 by -1 by using MVN and then add 1
_start:
	MVN	R0,	#2
	ADD	R0,	#1
	@ Setup params to exit and call linux to do it
	@ R0 is return code and is what we calculate above
	MOV	R7,	#1
	SVC	0
