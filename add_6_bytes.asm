
;<Add 6 bytes of data>

xra  a
mov  b, a
lxi  h, 8000h
mvi  c, 06h

next: add  m
jnc  skip
inr  b
skip: inx  h
dcr  c
jnz  next

lxi  h, 8010h
mov  m, a
inx  h
mov  m, b

hlt