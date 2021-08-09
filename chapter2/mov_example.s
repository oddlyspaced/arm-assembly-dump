@
@ Example(s) of MOV instruction
@

.global	_start	@ Starting address

@ Load R2 with 0x4F5D6E3A
_start:	MOV	R2,	#0x6E3A
	MOVT	R2,	#0x4F5D
	@ Move R2 into R1
	MOV	R1,	R2
	@ All Shift Versions of MOV
	MOV	R1,	R2,	LSL	#1
	MOV	R1,	R2,	LSR	#1
	MOV	R1,	R2,	ASR	#1
	MOV	R1,	R2,	ROR	#1
	MOV	R1,	R2,	RRX
	@ All Shift version but in Assembler Mnemonics
	LSL	R1,	R2,	#1
	LSR	R1,	R2,	#1
	ASR	R1,	R2,	#1
	ROR	R1,	R2,	#1
	RRX	R1,	R2
	@ 8 Bit Immediate and Shift
	MOV	R1,	#0xAB000000
	@ Error Instruction (Too big for #imm16)
@	MOV	R1,	#0xABCDEF11
	@ MVN Example
	MVN	R1,	#45
	@ Example of MOV which will be changed to MVN
	MOV	R1,	#0xFFFFFFFE
	@ Setup params to exit and call linux to do it
	MOV	R0,	#0
	MOV	R7,	#1
	SVC	0
