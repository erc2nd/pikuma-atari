    processor 6502  ; informs assembler of processor used

    seg code        ; "starting a segment of code here"
    org $F000       ; Define the code origin at $F000

Start:
    sei             ; disable interrupts
    cld             ; disable the BCD deimal math mode
    ldx #$FF        ; loads X register with #$FF
    txs             ; transfer X register to Stack pointer

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Clear the Page Zero region ($00 to $FF)                       ;
; i.e. the entire RAM and TIA registers                         ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

    lda #0          ; A = 0
    ldx #$FF        ; X = #$FF

MemLoop:
    sta $0,X        ; store val of A reg in mem addr $0+X
    dex             ; x--
    bne MemLoop     ; loop until x==0 (z-flag is set to 1)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Fill the ROM size to exactly 4KB; REQUIRED                    ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    org $FFFC       
    .word Start     ; Reset vector at $FFFC (where the program starts)
    .word Start     ; interrupt vector at $FFFE (unused in VCS)