hirom
!base = $C00000

; $C9C8B7 → $C9C917
; Boss of great trench

org $C9C8B7

db $3A                          ;Player pose: face down, surprised
db $0C                          ;<Unknown>
db $06                          ;Player Bounce in Place
db $03                          ;Player Move Down
db $0B                          ;<Unknown>
db $10                          ;Player pose: face up, left hand forward
;db $70                          ;Very short pause
;db $C8, $57, $07                ;Display Message/Text/Dialogue 57 07
;db $73                          ;Long pause
db $B5, $96                     ;Play Sound Effect Evil disappears
db $83, $09                     ;Sprite 083 do event: Show
;db $71                          ;Short pause
;db $C8, $58, $87                ;Display Message/Text/Dialogue 58 87
db $B5, $96                     ;Play Sound Effect Evil disappears
db $84, $09                     ;Sprite 084 do event: Show
;db $71                          ;Short pause
;db $C8, $59, $87                ;Display Message/Text/Dialogue 59 87
db $B5, $96                     ;Play Sound Effect Evil disappears
db $85, $09                     ;Sprite 085 do event: Show
;db $71                          ;Short pause
;db $C8, $5A, $87                ;Display Message/Text/Dialogue 5A 87
;db $70                          ;Very short pause
db $C7, $06                     ;Play next 06 bytes simultaneously
db $83, $03                     ;Sprite 083 do event: Move Down
db $84, $03                     ;Sprite 084 do event: Move Down
db $85, $03                     ;Sprite 085 do event: Move Down
;db $C8, $5B, $07                ;Display Message/Text/Dialogue 5B 07
db $83, $0A                     ;Sprite 083 do event: Hide
db $84, $0A                     ;Sprite 084 do event: Hide
db $85, $0A                     ;Sprite 085 do event: Hide
db $BD, $32, $FF                ;Start Event Battle 32
;db $72                          ;Medium pause
db $01                          ;Player Move Up
db $01                          ;Player Move Up
db $26                          ;Player pose: face up, right hand raised out
;db $71                          ;Short pause
db $82, $0A                     ;Sprite 082 do event: Hide
;db $71                          ;Short pause
db $C8, $54, $07                ;Display Message/Text/Dialogue 54 07
db $71                          ;Short pause
db $14                          ;Player pose: face down, left hand forward
;db $C8, $55, $07                ;Display Message/Text/Dialogue 55 07
;db $73                          ;Long pause
db $20                          ;Player pose: face down, left hand raised out
db $B4, $29                     ;Play Background Music Fanfare 1 (short)
db $C8, $56, $07                ;Display Message/Text/Dialogue 56 07
db $E4, $B4                     ;Unknown
db $24                          ;Player pose: face down, right hand raised in
db $AC, $45                     ;Add Magic Meteo
db $A2, $91                     ;Set Event Flag 091
db $A2, $0E                     ;Set Event Flag 00E
db $A4, $CB                     ;Set Event Flag 1CB
db $CB, $20, $00                ;Clear Flag 2/3/4/5/20 00
db $CB, $5C, $02                ;Clear Flag 2/3/4/5/5C 02
db $FF                          ;End Event

padbyte $00
pad $C9C917