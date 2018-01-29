	   LXI H,4000
	   MOV C,M
	   INX H

ZONE:	   ADD M
	   DCR C
	   JNZ ZONE
	   STA 5000
	   RST 1
