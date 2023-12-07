; This exercise covers the increment and decrement instructions of the 6502.

    processor 6502
    seg code
    org $F000

Start:
    ; Load the A register with the decimal value 1
    ; Load the X register with the decimal value 2
    ; Load the Y register with the decimal value 3
    ; Increment X
    ; Increment Y
    ; Increment A
    ; Decrement X
    ; Decrement Y
    ; Decrement A



    jmp Start

    org $FFFC
    .word Start
    .word Start