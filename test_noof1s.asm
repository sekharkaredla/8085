	   LDA 20F0
	   MVI B,08
	   MVI C,00
	   STC
	   CMC

L1:	   RAL
	   JNC L2
	   INR C

L2:	   DCR B
	   JNZ L1
	   MOV A,C
	   STA 20F1
	   RST 1
