; This exercise covers the increment and decrement instructions of the 6502.

    processor 6502
    seg code
    org $F000

Start:
    lda #1          ; Load the A register with the decimal value 1
    ldx #2          ; Load the X register with the decimal value 2
    ldy #3          ; Load the Y register with the decimal value 3
    
    inx             ; Increment X
    iny             ; Increment Y

    clc             ; Increment A
    adc #1

    dex             ; Decrement X
    dey             ; Decrement Y
    
    sec             ; Decrement A
    sbc #1

    jmp Start

    org $FFFC
    .word Start
    .word Start