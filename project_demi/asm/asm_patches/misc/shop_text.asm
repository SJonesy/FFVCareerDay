hirom

; text for abilities/crystals in shops
org $E79A00

padbyte $FF
pad $E79EFF
; all abilities pre-appended with $A1 for "!" 
; should make it clear they're abilities 
;Other  
org $E79A00
db $A1
db $2E
db $8D
db $81
db $7E
db $8B
db $FF
db $FF
db $FF
;Item   
org $E79A08
db $A1
db $28
db $8D
db $7E
db $86
db $FF
db $FF
db $FF
db $FF
;Row    
org $E79A10
db $A1
db $31
db $88
db $90
db $FF
db $FF
db $FF
db $FF
db $FF
;Def.   
org $E79A18
db $A1
db $23
db $7E
db $7F
db $D2
db $FF
db $FF
db $FF
db $FF
;Fight  
org $E79A20
db $A1
db $25
db $82
db $80
db $81
db $8D
db $FF
db $FF
db $FF
;Guard  
org $E79A28
db $A1
db $26
db $8E
db $7A
db $8B
db $7D
db $FF
db $FF
db $FF
;Kick   
org $E79A30
db $A1
db $2A
db $82
db $7C
db $84
db $FF
db $FF
db $FF
db $FF
;BuildUp
org $E79A38
db $A1
db $21
db $8E
db $82
db $85
db $7D
db $F5
db $89
db $FF
;Mantra 
org $E79A40
db $A1
db $2C
db $7A
db $87
db $8D
db $8B
db $7A
db $FF
db $FF
;Escape 
org $E79A48
db $A1
db $24
db $8C
db $7C
db $7A
db $89
db $7E
db $FF
db $FF
;Steal  
org $E79A50
db $A1
db $32
db $8D
db $7E
db $7A
db $85
db $FF
db $FF
db $FF
;Capture
org $E79A58
db $A1
db $22
db $7A
db $89
db $8D
db $8E
db $8B
db $7E
db $FF
;Jump   
org $E79A60
db $A1
db $29
db $8E
db $86
db $89
db $FF
db $FF
db $FF
db $FF
;DrgnSwd
org $E79A68
db $A1
db $23
db $8B
db $80
db $87
db $32
db $90
db $7D
db $FF
;Smoke  
org $E79A70
db $A1
db $32
db $86
db $88
db $84
db $7E
db $FF
db $FF
db $FF
;Image  
org $E79A78
db $A1
db $28
db $86
db $7A
db $80
db $7E
db $FF
db $FF
db $FF
;Throw  
org $E79A80
db $A1
db $33
db $81
db $8B
db $88
db $90
db $FF
db $FF
db $FF
;SwdSlap
org $E79A88
db $A1
db $32
db $90
db $7D
db $32
db $85
db $7A
db $89
db $FF
;GilToss
org $E79A90
db $A1
db $26
db $82
db $85
db $33
db $88
db $8C
db $8C
db $FF
;Slash  
org $E79A98
db $A1
db $32
db $85
db $7A
db $8C
db $81
db $FF
db $FF
db $FF
;Animals
org $E79AA0
db $A1
db $20
db $87
db $82
db $86
db $7A
db $85
db $8C
db $FF
;Aim    
org $E79AA8
db $A1
db $20
db $82
db $86
db $FF
db $FF
db $FF
db $FF
db $FF
;X-Fight
org $E79AB0
db $A1
db $37
db $C5
db $25
db $82
db $80
db $81
db $8D
db $FF
;Conjure
org $E79AB8
db $A1
db $22
db $88
db $87
db $83
db $8E
db $8B
db $7E
db $FF
;Observe
org $E79AC0
db $A1
db $2E
db $7B
db $8C
db $7E
db $8B
db $8F
db $7E
db $FF
;Analyze
org $E79AC8
db $A1
db $20
db $87
db $7A
db $85
db $92
db $93
db $7E
db $FF
;Tame   
org $E79AD0
db $A1
db $33
db $7A
db $86
db $7E
db $FF
db $FF
db $FF
db $FF
;Control
org $E79AD8
db $A1
db $22
db $88
db $87
db $8D
db $8B
db $88
db $85
db $FF
;Catch  
org $E79AE0
db $A1
db $22
db $7A
db $8D
db $7C
db $81
db $FF
db $FF
db $FF
;Release
org $E79AE8
db $A1
db $31
db $7E
db $85
db $7E
db $7A
db $8C
db $7E
db $FF
;Combine
org $E79AF0
db $A1
db $22
db $88
db $86
db $7B
db $82
db $87
db $7E
db $FF
;Drink  
org $E79AF8
db $A1
db $23
db $8B
db $82
db $87
db $84
db $FF
db $FF
db $FF
;Pray   
org $E79B00
db $A1
db $2F
db $8B
db $7A
db $92
db $FF
db $FF
db $FF
db $FF
;Revive 
org $E79B08
db $A1
db $31
db $7E
db $8F
db $82
db $8F
db $7E
db $FF
db $FF
;Terrain
org $E79B10
db $A1
db $33
db $7E
db $8B
db $8B
db $7A
db $82
db $87
db $FF
;Dummy01
org $E79B18
db $A1
db $22
db $8E
db $86
db $86
db $92
db $53
db $F7
db $FF
;Hide   
org $E79B20
db $A1
db $27
db $82
db $7D
db $7E
db $FF
db $FF
db $FF
db $FF
;Show   
org $E79B28
db $A1
db $32
db $81
db $88
db $90
db $FF
db $FF
db $FF
db $FF
;Dummy02
org $E79B30
db $A1
db $22
db $8E
db $86
db $86
db $92
db $53
db $F8
db $FF
;Sing   
org $E79B38
db $A1
db $32
db $82
db $87
db $80
db $FF
db $FF
db $FF
db $FF
;Flirt  
org $E79B40
db $A1
db $25
db $85
db $82
db $8B
db $8D
db $FF
db $FF
db $FF
;Dance  
org $E79B48
db $A1
db $23
db $7A
db $87
db $7C
db $7E
db $FF
db $FF
db $FF
;Mimic  
org $E79B50
db $A1
db $2C
db $82
db $86
db $82
db $7C
db $FF
db $FF
db $FF
;txterr
org $E79D38
db $A1
db $8D
db $91
db $8D
db $7E
db $8B
db $8B
db $FF
;MgcSwrd1
org $E79B80
db $A1
db $2C
db $80
db $7C
db $32
db $90
db $8B
db $7D
db $F7
db $FF
;MgcSwrd2
org $E79B88
db $A1
db $2C
db $80
db $7C
db $32
db $90
db $8B
db $7D
db $F8
db $FF
;MgcSwrd3
org $E79B90
db $A1
db $2C
db $80
db $7C
db $32
db $90
db $8B
db $7D
db $F9
db $FF
;MgcSwrd4
org $E79B98
db $A1
db $2C
db $80
db $7C
db $32
db $90
db $8B
db $7D
db $FA
db $FF
;MgcSwrd5
org $E79BA0
db $A1
db $2C
db $80
db $7C
db $32
db $90
db $8B
db $7D
db $FB
db $FF
;MgcSwrd6
org $E79BA8
db $A1
db $2C
db $80
db $7C
db $32
db $90
db $8B
db $7D
db $FC
db $FF
;White 1
org $E79BC0
db $A1
db $36
db $81
db $82
db $8D
db $7E
db $FF
db $F7
db $FF
;White 2
org $E79BC8
db $A1
db $36
db $81
db $82
db $8D
db $7E
db $FF
db $F8
db $FF
;White 3
org $E79BD0
db $A1
db $36
db $81
db $82
db $8D
db $7E
db $FF
db $F9
db $FF
;White 4
org $E79BD8
db $A1
db $36
db $81
db $82
db $8D
db $7E
db $FF
db $FA
db $FF
;White 5
org $E79BE0
db $A1
db $36
db $81
db $82
db $8D
db $7E
db $FF
db $FB
db $FF
;White 6
org $E79BE8
db $A1
db $36
db $81
db $82
db $8D
db $7E
db $FF
db $FC
db $FF
;Black 1
org $E79C00
db $A1
db $21
db $85
db $7A
db $7C
db $84
db $FF
db $F7
db $FF
;Black 2
org $E79C08
db $A1
db $21
db $85
db $7A
db $7C
db $84
db $FF
db $F8
db $FF
;Black 3
org $E79C10
db $A1
db $21
db $85
db $7A
db $7C
db $84
db $FF
db $F9
db $FF
;Black 4
org $E79C18
db $A1
db $21
db $85
db $7A
db $7C
db $84
db $FF
db $FA
db $FF
;Black 5
org $E79C20
db $A1
db $21
db $85
db $7A
db $7C
db $84
db $FF
db $FB
db $FF
;Black 6
org $E79C28
db $A1
db $21
db $85
db $7A
db $7C
db $84
db $FF
db $FC
db $FF
;Dimen 1
org $E79C40
db $A1
db $23
db $82
db $86
db $7E
db $87
db $FF
db $F7
db $FF
;Dimen 2
org $E79C48
db $A1
db $23
db $82
db $86
db $7E
db $87
db $FF
db $F8
db $FF
;Dimen 3
org $E79C50
db $A1
db $23
db $82
db $86
db $7E
db $87
db $FF
db $F9
db $FF
;Dimen 4
org $E79C58
db $A1
db $23
db $82
db $86
db $7E
db $87
db $FF
db $FA
db $FF
;Dimen 5
org $E79C60
db $A1
db $23
db $82
db $86
db $7E
db $87
db $FF
db $FB
db $FF
;Dimen 6
org $E79C68
db $A1
db $23
db $82
db $86
db $7E
db $87
db $FF
db $FC
db $FF
;Summon 1
org $E79C80
db $A1
db $32
db $8E
db $86
db $86
db $88
db $87
db $FF
db $F7
db $FF
;Summon 2
org $E79C88
db $A1
db $32
db $8E
db $86
db $86
db $88
db $87
db $FF
db $F8
db $FF
;Summon 3
org $E79C90
db $A1
db $32
db $8E
db $86
db $86
db $88
db $87
db $FF
db $F9
db $FF
;Summon 4
org $E79C98
db $A1
db $32
db $8E
db $86
db $86
db $88
db $87
db $FF
db $FA
db $FF
;Summon 5
org $E79CA0
db $A1
db $32
db $8E
db $86
db $86
db $88
db $87
db $FF
db $FB
db $FF
;Red 1
org $E79CC0
db $A1
db $31
db $7E
db $7D
db $FF
db $F7
db $FF
;Red 2
org $E79CC8
db $A1
db $31
db $7E
db $7D
db $FF
db $F8
db $FF
;Red 3
org $E79CD0
db $A1
db $31
db $7E
db $7D
db $FF
db $F9
db $FF
;X-Magic
org $E79D00
db $A1
db $37
db $C5
db $2C
db $7A
db $80
db $82
db $7C
db $FF
;Blue 
org $E79D08
db $A1
db $21
db $85
db $8E
db $7E
db $FF
db $FF
;Equip <Shld> 
org $E79D40
db $A1
db $24
db $8A
db $8E
db $82
db $89
db $F1
db $FF
;Equip <Armr> 
org $E79D48
db $A1
db $24
db $8A
db $8E
db $82
db $89
db $F3
db $FF
;Equip <Ribn> 
org $E79D50
db $A1
db $24
db $8A
db $8E
db $82
db $89
db $C1
db $FF
;Equip <Swrd> 
org $E79D58
db $A1
db $24
db $8A
db $8E
db $82
db $89
db $E3
db $FF
;Equip <Sper> 
org $E79D60
db $A1
db $24
db $8A
db $8E
db $82
db $89
db $E8
db $FF
;Equip <Katn> 
org $E79D68
db $A1
db $24
db $8A
db $8E
db $82
db $89
db $EA
db $FF
;Equip <Axe><Hamr>
org $E79D70
db $A1
db $24
db $8A
db $89
db $E9
db $BF
db $FF
;Equip <Bow> 
org $E79D78
db $A1
db $24
db $8A
db $8E
db $82
db $89
db $ED
db $FF
;Equip <Whip> 
org $E79D80
db $A1
db $24
db $8A
db $8E
db $82
db $89
db $EF
db $FF
;Equip <Harp> 
org $E79D88
db $A1
db $24
db $8A
db $8E
db $82
db $89
db $EE
db $FF
;Agility 
org $E79D90
db $A1
db $20
db $80
db $82
db $85
db $82
db $8D
db $92
db $FF
db $FF
;HP +10% 
org $E79D98
db $A1
db $27
db $2F
db $FF
db $E2
db $F7
db $53
db $CD
db $FF
db $FF
;HP +20% 
org $E79DA0
db $A1
db $27
db $2F
db $FF
db $E2
db $F8
db $53
db $CD
db $FF
db $FF
;HP +30% 
org $E79DA8
db $A1
db $27
db $2F
db $FF
db $E2
db $F9
db $53
db $CD
db $FF
db $FF
;MP +10% 
org $E79DB0
db $A1
db $2C
db $2F
db $FF
db $E2
db $F7
db $53
db $CD
db $FF
db $FF
;MP +30% 
org $E79DB8
db $A1
db $2C
db $2F
db $FF
db $E2
db $F9
db $53
db $CD
db $FF
db $FF
;Brawl   
org $E79DC0
db $A1
db $21
db $8B
db $7A
db $90
db $85
db $FF
db $FF
db $FF
db $FF
;Dbl Grip
org $E79DC8
db $A1
db $23
db $7B
db $85
db $FF
db $26
db $8B
db $82
db $89
db $FF
;2-Handed
org $E79DD0
db $A1
db $F8
db $C5
db $27
db $7A
db $87
db $7D
db $7E
db $7D
db $FF
;Medicine
org $E79DD8
db $A1
db $2C
db $7E
db $7D
db $82
db $7C
db $82
db $87
db $7E
db $FF
;Cover   
org $E79DE0
db $A1
db $22
db $88
db $8F
db $7E
db $8B
db $FF
db $FF
db $FF
db $FF
;Counter 
org $E79DE8
db $A1
db $22
db $88
db $8E
db $87
db $8D
db $7E
db $8B
db $FF
db $FF
;Evade   
org $E79DF0
db $A1
db $24
db $8F
db $7A
db $7D
db $7E
db $FF
db $FF
db $FF
db $FF
;Learning
org $E79DF8
db $A1
db $2B
db $7E
db $7A
db $8B
db $87
db $82
db $87
db $80
db $FF
;Barrier 
org $E79E00
db $A1
db $21
db $7A
db $8B
db $8B
db $82
db $7E
db $8B
db $FF
db $FF
;Berserk 
org $E79E08
db $A1
db $21
db $7E
db $8B
db $8C
db $7E
db $8B
db $84
db $FF
db $FF
;Caution 
org $E79E10
db $A1
db $22
db $7A
db $8E
db $8D
db $82
db $88
db $87
db $FF
db $FF
;Preemptiv
org $E79E18
db $A1
db $2F
db $8B
db $7E
db $7E
db $86
db $89
db $8D
db $82
db $8F
db $FF
;Passages
org $E79E20
db $A1
db $2F
db $7A
db $8C
db $8C
db $7A
db $80
db $7E
db $8C
db $FF
;DmgFloor
org $E79E28
db $A1
db $23
db $86
db $80
db $25
db $85
db $88
db $88
db $8B
db $FF
;Pitfalls
org $E79E30
db $A1
db $2F
db $82
db $8D
db $7F
db $7A
db $85
db $85
db $8C
db $FF
;Equip <Rod> 
org $E79E38
db $A1
db $24
db $8A
db $8E
db $82
db $89
db $EB
db $FF
;Dash
org $E79E40
db $A1
db $23
db $7A
db $8C
db $81
db $FF


; crystals have a scroll icon for now  
; Scroll = $C8, mass replace [db $C8] later if necessary

;Knight  
org $E79E48
db $C8
db $2A
db $87
db $82
db $80
db $81
db $8D
db $FF
db $FF
db $FF
;Monk    
org $E79E50
db $C8
db $2C
db $88
db $87
db $84
db $FF
db $FF
db $FF
db $FF
db $FF
;Thief   
org $E79E58
db $C8
db $33
db $81
db $82
db $7E
db $7F
db $FF
db $FF
db $FF
db $FF
;Dragoon 
org $E79E60
db $C8
db $22
db $8B
db $7A
db $80
db $88
db $88
db $87
db $FF
db $FF
;Ninja   
org $E79E68
db $C8
db $2D
db $82
db $87
db $83
db $7A
db $FF
db $FF
db $FF
db $FF
;Samurai 
org $E79E70
db $C8
db $32
db $7A
db $86
db $8E
db $8B
db $7A
db $82
db $FF
db $FF
;Berserkr
org $E79E78
db $C8
db $21
db $7E
db $8B
db $8C
db $7E
db $8B
db $84
db $8B
db $FF
;Hunter  
org $E79E80
db $C8
db $27
db $8E
db $87
db $8D
db $7E
db $8B
db $FF
db $FF
db $FF
;MysticKnt
org $E79E88
db $C8
db $2C
db $92
db $8C
db $8D
db $82
db $7C
db $2A
db $87
db $8D
db $FF
;WhiteMage
org $E79E90
db $C8
db $36
db $81
db $82
db $8D
db $7E
db $2C
db $7A
db $80
db $7E
db $FF
;BlackMage
org $E79E98
db $C8
db $21
db $85
db $7A
db $7C
db $84
db $2C
db $7A
db $80
db $7E
db $FF
;TimeMage
org $E79EA0
db $C8
db $33
db $82
db $86
db $7E
db $2C
db $7A
db $80
db $7E
db $FF
;Summoner
org $E79EA8
db $C8
db $32
db $8E
db $86
db $86
db $88
db $87
db $7E
db $8B
db $FF
;BlueMage
org $E79EB0
db $C8
db $21
db $85
db $8E
db $7E
db $2C
db $7A
db $80
db $7E
db $FF
;Red Mage
org $E79EB8
db $C8
db $31
db $7E
db $7D
db $FF
db $2C
db $7A
db $80
db $7E
db $FF
;Mediator
org $E79EC0
db $C8
db $2C
db $7E
db $7D
db $82
db $7A
db $8D
db $88
db $8B
db $FF
;Chemist 
org $E79EC8
db $C8
db $22
db $81
db $7E
db $86
db $82
db $8C
db $8D
db $FF
db $FF
;Geomancr
org $E79ED0
db $C8
db $26
db $7E
db $88
db $86
db $7A
db $87
db $7C
db $8B
db $FF
;Bard    
org $E79ED8
db $C8
db $21
db $7A
db $8B
db $7D
db $FF
db $FF
db $FF
db $FF
db $FF
;Dancer  
org $E79EE0
db $C8
db $22
db $7A
db $87
db $7C
db $7E
db $8B
db $FF
db $FF
db $FF
;Mimic   
org $E79EE8
db $C8
db $2C
db $82
db $86
db $82
db $7C
db $FF
db $FF
db $FF
db $FF
;FrLancer
org $E79EF0
db $C8
db $25
db $8B
db $2B
db $7A
db $87
db $7C
db $7E
db $25
db $FF



; write original data for magic at new data area

org $F80000
db $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $12, $01, $08, $01, $09, $01, $1c, $01, $1c, $01, $1e, $01, $3e, $01, $46, $01, $41, $02, $1e, $02, $1e, $02, $1e, $02, $3c, $02, $3c, $02, $3c, $02, $64, $02, $64, $02, $64, $01, $0f, $01, $0f, $01, $0f, $01, $1d, $01, $1e, $01, $1e, $01, $3c, $01, $3c, $01, $3c, $02, $1e, $02, $1e, $02, $1e, $02, $3c, $02, $3c, $02, $3c, $02, $64, $02, $64, $02, $64, $01, $03, $01, $08, $01, $0a, $01, $20, $01, $20, $01, $1e, $01, $3e, $01, $3a, $01, $3c, $02, $1e, $02, $1e, $02, $1e, $02, $3c, $02, $3c, $02, $3c, $02, $64, $02, $64, $02, $64, $01, $1e, $01, $23, $01, $19, $01