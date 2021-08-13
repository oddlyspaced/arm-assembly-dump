@
@ Example of 64-bit addition with the ADD/ADC instruction
@

.global _start @ Starting address
_start:	MOV	R2,	#0x00000003
	MOV	R3,	#0xFFFFFFFF @ assembler will change this statement to MVN

	MOV	R4,	#0x00000005
	MOV 	R5,	#0x00000001

	ADDS	R1,	R3,	R5
	ADC	R0,	R2,	R4

	MOV	R7,	#1
	SVC	0
