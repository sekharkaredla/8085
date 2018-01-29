	   LXI SP,5000
	   LXI H,4000
	   LXI B,4004
	   MVI D,04

ZONE:	   LDAX B
	   ADD M
	   STAX B
	   INX B
	   INX H
	   DCR D
	   JNZ ZONE
	   RST 1
