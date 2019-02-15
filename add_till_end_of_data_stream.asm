
;<Add till end of data stream>

mvi  c, 00h
mvi  b, 00h
lxi  h, 8050h

next: mov  a, m
cpi  00h
jz  loop
add  c
jnc  skip
inr  b

skip: mov  c, a
inx  h
jmp  next

loop: lxi  h, 8070h
mov  m, c
inx  h
mov  m, b
rst 1
