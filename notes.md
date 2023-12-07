LDA     ; load the A register
LDX
LDY

STA     ; store the A register
STX
STY

ADC     ; add to accumulator (w/ carry)
SBC     ; sub from accumulator (w/ carry)

CLC     ; clears carry flag, usually performed before addition
SEC     ; sets carry flag, usually performed before subtraction

INC     ; increment memory position by one
INX
INY

DEC     ; decrement memory position by one
DEX
DEY

JMP     ; 

BCC     ; branch on carry clear             C == 0
BCS     ;           carry set               C == 1
BEQ     ;           equal to zero           Z == 1
BNE     ;           not equal to zero       Z == 0
BMI     ;           minus                   N == 1
BPL     ;           plus                    N == 0
BVC     ;           overflow clear          V == 0
BVS     ;           overflow set            V == 1

# SIMPLE LOOP
    LDY #100    ; y=100
Loop:           ; "alias" for a position in code
    DEY         ; y--
    BNE Loop    ; repeat until y==0

