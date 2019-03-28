;<fill up memory location alternately>

LXI  H, 8100H
MVI  C, 80H
MVI  B, 65H
MVI  D, 0A6H

loop: MOV  M, B
INX  H
INR  B
MOV  M, D
INX  H
INR  D
DCR  C
JNZ  loop
RST 1