	   LXI D,4000

ZONE:	   INX D
	   LXI H,4000
	   MOV C,M
	   MOV B,M
	   DCR B
	   INX H

TYPE:	   LDAX D
	   CMP M
	   JZ ZONE
	   JP REST
	   JMP TEST

REST:	   MVI A,00
	ADD M
	   MOV M,D
	   STAX D

TEST:	   INX H
	   DCR B
	   JNZ TYPE
	   RST 1
