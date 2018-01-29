mvi c,00
lda 20f0
stc 
cmc
rar
jnc skip
inr c
skip: mov a,c
sta 20f1
rst 1
