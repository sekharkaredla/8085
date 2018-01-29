	   LXI H,20F0
	   MOV D,M
	   MVI B,00
	   MVI C,01
	   MVI A,00
	   INX H

REPEAT:	   MOV M,A
	   MOV B,C
	   MOV C,A
	   MVI A,00
	   ADD B
	   ADD C
	   INX H
	   DCR D
	   JNZ REPEAT
	   RST 1
