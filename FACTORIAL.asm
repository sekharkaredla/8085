	   LXI H,4000
	   MOV E,M
	   MOV C,M
	   DCR E

ZONE:	   INX H
	   MOV M,E
	   DCR E
	   JNZ ZONE
	   LXI H,4000

TYPE:	   MOV A,M
	   INX H
	   MOV E,M
	   MOV C,A
	   MVI A,00

TEST:	   ADD E
	   DCR C
	   JNZ TEST
	   MOV M,A
	   DCR E
	   JNZ TYPE
	   STA 5000
	   RST 1
