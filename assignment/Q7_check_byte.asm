
;<Check byte in set>

LXI  H, 8500H
MVI  C, 08H
MVI  B, 00H

loop: MOV  A, M
CPI  0FFH
JNZ  skip
INR  B

skip: INX  H
DCR  C
JNZ  loop
LXI  H, 0FFFFH
MOV  M, B

RST 1