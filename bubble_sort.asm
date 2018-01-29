	   LXI H,4000
	   MOV C,M
	   DCR C

REPEAT:	   MOV D,C
	   LXI H,4001

LOOP:	   MOV A,M
	   INX H
	   CMP M
	   JC ZONE
	   MOV B,M
	   MOV M,A
	   DCX H
	   MOV M,B
	   INX H

ZONE:	   DCR D
	   JNZ LOOP
	   DCR C
	   JNZ REPEAT
	   RST 1
