hirom
!base = $C00000

; Patches for:
; Always run
; Always Blue Mage learning passive
; Always passages

; Always run
; Original value: $06
org $C01248
db $00

; Learning/Passages
; Original values: $A9, $10, $EA

org $C24C87
db $B9, $20, $20