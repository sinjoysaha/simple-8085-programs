
;<Transfer block of 10 bytes>

lxi  b, 2000h ;start of source
lxi  d, 2010h ;start of destination
mvi  l, 0ah ;counter

next: ldax b
stax d
inx  b
inx  d
dcr  l
jnz  next

hlt