LDA     ; load the A register with value specified
LDX
LDY

STA     ; stores value in reg A into memory location specified
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

# ADDRESSING MODES

LDA #80     ; Immediate Mode
            ; loads A reg with literal decimal value 80
            ; opcode A9

LDA $80     ; Absolute (Zero Page) Mode
            ; loads A reg with whatever value is inside memory address 80
            ; opcode A5

LDA #$80    ; loads A reg with literal hexadecimal value 80 (==128 decimal)

