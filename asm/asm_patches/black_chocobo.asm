hirom
!base = $C00000

;Remove part before black chocobo chase
org $C88D00

db $CD, $A5, $00		;Run event index 00A5
db $CD, $98, $03		;Run event index 0398
db $A2, $A8				;Set Event Flag 0A8
db $FF					;End Event

padbyte $00
pad $C88D0B

; From catching the chocobo to taking off for real
org $C94606

db $0A				;Player Hide
db $CD, $96, $03		;Run event index 0396
db $D0, $87, $49		;(Music) 87 49
db $B3, $0E			;Pause for 0E0 cycles
db $D0, $81, $00		;(Music) 81 00
db $CB, $FD, $01		;Clear Flag 2/3/4/5/FD 01
db $A4, $FE			;Set Event Flag 1FE
db $E3, $BF, $00, $AF, $11, $00	;Inter-map cutscene? BF 00 AF 11 00
db $0A				;Player Hide
db $A5, $FE			;Clear Event Flag 1FE
db $B4, $25			;Play Background Music What?
db $CD, $96, $03		;Run event index 0396
db $C6, $15			;Add job 15
db $C6, $00			;Add job Knight
db $B7, $02			;Add/Remove character 02
db $B7, $09			;Add/Remove character 09
db $B7, $0B			;Add/Remove character 0B
db $CA, $FD, $01		;Set Flag 2/3/4/5/FD 01
db $A2, $3A			;Set Event Flag 03A
db $FF				;End Event

padbyte $00
pad $C94774