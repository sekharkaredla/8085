	   LXI H,4000
	   MOV C,M
	   DCR C
	   MOV A,M

ZONE:	   CALL TEST
	   DCR C
	   JNZ ZONE
// MOV A,D
	   STA 5000
	   RST 1

TEST:	   MOV D,A
	   MVI A,00
	   MOV B,C

TYPE:	   ADD D
	   DCR B
	   JNZ TYPE
	   RET
