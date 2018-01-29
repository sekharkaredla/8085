;SUM OF 8bit elements array
MVI A,00H
LXI H,2000H    ;count(no of elements) in 2000 address
MOV C,M
zone:INX H     ;from 2001 data is there
ADD M
MOV B,A
DCR C
JNZ zone
STA 20C0H
RST 1
