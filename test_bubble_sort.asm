	   LXI H,4000
	   MOV C,M
	   DCR C

REPEAT:	   MOV D,C
	   LXI H,4001

ZONE:	   MOV A,M
	   INX H
	   CMP M
	   JC TEST
	   MOV B,M
	   MOV M,A
	   DCX H
	   MOV M,B
	   INX H

TEST:	   DCR D
	   JNZ ZONE
	   DCR C
	   JNZ REPEAT
	   RST 1
