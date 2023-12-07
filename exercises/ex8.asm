; Your goal here is to create a loop that counts down from 10 to 0. You should also fill the
; memory addresses from $80 to $8A with values from 0 to A.

; $80 $81 $82 $83 $84 $85 $86 $87 $88 $89 $8A
;  0   1   2   3   4   5   6   7   8   9   A

    processor 6502
    seg code
    org $F000

Start:
    ldy #10 ; Initialize the Y register with the decimal value 10
Loop:
    ; Transfer Y to A
    ; Store the value in A inside memory position $80+Y
    ; Decrement Y
    ; Branch back to "Loop" until we are done



    jmp Start

    org $FFFC
    .word Start
    .word Start