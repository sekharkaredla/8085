// 16 bytes of array data transfer from one place to another
	   MVI H,05
	   LXI B,20D1
	   LXI D,20E1

ZONE:	   LDAX B
	   STAX D
	   INX B
	   INX D
	   DCR H
	   JNZ ZONE
	   RST 1
