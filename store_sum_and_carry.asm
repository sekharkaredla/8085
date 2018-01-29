;add numbers from 2000 to 2005 and store in 3000,store carry in 3001

STC          ;CY=1
CMC	;complement carry flag
MVI C,06H
MVI A,00H
MVI B,00H
LXI H,2000H
zone:
ADD M
JNC next
INR B
next:
INX H
DCR C
JNZ zone
STA 3000H
MOV A,B
STA 3001H
RST 1

