# 1 "asmtut.S"
# 1 "<built-in>"
# 1 "<command-line>"
# 31 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 32 "<command-line>" 2
# 1 "asmtut.S"
.text

.global _start

_start:
   MOV R0, #65
   MOV R7, #1

SWI 0
