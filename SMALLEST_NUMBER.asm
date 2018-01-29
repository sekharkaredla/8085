	   LXI H,4000
	   MOV C,M
	   INX H
	   MOV A,M
	   DCR C

ZONE:	   INX H
	   CMP M
	   JC TYPE
	   MOV A,M

TYPE:	   DCR C
	   JNZ ZONE
	   STA 5000
	   RST 1
