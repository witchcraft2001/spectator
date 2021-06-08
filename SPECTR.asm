;Spectrator v0.1 (beta)
;(c) DeadMaN/Alpha Studio, 2003
;Эта утилита предназначена для копирования содержимого SCL файлов в TRD файлы.

                device zxspectrum128
                org     4100h - 200h

EXEhead:	db	"EXE"
		db	0			; +3
		dw	EntryExec-EXEhead
		dw	0x0000			; +4
		dw	0	                ; +8
		dw	0, 0			; +10
		dw	0			; +14
		dw	EntryExec		; +16
		dw	EntryExec
		dw	0x7FFF
                ds      490,0
EntryExec:                
                ld      (loc_4C9A+1), sp
                ld      bc, 13Dh
                rst     10h
                jp      c, loc_4C61
                ld      bc, 3Ah ; ':'
                rst     10h
                jp      c, loc_4C61
                ld      sp, 0BFFFh
                call    sub_4A12

loc_4118:                               ; CODE XREF: RAM:4157↓j
                call    sub_4643
                call    sub_4B0B
                call    loc_4B03
                call    sub_4264
                call    sub_4428
                call    sub_44C0
                call    sub_440F
                call    sub_43E2
                call    sub_459E
                call    loc_4885
                call    sub_46DF
                call    sub_4B0B
                call    loc_4B03
                call    sub_4264
                call    sub_4428
                call    sub_44C0
                call    sub_440F
                call    sub_43E2
                call    sub_459E
                call    loc_4885
                call    loc_476B
                jp      loc_4118
; ---------------------------------------------------------------------------

loc_415A:                               ; CODE XREF: RAM:482B↓p
                ld      hl, (word_522E)
                ld      a, (hl)
                ld      hl, (word_5244)
                ld      c, (hl)
                cp      2
                jr      nz, locret_416C
                ld      a, c
                cp      1
                jp      z, loc_416D

locret_416C:                            ; CODE XREF: RAM:4164↑j
                ret
; ---------------------------------------------------------------------------

loc_416D:                               ; CODE XREF: RAM:4169↑j
                call    sub_4198
                ld      a, (loc_4B03+1)
                cp      1
                jr      z, loc_417F
                call    sub_4643
                ld      hl, 46DFh
                jr      loc_4185
; ---------------------------------------------------------------------------

loc_417F:                               ; CODE XREF: RAM:4175↑j
                call    sub_46DF
                ld      hl, 4643h

loc_4185:                               ; CODE XREF: RAM:417D↑j
                ld      (loc_4191+1), hl
                call    sub_460C
                call    sub_49E8
                call    loc_4885

loc_4191:                               ; DATA XREF: RAM:loc_4185↑w
                call    sub_4643
                call    sub_45D5
                ret

; ===================================================================


sub_4198:                               ; CODE XREF: RAM:loc_416D↑p
                ld      hl, (word_5228)
                ld      a, (hl)
                call    loc_44B4
                ld      de, 0Dh
                add     hl, de
                ld      a, (hl)
                ld      hl, (word_5240)
                call    sub_4B2A
                ret     c
                ld      hl, (word_5228)
                ld      c, (hl)
                ld      hl, (word_522C)
                ld      a, (hl)
                ld      hl, (word_5220)
                call    sub_4300
                ld      hl, (word_5240)
                ld      de, 8E1h
                add     hl, de
                ld      a, (hl)
                inc     hl
                ld      h, (hl)
                ld      l, a
                call    sub_4325
                ld      c, l
                ld      b, h
                call    sub_4355
                ld      de, (word_523C)
                ld      a, (de)
                ld      bc, 15h
                rst     10h
                jp      c, loc_4C61
                ld      de, (word_5206)
                call    loc_4505
                call    sub_4B91
                ld      de, (word_5240)
                ld      hl, 8E4h
                add     hl, de
                ld      a, (hl)
                inc     (hl)
                ld      l, a
                ld      h, 0
                call    sub_4907
                add     hl, de
                push    hl
                ld      hl, (word_5228)
                ld      a, (hl)
                call    loc_44B4
                pop     de
                ld      bc, 0Eh
                ldir
                push    de
                ld      de, (word_5240)
                ld      hl, 8E1h
                add     hl, de
                pop     de
                push    de
                push    hl
                ld      bc, 2
                ldir
                pop     hl
                pop     de
                dec     de
                push    hl
                ld      a, (hl)
                inc     hl
                ld      h, (hl)
                ld      l, a
                call    sub_4325
                ld      a, (de)
                call    sub_4994
                call    sub_4913
                pop     hl
                ld      (hl), c
                inc     hl
                ld      (hl), b
                ld      bc, (word_5240)
                ld      hl, 8E5h
                add     hl, bc
                push    hl
                ld      a, (hl)
                inc     hl
                ld      h, (hl)
                ld      l, a
                ld      a, (de)
                ld      e, a
                ld      d, 0
                or      a
                sbc     hl, de
                ex      de, hl
                pop     hl
                ld      (hl), e
                inc     hl
                ld      (hl), d
                ld      hl, (word_523C)
                ld      a, (hl)
                ld      hl, 0
                ld      ix, 0
                ld      bc, 15h
                rst     10h
                jp      c, loc_4C61
                ld      hl, (word_523C)
                ld      a, (hl)
                ld      hl, (word_5240)
                ld      de, 900h
                ld      c, 14h
                rst     10h
                jp      c, loc_4C61
                ret
; ===================================================================
sub_4264:                               ; CODE XREF: RAM:4121↑p
                                        ; RAM:413F↑p
                ld      c, 2
                rst     10h
                jp      c, loc_4C61
                ld      hl, (word_5224)
                ld      (hl), a
                ret
; ---------------------------------------------------------------------------
                ret
; ---------------------------------------------------------------------------
                ret
; ---------------------------------------------------------------------------
                ld      hl, (word_5228)
                ld      a, (hl)
                call    loc_44B4
                ld      d, h
                ld      e, l
                ld      bc, 0Bh
                add     hl, bc
                bit     4, (hl)
                jr      z, loc_4298
                call    sub_4432
                call    sub_43E2
                call    sub_4B0B
                call    loc_4B03
                call    sub_44C0
                call    sub_459E
                call    loc_4885
                ret
; ---------------------------------------------------------------------------

loc_4298:                               ; CODE XREF: RAM:4280↑j
                push    hl
                push    de
                ld      bc, 0FFFDh
                add     hl, bc
                ld      de, 42FAh
                ld      bc, 3
                call    sub_43C1
                pop     hl
                pop     de
                jr      z, loc_42DD
                push    hl
                ld      bc, 8
                add     hl, bc
                ld      de, 42FDh
                ld      bc, 3
                call    sub_43C1
                pop     hl
                jr      z, loc_42BD
                ret
; ---------------------------------------------------------------------------

loc_42BD:                               ; CODE XREF: RAM:42BA↑j
                ld      bc, 44h ; 'D'
                ld      de, 9BE4h
                rst     10h
                jp      c, loc_4C61
                ld      hl, 9BE4h
                call    sub_43A0
                call    sub_460C
                call    sub_49E8
                call    loc_4B03
                call    sub_4B0B
                call    loc_4885
                ret
; ---------------------------------------------------------------------------

loc_42DD:                               ; CODE XREF: RAM:42A9↑j
                ld      bc, 44h ; 'D'
                ld      de, 9BE4h
                rst     10h
                jp      c, loc_4C61
                ld      hl, 9BE4h
                call    sub_435D
                call    sub_45D5
                call    loc_4B03
                call    sub_4B0B
                call    loc_4885
                ret
; ---------------------------------------------------------------------------
aScltrd:        db      'SCLTRD'

; ===================================================================


sub_4300:                               ; CODE XREF: sub_4198+1E↑p
                call    loc_4330
                push    hl
                push    ix
                ld      a, (de)
                call    sub_4976
                ld      (byte_5205), a
                ld      (word_5206), hl
                ex      de, hl
                ld      hl, (word_5226)
                ld      a, (hl)
                pop     ix
                pop     hl
                push    de
                ld      bc, 15h
                rst     10h
                jp      c, loc_4C61
                pop     de
                call    loc_4540
                ret
; ===================================================================
sub_4325:                               ; CODE XREF: sub_4198+2C↑p
                                        ; sub_4198+82↑p
                ld      a, l
                ld      l, h
                ld      h, 0
                call    sub_4907
                call    sub_4994
                ret
; ---------------------------------------------------------------------------
loc_4330:                               ; CODE XREF: sub_4300↑p
                ld      (loc_433E+1), a
                ld      a, c
                ld      de, 0Dh
                add     hl, de
                inc     e
                call    sub_49D9
                push    hl
                push    bc

loc_433E:                               ; DATA XREF: RAM:loc_4330↑w
                ld      l, 0
                ld      h, 0
                call    sub_48FD
                ld      de, 9
                add     hl, de
                ex      de, hl
                pop     bc
                call    sub_4355
                add     ix, de
                jr      nc, loc_4353
                inc     hl

loc_4353:                               ; CODE XREF: RAM:4350↑j
                pop     de
                ret
; ===================================================================
sub_4355:                               ; CODE XREF: sub_4198+31↑p
                                        ; RAM:434B↑p
                xor     a
                ld      h, a
                ld      l, b
                ld      xh, c
                ld      xl, a
                ret
; ===================================================================
sub_435D:                               ; CODE XREF: RAM:42EA↑p
                xor     a
                ld      c, 11h
                rst     10h
                jp      c, loc_4C61
                ld      hl, (word_5226)
                ld      (hl), a
                ld      hl, (word_5230)
                xor     a
                ld      (hl), a
                ld      hl, (word_5226)
                ld      a, (hl)
                ld      hl, (word_5220)
                ld      de, 9
                ld      c, 13h
                rst     10h
                jp      c, loc_4C61
                ld      hl, (word_5220)
                ld      a, 8
                call    sub_4994
                ld      a, (hl)
                ld      hl, (word_522C)
                ld      (hl), a
                ld      l, a
                ld      h, 0
                call    sub_48FD
                ex      de, hl
                ld      hl, (word_5220)
                ld      bc, (word_5226)
                ld      a, (bc)
                ld      c, 13h
                rst     10h
                jp      c, loc_4C61
                ret
; ===================================================================
sub_43A0:                               ; CODE XREF: RAM:42CA↑p
                xor     a
                ld      c, 11h
                rst     10h
                jp      c, loc_4C61
                ld      hl, (word_5226)
                ld      (hl), a
                ld      hl, (word_5230)
                xor     a
                ld      (hl), a
                ld      hl, (word_5226)
                ld      a, (hl)
                ld      hl, (word_5222)
                ld      de, 900h
                ld      c, 13h
                rst     10h
                jp      c, loc_4C61
                ret
; ===================================================================
sub_43C1:                               ; CODE XREF: RAM:42A4↑p
                                        ; RAM:42B6↑p ...
                ld      a, (de)
                cpi
                ret     po
                ret     nz
                inc     de
                jr      sub_43C1
; ---------------------------------------------------------------------------
                db      '                        ',0
; ===================================================================
sub_43E2:                               ; CODE XREF: RAM:412D↑p
                                        ; RAM:414B↑p ...
                ld      a, (byte_5217)
                ld      (loc_4A96+1), a
                ld      hl, (word_521E)
                push    hl
                xor     a
                ld      b, h
                cpir
                ld      de, 0FFE7h
                add     hl, de
                pop     de
                push    hl
                or      a
                sbc     hl, de
                pop     hl
                jr      nc, loc_43FE
                ld      h, d
                ld      l, e

loc_43FE:                               ; CODE XREF: sub_43E2+18↑j
                                        ; DATA XREF: sub_4643+75↓w ...
                ld      de, 103h
                push    de
                push    hl
                ld      hl, 43C9h
                call    loc_4A70
                pop     hl
                pop     de
                call    loc_4A70
                ret
; ===================================================================
sub_440F:                               ; CODE XREF: RAM:412A↑p
                                        ; RAM:4148↑p ...
                ld      a, (byte_5216)
                ld      (loc_4952+2), a

loc_4415:                               ; DATA XREF: sub_4643+7B↓w
                                        ; sub_46DF+7B↓w
                ld      de, 101h
                ld      hl, (word_5224)
                ld      a, 41h ; 'A'
                add     a, (hl)
                call    loc_4950
                inc     e
                ld      a, 3Ah ; ':'
                call    loc_4950
                ret
; ===================================================================
sub_4428:                               ; CODE XREF: RAM:4124↑p
                                        ; RAM:4142↑p
                ld      hl, (word_521E)
                ld      c, 1Eh
                rst     10h
                jp      c, loc_4C61
                ret
; ===================================================================
sub_4432:                               ; CODE XREF: RAM:4282↑p
                xor     a
                ld      hl, (word_521E)
                ld      bc, 100h
                cpir
                dec     hl
                ex      de, hl
                ld      a, 2Eh ; '.'
                cp      (hl)
                jr      nz, loc_445B
                inc     hl
                cp      (hl)
                jr      nz, sub_448B
                ex      de, hl
                ld      c, h
                ld      a, 5Ch ; '\'
                cpdr
                inc     hl
                ld      de, (word_521E)
                xor     a
                sbc     hl, de
                jr      nz, loc_4457
                inc     hl

loc_4457:                               ; CODE XREF: sub_4432+22↑j
                add     hl, de
                ld      (hl), a
                jr      sub_448B
; ---------------------------------------------------------------------------

loc_445B:                               ; CODE XREF: sub_4432+E↑j
                ex      de, hl
                dec     hl
                ld      a, 5Ch ; '\'
                cp      (hl)
                jr      z, loc_4464
                inc     hl
                ld      (hl), a

loc_4464:                               ; CODE XREF: sub_4432+2E↑j
                inc     hl
                ex      de, hl
                ld      b, 8
                ld      c, h
                ld      a, 20h ; ' '

loc_446B:                               ; CODE XREF: sub_4432+3E↓j
                cp      (hl)
                jr      z, loc_4472
                ldi
                djnz    loc_446B

loc_4472:                               ; CODE XREF: sub_4432+3A↑j
                ld      a, b
                call    sub_4994
                ld      a, 20h ; ' '
                cp      (hl)
                jr      z, loc_4489
                ex      de, hl
                ld      (hl), 2Eh ; '.'
                inc     hl
                ex      de, hl
                ld      b, 3

loc_4482:                               ; CODE XREF: sub_4432+55↓j
                ldi
                cp      (hl)
                jr      z, loc_4489
                djnz    loc_4482

loc_4489:                               ; CODE XREF: sub_4432+47↑j
                                        ; sub_4432+53↑j
                xor     a
                ld      (de), a
; ===================================================================


sub_448B:                               ; CODE XREF: sub_4432+12↑j
                                        ; sub_4432+27↑j ...
                nop
                nop
                nop
                nop
                nop
                nop
                nop
                nop
                nop
                nop
                nop
                nop
                nop
                nop
                nop
                nop
                nop
                nop
                nop
                nop
                nop
                ld      hl, (word_5224)
                ld      a, (hl)
                ld      c, 1
                rst     10h
                jp      c, loc_4C61
                ld      hl, (word_521E)
                ld      c, 1Dh
                rst     10h
                jp      c, loc_4C61
                ret
; ---------------------------------------------------------------------------
loc_44B4:                               ; CODE XREF: sub_4198+4↑p
                                        ; sub_4198+60↑p ...
                ld      l, a
                ld      h, 0

loc_44B7:                               ; DATA XREF: sub_459E+28↓w
                                        ; sub_45D5+28↓w ...
                call    sub_490C
                ld      de, (word_5220)
                add     hl, de
                ret
; ===================================================================
sub_44C0:                               ; CODE XREF: RAM:4127↑p
                                        ; RAM:4145↑p ...
                call    sub_448B
                ld      hl, (word_5220)
                ld      (word_44E9), hl
                xor     a
                ld      hl, (word_522C)
                ld      (hl), a
                ld      hl, 5218h
                ld      de, 9BE4h
                ld      a, 0FFh
                ld      bc, 19h
                rst     10h
                jp      c, locret_44E8

loc_44DD:                               ; CODE XREF: sub_44C0+26↓j
                call    sub_44EB
                ld      de, 9BE4h
                ld      c, 1Ah
                rst     10h
                jr      nc, loc_44DD

locret_44E8:                            ; CODE XREF: sub_44C0+1A↑j
                ret
; ---------------------------------------------------------------------------
word_44E9:      dw 0                    ; DATA XREF: sub_44C0+6↑w
                                        ; sub_44EB+3↓r ...

; ===================================================================
sub_44EB:                               ; CODE XREF: sub_44C0:loc_44DD↑p
                ld      hl, 9C05h
                ld      de, (word_44E9)
                ld      bc, 0Bh
                ldir
                ld      a, (9C04h)
                ld      (de), a
                inc     de
                ld      (word_44E9), de
                ld      hl, (word_522C)
                inc     (hl)
                ret
; End of function sub_44EB

; ---------------------------------------------------------------------------

loc_4505:                               ; CODE XREF: sub_4198+44↑p
                ld      bc, 40h ; '@'
                ld      hl, 0C000h
                ld      a, e
                ld      (loc_451D+1), a
                ld      a, d

loc_4510:                               ; CODE XREF: RAM:451B↓j
                or      a
                jr      z, loc_451D
                call    sub_4588
                call    sub_4529
                dec     a
                inc     b
                jr      loc_4510
; ---------------------------------------------------------------------------

loc_451D:                               ; CODE XREF: RAM:4511↑j
                                        ; DATA XREF: RAM:450C↑w
                ld      a, 0
                or      a
                ret     z
                call    sub_4588
                ld      c, a
                call    sub_4529
                ret

; ===================================================================
sub_4529:                               ; CODE XREF: RAM:4516↑p
                                        ; RAM:4525↑p
                push    bc
                push    de
                push    hl
                push    af
                ld      de, (word_523C)
                ld      a, (de)
                ld      d, c
                ld      e, 0
                ld      c, 14h
                rst     10h
                jp      c, loc_4C61
                pop     af
                pop     hl
                pop     de
                pop     bc
                ret
; ---------------------------------------------------------------------------

loc_4540:                               ; CODE XREF: sub_4300+21↑p
                ld      bc, 40h ; '@'
                ld      hl, 0C000h
                ld      a, e
                ld      (loc_4558+1), a
                ld      a, d

loc_454B:                               ; CODE XREF: RAM:4556↓j
                or      a
                jr      z, loc_4558
                call    sub_4588
                call    sub_4939
                dec     a
                inc     b
                jr      loc_454B
; ---------------------------------------------------------------------------

loc_4558:                               ; CODE XREF: RAM:454C↑j
                                        ; DATA XREF: RAM:4547↑w
                ld      a, 0
                or      a
                ret     z
                call    sub_4588
                ld      c, a
                call    sub_4939
                ret
; ---------------------------------------------------------------------------
                ld      a, e
                ld      (loc_457C+1), a
                ld      a, d
                ld      bc, 40h ; '@'
                ld      de, 0C000h

loc_456F:                               ; CODE XREF: RAM:457A↓j
                or      a
                jr      z, loc_457C
                call    sub_4588
                call    sub_4928
                dec     a
                inc     b
                jr      loc_456F
; ---------------------------------------------------------------------------

loc_457C:                               ; CODE XREF: RAM:4570↑j
                                        ; DATA XREF: RAM:4565↑w
                ld      a, 0
                or      a
                ret     z
                call    sub_4588
                ld      c, a
                call    sub_4928
                ret

; ===================================================================
sub_4588:                               ; CODE XREF: RAM:4513↑p
                                        ; RAM:4521↑p ...
                push    af
                push    ix
                push    hl
                push    bc
                push    de
                ld      a, (byte_5205)
                ld      c, 3Bh ; ';'
                rst     10h
                jp      c, loc_4C61
                pop     de
                pop     bc
                pop     hl
                pop     ix
                pop     af
                ret
; ===================================================================
sub_459E:                               ; CODE XREF: RAM:4130↑p
                                        ; RAM:414E↑p ...
                ld      hl, 459Eh
                ld      de, 4271h
                ld      a, (loc_4B03+1)
                cp      1
                jr      z, loc_45B4
                ld      (loc_481F+1), hl
                ld      (loc_4800+1), de
                jr      loc_45BB
; ---------------------------------------------------------------------------

loc_45B4:                               ; CODE XREF: sub_459E+B↑j
                ld      (loc_4813+1), hl
                ld      (loc_47FA+1), de

loc_45BB:                               ; CODE XREF: sub_459E+14↑j
                ld      a, 0Ch
                ld      (loc_48DE+1), a
                ld      hl, 490Ch
                ld      (loc_4897+1), hl
                ld      (loc_44B7+1), hl
                ld      a, (byte_5213)
                ld      (loc_488B+1), a
                ld      hl, (word_522E)
                ld      (hl), 0
                ret
; ===================================================================
sub_45D5:                               ; CODE XREF: RAM:4194↑p
                                        ; RAM:42ED↑p
                ld      hl, 45D5h
                ld      de, 426Fh
                ld      a, (loc_4B03+1)
                cp      1
                jr      z, loc_45EB
                ld      (loc_481F+1), hl
                ld      (loc_4800+1), de
                jr      loc_45F2
; ---------------------------------------------------------------------------

loc_45EB:                               ; CODE XREF: sub_45D5+B↑j
                ld      (loc_4813+1), hl
                ld      (loc_47FA+1), de

loc_45F2:                               ; CODE XREF: sub_45D5+14↑j
                ld      a, 0Eh
                ld      (loc_48DE+1), a
                ld      hl, 48FDh
                ld      (loc_4897+1), hl
                ld      (loc_44B7+1), hl
                ld      a, (byte_5211)
                ld      (loc_488B+1), a
                ld      hl, (word_522E)
                ld      (hl), 2
                ret
; ===================================================================
sub_460C:                               ; CODE XREF: RAM:4188↑p
                                        ; RAM:42CD↑p
                ld      hl, 460Ch
                ld      de, 4270h
                ld      a, (loc_4B03+1)
                cp      1
                jr      z, loc_4622
                ld      (loc_481F+1), hl
                ld      (loc_4800+1), de
                jr      loc_4629
; ---------------------------------------------------------------------------

loc_4622:                               ; CODE XREF: sub_460C+B↑j
                ld      (loc_4813+1), hl
                ld      (loc_47FA+1), de

loc_4629:                               ; CODE XREF: sub_460C+14↑j
                ld      a, 10h
                ld      (loc_48DE+1), a
                ld      hl, 4907h
                ld      (loc_4897+1), hl
                ld      (loc_44B7+1), hl
                ld      a, (byte_5212)
                ld      (loc_488B+1), a
                ld      hl, (word_522E)
                ld      (hl), 1
                ret
; ===================================================================
sub_4643:                               ; CODE XREF: RAM:loc_4118↑p
                                        ; RAM:4177↑p ...
                ld      hl, 8000h
                ld      (word_5220), hl
                ld      hl, 520Eh
                ld      (word_522C), hl
                ld      hl, 520Dh
                ld      (word_522A), hl
                ld      hl, 520Ch
                ld      (word_5228), hl
                ld      hl, 520Fh
                ld      (word_5226), hl
                ld      hl, 5002h
                ld      (word_521E), hl
                ld      hl, 9C10h
                ld      (word_5222), hl
                ld      hl, 5232h
                ld      (word_522E), hl
                ld      hl, (word_521C)
                ld      (word_5224), hl
                ld      hl, 4B9Bh
                ld      (word_5230), hl
                ld      hl, 8DF2h
                ld      (word_5234), hl
                ld      hl, 520Bh
                ld      (word_5236), hl
                ld      hl, 520Ah
                ld      (word_5238), hl
                ld      hl, 5209h
                ld      (word_523A), hl
                ld      hl, 5210h
                ld      (word_523C), hl
                ld      hl, 5102h
                ld      (word_523E), hl
                ld      hl, 0A510h
                ld      (word_5234), hl
                ld      hl, 5233h
                ld      (word_5244), hl
                ld      hl, (word_521C+1)
                ld      (word_5242), hl
                ld      hl, 103h
                ld      (loc_43FE+1), hl
                ld      hl, 101h
                ld      (loc_4415+1), hl
                ld      hl, 301h
                ld      de, 21Bh
                ld      bc, 10Fh
                ld      a, 1

loc_46CC:                               ; CODE XREF: sub_46DF+89↓j
                ld      (loc_4B03+1), a
                ld      a, b
                ld      (loc_4866+1), a
                ld      a, c
                ld      (loc_486C+1), a
                ld      (loc_489B+1), hl
                ld      (loc_48F2+1), de
                ret
; ===================================================================
sub_46DF:                               ; CODE XREF: RAM:4136↑p
                                        ; RAM:loc_417F↑p ...
                ld      hl, 8DF2h
                ld      (word_5220), hl
                ld      hl, 520Bh
                ld      (word_522C), hl
                ld      hl, 520Ah
                ld      (word_522A), hl
                ld      hl, 5209h
                ld      (word_5228), hl
                ld      hl, 5210h
                ld      (word_5226), hl
                ld      hl, 5102h
                ld      (word_521E), hl
                ld      hl, 0A510h
                ld      (word_5220), hl
                ld      hl, 5233h
                ld      (word_522E), hl
                ld      hl, (word_521C+1)
                ld      (word_5224), hl
                ld      hl, 4BABh
                ld      (word_5230), hl
                ld      hl, 8000h
                ld      (word_5234), hl
                ld      hl, 520Eh
                ld      (word_5236), hl
                ld      hl, 520Dh
                ld      (word_5238), hl
                ld      hl, 520Ch
                ld      (word_523A), hl
                ld      hl, 520Fh
                ld      (word_523C), hl
                ld      hl, 5002h
                ld      (word_523E), hl
                ld      hl, 9C10h
                ld      (word_5240), hl
                ld      hl, 5232h
                ld      (word_5244), hl
                ld      hl, (word_521C)
                ld      (word_5242), hl
                ld      hl, 11Fh
                ld      (loc_43FE+1), hl
                ld      hl, 11Dh
                ld      (loc_4415+1), hl
                ld      hl, 31Dh
                ld      de, 237h
                ld      bc, 1D2Bh
                ld      a, 1Dh
                jp      loc_46CC
; ---------------------------------------------------------------------------

loc_476B:                               ; CODE XREF: RAM:4154↑p
                                        ; RAM:47C3↓j ...
                call    loc_485C

loc_476E:                               ; CODE XREF: RAM:478F↓j
                                        ; RAM:47A7↓j ...
                ld      bc, 3035h
                rst     10h
                ld      hl, 11Bh
                and     a
                sbc     hl, de
                jp      z, loc_499B
                cp      9
                jp      z, loc_4806
                cp      41h ; 'A'
                jr      c, loc_4789
                cp      5Bh ; '['
                jp      c, loc_4831

loc_4789:                               ; CODE XREF: RAM:4782↑j
                ld      c, a
                ld      hl, (word_522C)
                ld      a, (hl)
                or      a
                jr      z, loc_476E
                ld      a, c
                cp      0Dh
                jp      z, loc_47F0
                ld      a, d
                res     7, a
                cp      52h ; 'R'
                jr      z, loc_47A9
                cp      58h ; 'X'
                jr      z, loc_47CE
                cp      3Fh ; '?'
                jp      z, loc_4828
                jr      loc_476E
; ---------------------------------------------------------------------------

loc_47A9:                               ; CODE XREF: RAM:479C↑j
                ld      hl, (word_5228)
                ld      a, (hl)
                inc     a
                ld      hl, (word_522C)
                cp      (hl)
                jr      z, loc_476E
                call    sub_4A52
                ld      hl, (word_5228)
                inc     (hl)
                ld      bc, (word_522A)
                ld      a, (bc)
                add     a, 35h ; '5'
                sub     (hl)
                jr      nc, loc_476B
                ld      hl, (word_522A)
                inc     (hl)
                call    loc_4885
                jr      loc_476B
; ---------------------------------------------------------------------------

loc_47CE:                               ; CODE XREF: RAM:47A0↑j
                ld      hl, (word_5228)
                ld      a, (hl)
                and     a
                jr      z, loc_476E
                call    sub_4A52
                ld      hl, (word_5228)
                dec     (hl)
                ld      bc, (word_522A)
                ld      a, (bc)
                sub     (hl)
                jr      c, loc_476B
                jr      z, loc_476B
                ld      hl, (word_522A)
                dec     (hl)
                call    loc_4885
                jp      loc_476B
; ---------------------------------------------------------------------------

loc_47F0:                               ; CODE XREF: RAM:4794↑j
                call    sub_4A52
                ld      a, (loc_4B03+1)
                cp      1
                jr      nz, loc_4800

loc_47FA:                               ; DATA XREF: sub_459E+19↑w
                                        ; sub_45D5+19↑w ...
                call    0
                jp      loc_476B
; ---------------------------------------------------------------------------

loc_4800:                               ; CODE XREF: RAM:47F8↑j
                                        ; DATA XREF: sub_459E+10↑w ...
                call    0
                jp      loc_476B
; ---------------------------------------------------------------------------

loc_4806:                               ; CODE XREF: RAM:477D↑j
                call    sub_4A52
                ld      a, (loc_4B03+1)
                cp      1
                jr      z, loc_481C
                call    sub_4643

loc_4813:                               ; DATA XREF: sub_459E:loc_45B4↑w
                                        ; sub_45D5:loc_45EB↑w ...
                call    sub_459E
                call    sub_448B
                jp      loc_476B
; ---------------------------------------------------------------------------

loc_481C:                               ; CODE XREF: RAM:480E↑j
                call    sub_46DF

loc_481F:                               ; DATA XREF: sub_459E+D↑w
                                        ; sub_45D5+D↑w ...
                call    sub_459E
                call    sub_448B
                jp      loc_476B
; ---------------------------------------------------------------------------

loc_4828:                               ; CODE XREF: RAM:47A4↑j
                call    sub_4A52
                call    loc_415A
                jp      loc_476B
; ---------------------------------------------------------------------------

loc_4831:                               ; CODE XREF: RAM:4786↑j
                sub     41h ; 'A'
                ld      hl, (word_5224)
                ld      (hl), a
                call    sub_4858
                call    sub_4B0B
                call    loc_4B03
                ld      hl, (word_521E)
                inc     hl
                ld      (hl), 0
                call    sub_440F
                call    sub_43E2
                call    sub_44C0
                call    sub_459E
                call    loc_4885
                jp      loc_476B

; ===================================================================


sub_4858:                               ; CODE XREF: RAM:4837↑p
                ld      hl, (word_5230)
                jp      (hl)
; ---------------------------------------------------------------------------

loc_485C:                               ; CODE XREF: RAM:loc_476B↑p
                ld      hl, (word_5228)
                ld      a, (hl)
                ld      hl, (word_522A)
                sub     (hl)
                add     a, 3

loc_4866:                               ; DATA XREF: sub_4643+8D↑w
                ld      b, 1
                cp      1Eh
                jr      c, loc_4870

loc_486C:                               ; DATA XREF: sub_4643+91↑w
                ld      b, 0Fh
                sub     1Bh

loc_4870:                               ; CODE XREF: RAM:486A↑j
                ld      d, a
                ld      e, b
                ld      c, 57h ; 'W'
                rst     10h
                ld      a, b
                ld      (byte_5204), a
                ld      (word_5202), de
                ld      a, 70h ; 'p'
                ld      b, 0Ch
                call    loc_4A60
                ret
; ---------------------------------------------------------------------------

loc_4885:                               ; CODE XREF: RAM:4133↑p
                                        ; RAM:4151↑p ...
                ld      hl, (word_522C)
                ld      a, (hl)
                or      a
                ret     z

loc_488B:                               ; DATA XREF: sub_459E+2E↑w
                                        ; sub_45D5+2E↑w ...
                ld      a, 0
                ld      de, (word_5220)
                ld      hl, (word_522A)
                ld      l, (hl)
                ld      h, 0

loc_4897:                               ; DATA XREF: sub_459E+25↑w
                                        ; sub_45D5+25↑w ...
                call    sub_48FD
                add     hl, de

loc_489B:                               ; DATA XREF: sub_4643+94↑w
                ld      de, 301h
                ld      (loc_4952+2), a
                ld      xh, 0

loc_48A4:                               ; CODE XREF: RAM:48E7↓j
                ld      b, 8
                push    hl

loc_48A7:                               ; CODE XREF: RAM:48AD↓j
                ld      a, (hl)
                inc     hl
                call    loc_4950
                inc     e
                djnz    loc_48A7
                inc     e
                ld      b, 3

loc_48B2:                               ; CODE XREF: RAM:48C0↓j
                ld      a, (hl)
                inc     hl
                cp      20h ; ' '
                jr      c, loc_48BF
                cp      80h
                jr      nc, loc_48BF
                call    loc_4950

loc_48BF:                               ; CODE XREF: RAM:48B6↑j
                                        ; RAM:48BA↑j
                inc     e
                djnz    loc_48B2
                pop     hl
                ld      bc, (word_522A)
                ld      a, (bc)
                add     a, xh
                ld      c, a
                push    bc
                ld      bc, (word_522C)
                ld      a, (bc)
                pop     bc
                dec     a
                cp      c
                jr      z, loc_48F7
                inc     xh
                ld      a, xh

loc_48DA:                               ; DATA XREF: RAM:48EF↓w
                                        ; RAM:48F9↓w
                cp      1Bh
                jr      z, loc_48E9

loc_48DE:                               ; CODE XREF: RAM:48F5↓j
                                        ; DATA XREF: sub_459E+1F↑w ...
                ld      bc, 0Eh
                add     hl, bc
                inc     d
                ld      a, e
                sub     0Ch
                ld      e, a
                jr      loc_48A4
; ---------------------------------------------------------------------------
loc_48E9:                               ; CODE XREF: RAM:48DC↑j
                cp      36h ; '6'
                jr      z, loc_48F7
                ld      a, 36h ; '6'
                ld      (loc_48DA+1), a

loc_48F2:                               ; DATA XREF: sub_4643+97↑w
                ld      de, 21Bh
                jr      loc_48DE
; ---------------------------------------------------------------------------
loc_48F7:                               ; CODE XREF: RAM:48D4↑j
                                        ; RAM:48EB↑j
                ld      a, 1Bh
                ld      (loc_48DA+1), a
                ret
; ===================================================================
sub_48FD:                               ; CODE XREF: RAM:4342↑p
                                        ; sub_435D+30↑p ...
                add     hl, hl
                push    hl
                add     hl, hl
                push    hl
                add     hl, hl
                pop     bc
                add     hl, bc
                pop     bc
                add     hl, bc
                ret
; ===================================================================


sub_4907:                               ; CODE XREF: sub_4198+57↑p
                                        ; sub_4325+4↑p
                add     hl, hl
                add     hl, hl
                add     hl, hl
                add     hl, hl
                ret
; ===================================================================


sub_490C:                               ; CODE XREF: RAM:loc_44B7↑p
                add     hl, hl
                add     hl, hl
                push    hl
                add     hl, hl
                pop     bc
                add     hl, bc
                ret
; ===================================================================
sub_4913:                               ; CODE XREF: sub_4198+89↑p
                ld      a, l
                and     0Fh
                ld      c, a
                ld      a, l
                and     0F0h
                srl     h
                rra
                srl     h
                rra
                srl     h
                rra
                srl     h
                rra
                ld      b, a
                ret
; ===================================================================
sub_4928:                               ; CODE XREF: RAM:4575↑p
                                        ; RAM:4584↑p

                push    bc
                push    de
                push    af
                ld      a, (byte_5208)
                ld      b, c
                ld      c, 56h ; 'V'
                rst     8
                jp      c, loc_4C56
                pop     af
                pop     de
                pop     bc
                ret
; ===================================================================
sub_4939:                               ; CODE XREF: RAM:4551↑p
                                        ; RAM:4560↑p

                push    bc
                push    de
                push    hl
                push    af
                ld      de, (word_5226)
                ld      a, (de)
                ld      d, c
                ld      e, 0
                ld      c, 13h
                rst     10h
                jp      c, loc_4C61
                pop     af
                pop     hl
                pop     de
                pop     bc
                ret
; ---------------------------------------------------------------------------

loc_4950:                               ; CODE XREF: sub_440F+F↑p
                                        ; sub_440F+15↑p ...
                push    hl
                push    bc

loc_4952:                               ; DATA XREF: sub_440F+3↑w
                                        ; RAM:489E↑w
                ld      bc, 58h ; 'X'
                rst     10h
                pop     bc
                pop     hl
                ret
; ---------------------------------------------------------------------------
                ld      (loc_496D+1), a
                ld      hl, 210h
                ld      de, 50h ; 'P'
                ld      ix, 100h
                ld      bc, 59h ; 'Y'
                rst     8
                jp      c, loc_4C56

loc_496D:                               ; DATA XREF: RAM:4959↑w
                ld      a, 0
                ld      c, 51h ; 'Q'
                rst     8
                jp      c, loc_4C56
                ret

; ===================================================================


sub_4976:                               ; CODE XREF: sub_4300+7↑p
                ld      l, a
                and     0C0h
                rlca
                rlca
                ld      h, a
                ld      b, a
                ld      a, l
                and     3Fh ; '?'
                ld      l, a
                jr      z, loc_4984
                inc     b

loc_4984:                               ; CODE XREF: sub_4976+B↑j
                push    hl
                ld      c, 3Dh ; '='
                rst     10h
                pop     hl
                jp      c, loc_4C61
                ret
; ===================================================================
sub_498D:                               ; CODE XREF: sub_49D9+7↓p
                add     a, c
                ld      c, a
                jp      nc, locret_4993
                inc     b

locret_4993:                            ; CODE XREF: sub_498D+2↑j
                ret
; ===================================================================
sub_4994:                               ; CODE XREF: sub_4198+86↑p
                                        ; sub_4325+7↑p ...
                add     a, l
                ld      l, a
                jp      nc, locret_499A
                inc     h

locret_499A:                            ; CODE XREF: sub_4994+2↑j
                ret
; ---------------------------------------------------------------------------
loc_499B:                               ; CODE XREF: RAM:4778↑j
                                        ; RAM:4C9D↓j
                call    nullsub_1
                call    nullsub_2
                ld      bc, 41h ; 'A'
                rst     10h
                ret
; ---------------------------------------------------------------------------
                call    sub_4AD6
                ld      de, 1248h
                ld      hl, 4FF8h
                call    loc_4A70
                ld      de, 1348h
                ld      hl, 4FF8h
                call    loc_4A70
                call    sub_4AA3
                ld      de, 1448h
                ld      hl, 4FFCh
                call    loc_4A70
                ld      de, 0Eh
                ld      h, b
                ld      l, c
                call    sub_4AA3
                ld      de, 848h
                ld      hl, 4FFCh
                call    loc_4A70
                ret

; ===================================================================
sub_49D9:                               ; CODE XREF: RAM:4339↑p
                ld      bc, 0

loc_49DC:                               ; CODE XREF: sub_49D9+D↓j
                or      a
                ret     z
                ex      af, af'
                ld      a, (hl)
                call    sub_498D
                ex      af, af'
                add     hl, de
                dec     a
                jr      loc_49DC
; ===================================================================
sub_49E8:                               ; CODE XREF: RAM:418B↑p
                                        ; RAM:42D0↑p
                ld      hl, (word_5222)
                ld      de, (word_5220)
                ld      ix, 8000h

loc_49F3:                               ; CODE XREF: sub_49E8+21↓j
                ld      a, (hl)
                and     a
                jr      z, loc_4A0B
                dec     a
                jr      z, loc_4A03
                ld      bc, 10h
                ldir
                inc     xl
                jr      loc_4A07
; ---------------------------------------------------------------------------

loc_4A03:                               ; CODE XREF: sub_49E8+10↑j
                ld      bc, 10h
                add     hl, bc

loc_4A07:                               ; CODE XREF: sub_49E8+19↑j
                dec     xh
                jr      nz, loc_49F3

loc_4A0B:                               ; CODE XREF: sub_49E8+D↑j
                ld      a, xl
                ld      hl, (word_522C)
                ld      (hl), a
                ret
; ===================================================================
sub_4A12:                               ; CODE XREF: RAM:4115↑p
                ld      a, (byte_5215)
                call    sub_4AF6
                ld      de, 0
                ld      bc, 1C03h
                ld      hl, 4FA5h
                ld      a, (byte_5214)
                call    sub_4BBB
                ld      de, 200h
                ld      bc, 1C1Dh
                ld      hl, 4FADh
                call    loc_4BD3
                ld      de, 1Ch
                ld      bc, 1C03h
                ld      hl, 4FA5h
                call    loc_4BD3
                ld      de, 21Ch
                ld      bc, 1C1Dh
                ld      hl, 4FADh
                call    loc_4BD3
                ld      hl, 4FB5h
                call    loc_4A70
                ret
; ===================================================================
sub_4A52:                               ; CODE XREF: RAM:47B4↑p
                                        ; RAM:47D5↑p ...
                ld      hl, 5202h
                ld      e, (hl)
                inc     hl
                ld      d, (hl)
                inc     hl
                ld      a, (hl)
                ld      b, 0Ch
                call    loc_4A60
                ret
; ---------------------------------------------------------------------------

loc_4A60:                               ; CODE XREF: RAM:4881↑p
                                        ; sub_4A52+A↑p
                ld      (loc_4A67+2), a

loc_4A63:                               ; CODE XREF: RAM:4A6D↓j
                push    bc
                ld      c, 57h ; 'W'
                rst     10h

loc_4A67:                               ; DATA XREF: RAM:loc_4A60↑w
                ld      bc, 58h ; 'X'
                rst     10h
                inc     e
                pop     bc
                djnz    loc_4A63
                ret
; ---------------------------------------------------------------------------

loc_4A70:                               ; CODE XREF: sub_43E2+24↑p
                                        ; sub_43E2+29↑p ...
                ld      a, (hl)
                inc     hl
                cp      0
                ret     z
                cp      20h ; ' '
                jp      nc, loc_4A96
                cp      16h
                jp      z, loc_4A87
                cp      5
                jp      z, loc_4A8E
                jp      loc_4A70
; ---------------------------------------------------------------------------

loc_4A87:                               ; CODE XREF: RAM:4A7C↑j
                ld      d, (hl)
                inc     hl
                ld      e, (hl)
                inc     hl
                jp      loc_4A70
; ---------------------------------------------------------------------------

loc_4A8E:                               ; CODE XREF: RAM:4A81↑j
                ld      a, (hl)
                inc     hl
                ld      (loc_4A96+1), a
                jp      loc_4A70
; ---------------------------------------------------------------------------

loc_4A96:                               ; CODE XREF: RAM:4A77↑j
                                        ; DATA XREF: sub_43E2+3↑w ...
                ld      b, 0
                push    hl
                push    de
                ld      c, 58h ; 'X'
                rst     10h
                pop     de
                pop     hl
                inc     e
                jp      loc_4A70

; ===================================================================


sub_4AA3:                               ; CODE XREF: RAM:49BB↑p
                                        ; RAM:49CC↑p
                ld      bc, 4FFCh
                ld      de, 2710h
                call    sub_4ACA
                ld      de, 3E8h
                call    sub_4ACA
                ld      de, 64h ; 'd'
                call    sub_4ACA
                ld      de, 0FF0Ah
                ld      a, l

loc_4ABC:                               ; CODE XREF: sub_4AA3+1B↓j
                inc     d
                sub     e
                jr      nc, loc_4ABC
                add     a, 3Ah ; ':'
                ld      (byte_5000), a
                ld      a, d
                add     a, 30h ; '0'
                ld      (bc), a
                ret
; ===================================================================


sub_4ACA:                               ; CODE XREF: sub_4AA3+6↑p
                                        ; sub_4AA3+C↑p ...
                xor     a

loc_4ACB:                               ; CODE XREF: sub_4ACA+4↓j
                inc     a
                sbc     hl, de
                jr      nc, loc_4ACB
                add     hl, de
                add     a, 2Fh ; '/'
                ld      (bc), a
                inc     bc
                ret
; ===================================================================


sub_4AD6:                               ; CODE XREF: RAM:49A6↑p
                ld      de, 640Ah
                ld      bc, 0FFFFh
                ld      hl, 4FFAh

loc_4ADF:                               ; CODE XREF: sub_4AD6+B↓j
                inc     b
                sub     d
                jr      nc, loc_4ADF
                add     a, d

loc_4AE4:                               ; CODE XREF: sub_4AD6+10↓j
                inc     c
                sub     e
                jr      nc, loc_4AE4
                add     a, 3Ah ; ':'
                ld      (hl), a
                dec     hl
                ld      a, c
                add     a, 30h ; '0'
                ld      (hl), a
                dec     hl
                ld      a, b
                add     a, 30h ; '0'
                ld      (hl), a
                ret
; ===================================================================


sub_4AF6:                               ; CODE XREF: sub_4A12+3↑p
                ld      de, 0
                ld      hl, 2050h

loc_4AFC:                               ; CODE XREF: RAM:4B09↓j
                ld      bc, 656h
                ld      a, 20h ; ' '
                rst     10h
                ret
; ---------------------------------------------------------------------------

loc_4B03:                               ; CODE XREF: RAM:411E↑p
                                        ; RAM:413C↑p ...
                ld      de, 301h
                ld      hl, 1B1Ah
                jr      loc_4AFC

; ===================================================================


sub_4B0B:                               ; CODE XREF: RAM:411B↑p
                                        ; RAM:4139↑p ...
                ld      a, (loc_4B03+1)
                cp      1
                jr      z, loc_4B1A
                ld      bc, 1
                ld      hl, 5209h
                jr      loc_4B22
; ---------------------------------------------------------------------------

loc_4B1A:                               ; CODE XREF: sub_4B0B+5↑j
                ld      bc, 1
                ld      hl, 520Ch
                jr      loc_4B22
; ---------------------------------------------------------------------------

loc_4B22:                               ; CODE XREF: sub_4B0B+D↑j
                                        ; sub_4B0B+15↑j
                ld      d, h
                ld      e, l
                inc     de
                ld      (hl), 0
                ldir
                ret

; ===================================================================


sub_4B2A:                               ; CODE XREF: sub_4198+F↑p
                ld      de, 8E4h
                add     hl, de
                bit     7, (hl)
                jr      nz, loc_4B46
                inc     hl
                ld      c, (hl)
                inc     hl
                ld      h, (hl)
                ld      l, c
                ld      e, a
                ld      d, 0
                or      a
                sbc     hl, de
                jr      c, loc_4B41
                or      a
                ret
; ---------------------------------------------------------------------------

loc_4B41:                               ; CODE XREF: sub_4B2A+13↑j
                ld      hl, 4B4Eh
                jr      loc_4B49
; ---------------------------------------------------------------------------

loc_4B46:                               ; CODE XREF: sub_4B2A+6↑j
                ld      hl, 4B68h

loc_4B49:                               ; CODE XREF: sub_4B2A+1A↑j
                call    loc_4A70
                scf
                ret
; ---------------------------------------------------------------------------
                db 16h, 1Fh, 15h, 8Dh, 0A5h, 0E2h, 20h, 0ACh, 0A5h, 0E1h
                db 0E2h, 0A0h, 20h, 0ADh, 0A0h
aTrd:           db ' TRD '
                db 0A4h, 0A8h, 0E1h, 0AAh, 0A5h, 0
                db  16h
                db  1Fh
                db    0
                db  8Dh
                db 0A0h
aTrd_0:         db ' TRD '
                db 0A4h, 0A8h, 0E1h, 0AAh, 0A5h, 20h, 0E3h, 0A6h, 0A5h
                db 20h, 0ADh, 0A0h, 0E5h, 0AEh, 0A4h, 0A8h, 0E2h, 0E1h
                db 0EFh
a128:           db ' 128 '
                db 0E4h, 0A0h, 0A9h, 0ABh, 0AEh, 0A2h, 0

; ===================================================================


sub_4B91:                               ; CODE XREF: sub_4198+47↑p

                ld      a, (byte_5205)
                ld      c, 3Eh ; '>'
                rst     10h
                jp      c, loc_4C61
                ret
; ===================================================================


nullsub_1:                              ; CODE XREF: RAM:loc_499B↑p
                                        ; DATA XREF: RAM:4BA7↓w
                ret
; ---------------------------------------------------------------------------
                ld      a, (byte_520F)
                ld      c, 12h
                rst     10h
                jp      c, loc_4C61
                ld      a, 0C9h
                ld      (nullsub_1), a
                ret
; ===================================================================


nullsub_2:                              ; CODE XREF: RAM:499E↑p
                                        ; DATA XREF: RAM:4BB7↓w
                ret
; ---------------------------------------------------------------------------
                ld      a, (byte_5210)
                ld      c, 12h
                rst     10h
                jp      c, loc_4C61
                ld      a, 0C9h
                ld      (nullsub_2), a
                ret

; ===================================================================


sub_4BBB:                               ; CODE XREF: sub_4A12+12↑p
                ld      (loc_4C00+2), a
                ld      (loc_4C0A+2), a
                ld      (loc_4C14+2), a
                ld      (loc_4C21+2), a
                ld      (loc_4C2B+2), a
                ld      (loc_4C35+2), a
                ld      (loc_4C3F+2), a
                ld      (loc_4C4B+2), a

loc_4BD3:                               ; CODE XREF: sub_4A12+1E↑p
                                        ; sub_4A12+2A↑p ...
                ld      a, (hl)
                inc     hl
                ld      (loc_4C03+1), a
                ld      a, (hl)
                inc     hl
                ld      (loc_4C0D+1), a
                ld      a, (hl)
                inc     hl
                ld      (loc_4C17+1), a
                ld      a, (hl)
                inc     hl
                ld      (loc_4C24+1), a
                ld      a, (hl)
                inc     hl
                ld      (loc_4C2E+1), a
                ld      a, (hl)
                inc     hl
                ld      (loc_4C38+1), a
                ld      a, (hl)
                inc     hl
                ld      (loc_4C42+1), a
                ld      a, (hl)
                inc     hl
                ld      (loc_4C4E+1), a
                dec     b
                dec     b
                dec     c
                dec     c
                push    bc

loc_4C00:                               ; DATA XREF: sub_4BBB↑w
                ld      bc, 58h ; 'X'

loc_4C03:                               ; DATA XREF: RAM:4BD5↑w
                ld      a, 0C9h
                rst     10h
                inc     e
                pop     bc
                push    bc

loc_4C09:                               ; CODE XREF: RAM:4C12↓j
                push    bc

loc_4C0A:                               ; DATA XREF: sub_4BBB+3↑w
                ld      bc, 58h ; 'X'

loc_4C0D:                               ; DATA XREF: RAM:4BDA↑w
                ld      a, 0CDh
                rst     10h
                inc     e
                pop     bc
                djnz    loc_4C09

loc_4C14:                               ; DATA XREF: sub_4BBB+6↑w
                ld      bc, 58h ; 'X'

loc_4C17:                               ; DATA XREF: RAM:4BDF↑w
                ld      a, 0BBh
                rst     10h
                inc     d
                pop     bc
                push    bc
                ld      a, b
                ld      b, c
                ld      c, a

loc_4C20:                               ; CODE XREF: RAM:4C29↓j
                push    bc

loc_4C21:                               ; DATA XREF: sub_4BBB+9↑w
                ld      bc, 58h ; 'X'

loc_4C24:                               ; DATA XREF: RAM:4BE4↑w
                ld      a, 0BAh
                rst     10h
                inc     d
                pop     bc
                djnz    loc_4C20

loc_4C2B:                               ; DATA XREF: sub_4BBB+C↑w
                ld      bc, 58h ; 'X'

loc_4C2E:                               ; DATA XREF: RAM:4BE9↑w
                ld      a, 0BCh
                rst     10h
                dec     e
                pop     bc
                push    bc

loc_4C34:                               ; CODE XREF: RAM:4C3D↓j
                push    bc

loc_4C35:                               ; DATA XREF: sub_4BBB+F↑w
                ld      bc, 58h ; 'X'

loc_4C38:                               ; DATA XREF: RAM:4BEE↑w
                ld      a, 0CDh
                rst     10h
                dec     e
                pop     bc
                djnz    loc_4C34

loc_4C3F:                               ; DATA XREF: sub_4BBB+12↑w
                ld      bc, 58h ; 'X'

loc_4C42:                               ; DATA XREF: RAM:4BF3↑w
                ld      a, 0C8h
                rst     10h
                dec     d
                pop     bc
                ld      a, b
                ld      b, c
                ld      c, a

loc_4C4A:                               ; CODE XREF: RAM:4C53↓j
                push    bc

loc_4C4B:                               ; DATA XREF: sub_4BBB+15↑w
                ld      bc, 58h ; 'X'

loc_4C4E:                               ; DATA XREF: RAM:4BF8↑w
                ld      a, 0BAh
                rst     10h
                dec     d
                pop     bc
                djnz    loc_4C4A
                ret
; ---------------------------------------------------------------------------
loc_4C56:                               ; CODE XREF: sub_4928+A↑j
                                        ; RAM:496A↑j ...
                ld      a, 20h ; ' '
                ld      (byte_4CA0), a
                ld      hl, 4CA1h
                jp      loc_4C79
; ---------------------------------------------------------------------------

loc_4C61:                               ; CODE XREF: RAM:4108↑j
                                        ; RAM:410F↑j ...
                ld      (byte_4CA0), a
                cp      20h ; ' '
                jr      c, loc_4C6D
                ld      a, 20h ; ' '
                ld      (byte_4CA0), a

loc_4C6D:                               ; CODE XREF: sub_4198+ACE↑j
                add     a, a
                ld      hl, 4F63h
                ld      d, 0
                ld      e, a
                add     hl, de
                ld      a, (hl)
                inc     hl
                ld      h, (hl)
                ld      l, a

loc_4C79:                               ; CODE XREF: sub_4928+336↑j
                ld      (loc_4C94+1), hl
                ld      b, h
                xor     a
                ld      d, h
                ld      e, l
                cpir
                sbc     hl, de
                ld      a, l
                srl     a
                ld      l, a
                ld      a, 29h ; ')'
                sub     l
                ld      (loc_4C8E+1), a
loc_4C8E:                               ; DATA XREF: sub_4198+AF3↑w
                ld      de, 1F00h
                ld      c, 52h ; 'R'
                rst     10h

loc_4C94:                               ; DATA XREF: sub_4198:loc_4C79↑w
                ld      hl, 0
                ld      c, 5Ch ; '\'
                rst     10h

loc_4C9A:                               ; DATA XREF: RAM:4100↑w
                ld      sp, 0
                jp      loc_499B
; ---------------------------------------------------------------------------
byte_4CA0:      db 0                    ; DATA XREF: sub_4928+330↑w
                                        ; sub_4198:loc_4C61↑w ...
                db 8Eh, 0E8h, 0A8h, 0A1h, 0AAh, 0A0h                    ;Ошибка BIOS
aBios:          db ' BIOS',0
                db 0A2h, 0E1h, 0A5h, 20h, 0ADh, 0AEh, 0E0h, 0ACh, 0A0h  ;все нормально
                db 0ABh, 0ECh, 0ADh, 0AEh, 0

                db 0ADh, 0A5h, 0A2h, 0A5h, 0E0h, 0ADh, 0EBh, 0A9h, 20h  ;неверный номер функции
                db 0ADh, 0AEh, 0ACh, 0A5h, 0E0h, 20h, 0E4h, 0E3h, 0ADh
                db 0AAh, 0E6h
                db 0A8h, 0A8h
                db 0

                db 0ADh, 0A5h, 0AFh, 0E0h, 0A0h, 0A2h, 0A8h, 0ABh, 0ECh ;неправильный номер устройства
                db 0ADh, 0EBh, 0A9h, 20h, 0ADh, 0AEh, 0ACh, 0A5h, 0E0h
                db 20h, 0E3h, 0E1h, 0E2h, 0E0h, 0AEh, 0A9h, 0E1h, 0E2h
                db 0A2h, 0A0h, 0

                db 0E4h, 0A0h, 0A9h, 0ABh, 20h, 0ADh, 0A5h, 20h, 0AEh   ;файл не обнаружен
                db 0A1h, 0ADh, 0A0h, 0E0h, 0E3h, 0A6h, 0A5h, 0ADh, 0

                db 0ADh, 0A5h, 0A2h, 0A5h, 0E0h, 0ADh, 0EBh, 0A9h, 20h  ;неверный путь
                db 0AFh, 0E3h, 0E2h, 0ECh, 0

                db 0ADh, 0A5h, 0E1h, 0E3h, 0E9h, 0A5h, 0E1h, 0E2h, 0A2h ;несуществующий файловый манипулятор
                db 0E3h, 0EEh, 0E9h, 0A8h, 0A9h, 20h, 0E4h, 0A0h, 0A9h
                db 0ABh, 0AEh, 0A2h, 0EBh, 0A9h, 20h, 0ACh, 0A0h, 0ADh
                db 0A8h, 0AFh, 0E3h, 0ABh, 0EFh, 0E2h, 0AEh, 0E0h, 0

                db 0ADh, 0A5h, 0E2h, 20h, 0E1h, 0A2h, 0AEh, 0A1h, 0AEh  ;нет свободного файлового манипулятора
                db 0A4h, 0ADh, 0AEh, 0A3h, 0AEh, 20h, 0E4h, 0A0h, 0A9h
                db 0ABh, 0AEh, 0A2h, 0AEh, 0A3h, 0AEh, 20h, 0ACh, 0A0h
                db 0ADh, 0A8h, 0AFh, 0E3h, 0ABh, 0EFh, 0E2h, 0AEh, 0E0h
                db 0A0h, 0

                db 0E4h, 0A0h, 0A9h, 0ABh, 20h, 0E1h, 0E3h, 0E9h, 0A5h  ;файл существует
                db 0E1h, 0E2h, 0A2h, 0E3h, 0A5h, 0E2h, 0

                db 0E4h, 0A0h, 0A9h, 0ABh, 20h, 0E2h, 0AEh, 0ABh, 0ECh  ;файл только для чтения
                db 0AAh, 0AEh, 20h, 0A4h, 0ABh, 0EFh, 20h, 0E7h, 0E2h
                db 0A5h, 0ADh, 0A8h, 0EFh, 0

                db 0AFh, 0A5h, 0E0h, 0A5h, 0AFh, 0AEh, 0ABh, 0ADh, 0A5h ;переполнение ROOT (корневого каталога)
                db 0ADh, 0A8h, 0A5h
aRoot:          db ' ROOT ('
                db 0AAh, 0AEh, 0E0h, 0ADh, 0A5h, 0A2h, 0AEh, 0A3h, 0AEh
                db 20h, 0AAh, 0A0h, 0E2h, 0A0h, 0ABh, 0AEh, 0A3h, 0A0h
                db 29h, 0

                db 0ADh, 0A5h, 0E2h, 20h, 0E1h, 0A2h, 0AEh, 0A1h, 0AEh  ;нет свободного места на диске
                db 0A4h, 0ADh, 0AEh, 0A3h, 0AEh, 20h, 0ACh, 0A5h, 0E1h
                db 0E2h, 0A0h, 20h, 0ADh, 0A0h, 20h, 0A4h, 0A8h, 0E1h
                db 0AAh, 0A5h, 0

                db 0AAh, 0A0h, 0E2h, 0A0h, 0ABh, 0AEh, 0A3h, 20h, 0ADh  ;каталог не пуст
                db 0A5h, 20h, 0AFh, 0E3h, 0E1h, 0E2h, 0

                db 0AFh, 0AEh, 0AFh, 0EBh, 0E2h, 0AAh, 0A0h, 20h, 0E3h  ;попытка удалить текущий каталог
                db 0A4h, 0A0h, 0ABh, 0A8h, 0E2h, 0ECh, 20h, 0E2h, 0A5h
                db 0AAh, 0E3h, 0E9h
                db 0A8h, 0A9h, 20h, 0AAh, 0A0h, 0E2h, 0A0h, 0ABh, 0AEh
                db 0A3h, 0

                db 0ADh, 0A5h, 0A8h, 0A7h, 0A2h, 0A5h, 0E1h, 0E2h, 0ADh ;неизвестный формат
                db 0EBh, 0A9h, 20h, 0E4h, 0AEh, 0E0h, 0ACh, 0A0h, 0E2h
                db 0

                db 0ADh, 0A5h, 0A2h, 0AEh, 0A7h, 0ACh, 0AEh, 0A6h, 0ADh ;невозможная операция
                db 0A0h, 0EFh, 20h, 0AEh, 0AFh, 0A5h, 0E0h, 0A0h, 0E6h
                db 0A8h, 0EFh, 0

                db 0AAh, 0A0h, 0E2h, 0A0h, 0ABh, 0AEh, 0A3h, 20h, 0E3h  ;каталог уже есть
                db 0A6h, 0A5h
                db 20h, 0A5h, 0E1h, 0E2h, 0ECh, 0

                db 0ADh, 0A5h, 0A2h, 0A5h, 0E0h, 0ADh, 0AEh, 0A5h, 20h  ;неверное имя
                db 0A8h, 0ACh, 0EFh, 0

                db 0ADh, 0A5h, 0AFh, 0E0h, 0A0h, 0A2h, 0A8h, 0ABh, 0ECh ;неправильный EXE-файл
                db 0ADh, 0EBh, 0A9h, 20h, 45h, 58h, 45h, 2Dh, 0E4h, 0A0h
                db 0A9h, 0ABh, 0

                db 0ADh, 0A5h, 20h, 0AFh, 0AEh                          ;не поддерживаемая версия EXE-файла
                db 0A4h, 0A4h
                db 0A5h, 0E0h, 0A6h, 0A8h, 0A2h, 0A0h, 0A5h, 0ACh, 0A0h
                db 0EFh, 20h, 0A2h, 0A5h, 0E0h, 0E1h, 0A8h, 0EFh, 20h
                db 45h, 58h, 45h, 2Dh, 0E4h, 0A0h, 0A9h, 0ABh, 0A0h, 0

                db 0E0h, 0A5h, 0E1h, 0E3h, 0E0h, 0E1h, 20h, 0ADh, 0A5h  ;ресурс не доступен
                db 20h, 0A4h, 0AEh, 0E1h, 0E2h, 0E3h, 0AFh, 0A5h, 0ADh
                db 0

                db 0ADh, 0A5h, 0E2h, 20h, 0A3h, 0AEh, 0E2h, 0AEh, 0A2h  ;нет готовности
                db 0ADh, 0AEh, 0E1h, 0E2h, 0A8h, 0

                db 0AEh, 0E8h, 0A8h, 0A1h, 0AAh, 0A0h, 20h, 0AFh, 0AEh  ;ошибка позиционирования
                db 0A7h, 0A8h, 0E6h, 0A8h, 0AEh, 0ADh, 0A8h, 0E0h, 0AEh
                db 0A2h, 0A0h, 0ADh, 0A8h, 0EFh, 0

                db 0E1h, 0A5h, 0AAh, 0E2h, 0AEh, 0E0h, 20h, 0ADh, 0A5h  ;сектор не найден
                db 20h, 0ADh, 0A0h, 0A9h, 0A4h, 0A5h, 0ADh, 0

                db 0AEh, 0E8h, 0A8h, 0A1h, 0AAh, 0A0h, 20h, 43h, 52h, 43h       ;ошибка CRC
                db 0

                db 0A7h, 0A0h, 0E9h, 0A8h, 0E2h, 0A0h, 20h, 0A7h, 0A0h  ;защита записи
                db 0AFh, 0A8h, 0E1h, 0A8h, 0

                db 0AEh, 0E8h, 0A8h, 0A1h, 0AAh, 0A0h, 20h, 0E7h, 0E2h  ;ошибка чтения
                db 0A5h, 0ADh, 0A8h, 0EFh, 0

                db 0AEh, 0E8h, 0A8h, 0A1h, 0AAh, 0A0h, 20h, 0A7h, 0A0h  ;ошибка записи
                db 0AFh, 0A8h, 0E1h, 0A8h, 0

                db 0AEh, 0A1h, 0E9h, 0A0h, 0EFh, 20h, 0AEh, 0E8h, 0A8h  ;общая ошибка
                db 0A1h, 0AAh, 0A0h, 0

                db 0ADh, 0A5h, 0A2h, 0A5h, 0E0h, 0ADh, 0AEh, 0A5h, 20h  ;неверное имя файла
                db 0A8h, 0ACh, 0EFh, 20h, 0E4h, 0A0h, 0A9h, 0ABh, 0A0h
                db 0

                db 0A7h, 0A0h, 0E0h, 0A5h, 0A7h, 0A5h, 0E0h, 0A2h, 0A8h ;зарезервировано
                db 0E0h, 0AEh, 0A2h, 0A0h, 0ADh, 0AEh, 0

                db 0ADh, 0A5h, 0A4h, 0AEh, 0E1h, 0E2h, 0A0h, 0E2h, 0AEh ;недостаточно памяти
                db 0E7h, 0ADh, 0AEh, 20h, 0AFh, 0A0h, 0ACh, 0EFh, 0E2h
                db 0A8h, 0

                db 0ADh, 0A5h, 0E1h, 0E3h, 0E9h, 0A5h, 0E1h, 0E2h, 0A2h ;несуществующий блок памяти
                db 0E3h, 0EEh, 0E9h, 0A8h, 0A9h, 20h, 0A1h, 0ABh, 0AEh
                db 0AAh, 20h, 0AFh, 0A0h, 0ACh, 0EFh, 0E2h, 0A8h, 0

                db 0E5h, 0E3h, 0A9h, 0ADh, 0EFh, 20h, 0AAh, 0A0h, 0AAh  ;хуйня какая-то (было в оригинале)
                db 0A0h, 0EFh, 2Dh, 0E2h, 0AEh, 0
                db 0ADh, 4Ch, 0BBh, 4Ch, 0D2h, 4Ch, 0F0h, 4Ch, 2, 4Dh
                db 10h, 4Dh, 34h, 4Dh, 5Ah, 4Dh, 6Ah, 4Dh, 81h, 4Dh, 0A8h
                db 4Dh, 0C6h, 4Dh, 0D6h, 4Dh, 0F6h, 4Dh, 9, 4Eh, 1Eh, 4Eh
                db 2Fh, 4Eh, 3Ch, 4Eh, 52h, 4Eh, 75h, 4Eh, 88h, 4Eh, 97h
                db 4Eh, 0AFh, 4Eh, 0C0h, 4Eh, 0CBh, 4Eh, 0D9h, 4Eh, 0E7h
                db 4Eh, 0F5h, 4Eh, 2, 4Fh, 15h, 4Fh, 25h, 4Fh, 39h, 4Fh
                db 54h, 4Fh, 0C9h
                db 0CDh, 0BBh, 0BAh, 0BCh, 0CDh, 0C8h, 0BAh, 0C7h, 0C4h
                db 0B6h, 0BAh, 0BCh, 0CDh, 0C8h, 0BAh, 5, 0Ah, 16h, 0
aSpectratorV01: db ';SPECTRATOR  v0.1'
                db  16h
                db    2
                db  39h ; 9
aProgrammByDead:db 'Programm  by  DeadMaN'
                db  16h
                db    3
                db  3Bh ; ;
aAlphastudio200:db 'AlphaStudio, 2003',0
                ds 9, 0
byte_5000:      ds 202h, 0          ; DATA XREF: sub_4AA3+1F↑w
word_5202:      dw 0                    ; DATA XREF: RAM:4879↑w
byte_5204:      db 0                    ; DATA XREF: RAM:4876↑w
byte_5205:      db 0                    ; DATA XREF: sub_4300+A↑w
                                        ; sub_4588+6↑r ...
word_5206:      dw 0                    ; DATA XREF: sub_4198+40↑r
                                        ; sub_4300+D↑w
byte_5208:      db 0                    ; DATA XREF: sub_4928+3↑r
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
byte_520F:      db 0                    ; DATA XREF: RAM:4B9C↑r
byte_5210:      db 0                    ; DATA XREF: RAM:4BAC↑r
byte_5211:      db 5                    ; DATA XREF: sub_45D5+2B↑r
byte_5212:      db 6                    ; DATA XREF: sub_460C+2B↑r
byte_5213:      db 7                    ; DATA XREF: sub_459E+2B↑r
byte_5214:      db 7                    ; DATA XREF: sub_4A12+F↑r
byte_5215:      db 7                    ; DATA XREF: sub_4A12↑r
byte_5216:      db 7                    ; DATA XREF: sub_440F↑r
byte_5217:      db 0Dh                  ; DATA XREF: sub_43E2↑r
                db '*.*',0
word_521C:      dw 0                    ; DATA XREF: sub_4643+30↑r
                                        ; sub_46DF+6C↑r ...
word_521E:      dw 0                    ; DATA XREF: sub_43E2+6↑r
                                        ; sub_4428↑r ...
word_5220:      dw 0                    ; DATA XREF: sub_4198+1B↑r
                                        ; sub_435D+14↑r ...
word_5222:      dw 0                    ; DATA XREF: sub_43A0+14↑r
                                        ; sub_4643+27↑w ...
word_5224:      dw 0                    ; DATA XREF: sub_4264+6↑r
                                        ; sub_440F+9↑r ...
word_5226:      dw 0                    ; DATA XREF: sub_4300+11↑r
                                        ; sub_435D+7↑r ...
word_5228:      dw 0                    ; DATA XREF: sub_4198↑r
                                        ; sub_4198+13↑r ...
word_522A:      dw 0                    ; DATA XREF: sub_4643+F↑w
                                        ; sub_46DF+F↑w ...
word_522C:      dw 0                    ; DATA XREF: sub_4198+17↑r
                                        ; sub_435D+29↑r ...
word_522E:      dw 0                    ; DATA XREF: RAM:loc_415A↑r
                                        ; sub_459E+31↑r ...
word_5230:      dw 0                    ; DATA XREF: sub_435D+B↑r
                                        ; sub_43A0+B↑r ...
                db    0
                db    0
word_5234:      dw 0                    ; DATA XREF: sub_4643+3F↑w
                                        ; sub_4643+63↑w ...
word_5236:      dw 0                    ; DATA XREF: sub_4643+45↑w
                                        ; sub_46DF+45↑w
word_5238:      dw 0                    ; DATA XREF: sub_4643+4B↑w
                                        ; sub_46DF+4B↑w
word_523A:      dw 0                    ; DATA XREF: sub_4643+51↑w
                                        ; sub_46DF+51↑w
word_523C:      dw 0                    ; DATA XREF: sub_4198+34↑r
                                        ; sub_4198+A9↑r ...
word_523E:      dw 0                    ; DATA XREF: sub_4643+5D↑w
                                        ; sub_46DF+5D↑w
word_5240:      dw 0                    ; DATA XREF: sub_4198+C↑r
                                        ; sub_4198+21↑r ...
word_5242:      dw 0                    ; DATA XREF: sub_4643+6F↑w
                                        ; sub_46DF+6F↑w
word_5244:      dw 0                    ; DATA XREF: RAM:415E↑r
                                        ; sub_4643+69↑w ...

EXEend:
                savebin	"spectr.exe",EXEhead,EXEend-EXEhead