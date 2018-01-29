	   LXI H,4000
	   MOV C,M
	   MOV B,M
	   INX H

TYPE:	   LDA 4000
	   MOV B,A
	   LXI H,4001

ZONE:	   MOV A,M
	   INX H
	   CMP M
	   JC TEST
	   JZ TEST
	   MOV D,M	// SWAP
	   MOV M,A
	   DCX H
	   MOV M,D
	   INX H

TEST:	   DCR B
	   JNZ ZONE
	   DCR C
	   JNZ TYPE
// ------------------------------------------------------------
	   LDA 4001
	   STA 5000
	   LDA 4000
	   MOV C,A
	   LXI H,4000

REPT:	   INX H
	   DCR C
	   JNZ REPT
	   MOV A,M
	   STA 5001
	   RST 1
