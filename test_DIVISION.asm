	   MVI A,00
	   LXI H,4000
	   MVI D,00
	   MOV B,M
	   INX H
	   MOV C,M
	   ADD B
	   CMP C
	   JC TYPE

ZONE:	   INR D
	   SUB C
	   JC DEC
	   JZ TYPE
	   JNZ ZONE

DEC:	   DCR D

TYPE:	   MOV A,D
	   STA 5000
	   RST 1
