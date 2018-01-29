	   LDA 20F0
	   MVI B,00
	   MVI C,08
	   STC
	   CMC

ZONE:	   RAR
	   JNC TYPE
	   INR B

TYPE:	   DCR C
	   JNZ ZONE
	   MOV A,B
	   STA 20F1
	   RST 1
