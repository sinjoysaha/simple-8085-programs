
;<Eliminate blanks from string>

LXI  D, 8500H
LXI  H, 8500H
MVI  C, 0AH
XRA  A

loop: MOV A, M
CPI 00H
JZ  skip
STAX D
INX  D

skip: INX  H
DCR  C
JNZ  loop

RST 1