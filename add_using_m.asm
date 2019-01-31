
;<Add two numbers using M (Memory Pointer)>

mvi  c, 00h
lxi  h, 2000h
mov  a, m
inx  h
add  m
jnc  skip
inr  c
skip:  inx h
mov  m, a
inx  h
mov  m, c 
hlt
