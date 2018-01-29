	   LDA 20F0
	   MOV H,A
	   MVI D,00
	   MVI E,01
	   MVI A,00
	   LXI B,20F1

ZONE:	   STAX B
	   MVI A,00
	   ADD D
	   ADD E
	   MOV D,E
	   MOV E,A
	   INX B
	   DCR H
	   JNZ ZONE
	   RST 1
