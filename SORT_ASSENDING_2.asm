	   LXI H,4000
	   MOV C,M
	   MOV B,M
	   INX H

TYPE:	   LDA 4000
	   MOV B,A
	lxi h,4001

ZONE:	   MOV A,M
	   INX H
	   CMP M
	   JC TEST
	   JZ TEST
	   MOV D,M   ;SWAP
	   MOV M,A
	   DCX H
	   MOV M,D
	   INX H

TEST:	   DCR B
	   JNZ ZONE
	   DCR C
	   JNZ TYPE
	   RST 1
