LXI H 8000h     ; H-L <- 8000
LXI D 9000h     ; D-E <- 9000
MVI B 00h       ; B <- 00
MOV C M         ; C <- M
5: INX H        ; H-L <- H-L + 01 = 8001
MOV A M         ; A <- M
ANI 01h         ; Bitwise AND of A with 01
JNZ 10          ; Jumps to line 5694
MOV A M         ; A <- M
STAX D          ; D <- A
INX D           ; D-E <- D-E+01
INR B           ; B <- B+1
10: DCR C       ; C<- C-1
JNZ 5           ; Jumps to line 5689
MOV A B         ; A <- B
STA 5000h       ; 5000 <- A
HLT             ; End of Program
