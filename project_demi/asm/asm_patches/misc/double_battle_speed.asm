hirom
!base = $C00000

org $C22075
JML DoubleSpeedHook

org $F00100
DoubleSpeedHook:


lda $3d75,x
CMP #$01
BEQ DecreaseOnce
dec $3d75,x
dec $3d75,x
lda $3d75,x
JMP FinishLine

DecreaseOnce:
dec $3d75,x
JMP FinishLine



;CMP #$FF
;BNE FinishLine
;LDA #$01
;sta $3d75,x

FinishLine:
lda $3d75,x
JML $c2207b