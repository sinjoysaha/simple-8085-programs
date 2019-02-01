
;<Transfer block using M (Memory Pointer)>
lxi  h, 2000h
lxi  d, 2010h
mvi  c, 0ah

next: mov  a, m
stax d
inx  h
inx  d
dcr  c
jnz  next

hlt