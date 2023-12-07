; Your goal in this exercise is to create a simple loop that goes from 1 to 10. If possible, try
; using the CMP instruction. This instruction that can be used to compare the value of
; the accumulator with a certain literal number. Once the comparison is done, the
; processor flags will be set (zero if the compared values are equal, non-zero if different).

    processor 6502
    seg code
    org $F000

Start:
    lda #1 ; Initialize the A register with the decimal value 1
Loop:
    ; Increment A
    ; Compare the value in A with the decimal value 10
    ; Branch back to loop if the comparison was not equals (to zero)





    jmp Start

    org $FFFC
    .word Start
    .word Start