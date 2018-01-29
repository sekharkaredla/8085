MVI A,00H	
   LXI H,4001
	   MOV C,M
	   DCX H
	   MOV D,M
	   MVI B,00
	   ADD D
	   CMP C
	   JC TYPE
	   MOV A,D

ZONE:	   INR B
	   SUB C
	   JC TEST
	   JZ TYPE
	   JNZ ZONE

TEST:	   DCR B

TYPE:	   MOV A,B
	   STA 5000
	   RST 1
	
// CMP C
// MOV A,D
// JZ TYPE
// INR B
