	   LXI H,4000
	   MOV C,M
	   MOV B,M
	   DCR B

ZONE:	   INX H
	   LXI D,4001

TYPE:	   MOV A,M
	   CMP D
	   JNZ ZONE

REST:	   MOV A,M
	   MOV M,D
	   MOV D,A
	   INX D
	   DCR B
	   JNZ TYPE
	   RST 1
