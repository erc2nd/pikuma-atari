; This exercise covers the increment and decrement using zero-page addressing mode.
; The zero-page addressing mode helps us directly increment and decrement values
; inside memory positions. The “zero page” in the 6502 are addresses between 0 and 255.
; These addresses are special for the 6502 processor because we can store them using
; only 1 byte (8 bits), which also means they can be performed relatively fast by the CPU.

    processor 6502
    seg code
    org $F000

Start:
    ; Load the A register with the decimal value 10
    ; Store the value from A into memory position $80

    ; Increment the value inside a (zero page) memory position $80
    ; Decrement the value inside a (zero page) memory position $80




    jmp Start

    org $FFFC
    .word Start
    .word Start