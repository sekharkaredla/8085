// move data present in 2000 - 2005 to 20C0-20C5
	   MVI C,06
	   LXI H,2000
	   LXI D,20C0

ZONE:	
MOV A,M
STAX D
INX H
INX D
DCR C
JNZ zone
RST 1