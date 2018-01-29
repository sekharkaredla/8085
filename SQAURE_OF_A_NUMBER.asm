	   LXI H,4000
	   MOV C,M
	   MVI A,00

ZONE:	   ADD M
	   DCR C
	   JNZ ZONE
	   STA 5000
	   RST 1
