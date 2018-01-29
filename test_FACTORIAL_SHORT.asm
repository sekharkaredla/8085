	   LDA 20F0
	   MOV C,A
	   DCR C

L1:	   CALL MUL
	   DCR C
	   JNZ L1
	   STA 20F1
	   RST 1

MUL:	   MOV D,A
	   MVI A,00
	   MOV B,C

RADD:	   ADD D
	   DCR B
	   JNZ RADD
	   RET
