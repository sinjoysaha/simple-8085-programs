
;<Add two numbers>
mvi c,00h
lda 2000h
mov b,a
lda 2001h
add b
jnc skip
inr c
skip: sta 2002h
sta 2002h
mov a,c
sta 2003h
hlt 