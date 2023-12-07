; This exercise is about adding and subtracting values. Adding and subtracting are math
; operations that are done by the processor ALU (arithmetic-logic-unit). Since the ALU
; can only manipulate values from the (A)ccumulator, all these additions and subtractions
; must be performed with the values in the A register.

    processor 6502
    seg code
    org $F000

Start:
    lda #100        ; Load the A register with the literal decimal value 100

    clc             ; always clear the carry flag before calling ADC
    adc #5          ; Add the decimal value 5 to the accumulator
    
    sec             ; always set the carry flag before calling SBC
    sbc #10         ; Subtract the decimal value 10 from the accumulator
    ; Register A should now contain the decimal 95 (or $5F in hexadecimal)

    org $FFFC
    .word Start
    .word Start