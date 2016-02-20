Izayoi_Header:
	smpsHeaderStartSong
	smpsHeaderVoice	Izayoi_Voices
	smpsHeaderChan	$06, $03
	smpsHeaderTempo	$01, $08
	smpsHeaderDAC	Izayoi_DAC
	smpsHeaderFM	Izayoi_FM1, $00, $08
	smpsHeaderFM	Izayoi_FM2, $00, $08
	smpsHeaderFM	Izayoi_FM3, $00, $0E
	smpsHeaderFM	Izayoi_FM4, $00, $10
	smpsHeaderFM	Izayoi_FM5, $00, $15
	smpsHeaderPSG	Izayoi_PSG1, $DC, $06, $00, sTone_08
	smpsHeaderPSG	Izayoi_PSG2, $DC, $09, $00, sTone_08
	smpsHeaderPSG	Izayoi_PSG3, $00, $01, $00, sTone_02

Izayoi_FM1:
Izayoi_Jump6:
	dc.b nRst, $30, nRst, $0F
	smpsSetvoice	$3F
	smpsFMAlterVol	$02
	smpsModSet	$05, $03, $BE, $A4
	smpsPanAnim	$02, $01, $00, $03, $02
	dc.b nE4, $15
	smpsModOff
	smpsFMAlterVol	$FE
	smpsSetvoice	$13
	dc.b nC3, $0C
	smpsPanAnim	$00

Izayoi_Jump2:
	smpsCall	Izayoi_Call1
	smpsCall	Izayoi_Call1
	dc.b nRst, $30
	smpsCall	Izayoi_Call2
	dc.b smpsNoAttack, $30
	smpsModSet	$00, $01, $0A, $04
	smpsFMAlterVol	$0A
	dc.b smpsNoAttack, $0C
	smpsFMAlterVol	$0A
	dc.b smpsNoAttack, $0C
	smpsFMAlterVol	$0A
	dc.b smpsNoAttack, $0C
	smpsFMAlterVol	$0A
	dc.b smpsNoAttack, $0C, nRst, $18
	smpsFMAlterVol	$D8
	smpsModSet	$1C, $01, $0A, $04
	smpsFMAlterVol	$07
	smpsAlterPitch	$F4
	smpsCall	Izayoi_Call1
	dc.b nRst, $30
	smpsCall	Izayoi_Call2
	dc.b smpsNoAttack, $18
	smpsFMAlterVol	$07
	smpsAlterPitch	$F4
	smpsPan	 panCentre, $00
	smpsSetvoice	$41
	dc.b nA2, $04, nG2, nA2, nB2, nA2, nB2, nC3
	dc.b nB2, nC3, nD3, nC3, nD3
	smpsFMAlterVol	$FF
	dc.b nE3, nD3, nE3, nFs3, nE3, nFs3, nG3, nFs3
	dc.b nG3, nA3, nG3, nA3, smpsNoAttack, nAb3, $03, smpsNoAttack
	dc.b nG3, smpsNoAttack, nFs3, smpsNoAttack, nF3, smpsNoAttack, nE3, smpsNoAttack
	dc.b nEb3, smpsNoAttack, nD3, smpsNoAttack, nCs3, smpsNoAttack, nC3, smpsNoAttack
	dc.b nB2, smpsNoAttack, nBb2, smpsNoAttack, nA2, smpsNoAttack, nAb2, smpsNoAttack
	dc.b nG2
	smpsPan	 panRight, $00
	smpsFMAlterVol	$01
	smpsCall	Izayoi_Call3
	smpsCall	Izayoi_Call4
	smpsJump	Izayoi_Jump2

Izayoi_Call1:
	smpsSetvoice	$41
	smpsPan	 panRight, $00
	smpsModSet	$0F, $01, $04, $05
	smpsFMAlterVol	$FA
	smpsNoteFill	$02
	smpsSetvoice	$44
	dc.b nA2, $06, nA2, nA2, nA2
	smpsNoteFill	$08
	smpsSetvoice	$41
	dc.b nE3, nD3, nC3
	smpsNoteFill	$00
	dc.b nD3, smpsNoAttack, nD3, nC3, nB2, nA2, $0C, nB2
	dc.b $06, nG2, $0C
	smpsNoteFill	$02
	smpsSetvoice	$44
	dc.b nA2, $06, nA2, nA2, nA2
	smpsSetvoice	$41
	smpsNoteFill	$08
	dc.b nE3, nD3, nC3
	smpsNoteFill	$00
	dc.b nD3, smpsNoAttack, nD3, $30
	smpsNoteFill	$02
	smpsSetvoice	$44
	dc.b nA2, $06, nA2, nA2, nA2
	smpsSetvoice	$41
	smpsNoteFill	$08
	dc.b nE3, nD3, nC3
	smpsNoteFill	$00
	dc.b nD3, smpsNoAttack, nD3, nC3, nB2, nA2, $0C, nB2
	dc.b $06, nG2, $0C
	smpsNoteFill	$02
	smpsSetvoice	$44
	dc.b nA2, $06, nA2, nA2, nA2
	smpsSetvoice	$41
	smpsNoteFill	$08
	dc.b nE3, nD3, nC3
	smpsNoteFill	$00
	dc.b nD3, smpsNoAttack, nD3, $30, smpsNoAttack, nD3, $30
	smpsFMAlterVol	$06
	smpsReturn

Izayoi_Call2:
	smpsFMAlterVol	$04
	smpsSetvoice	$06
	smpsPan	 panCentre, $00
	dc.b nA4, $06, nC5, nE5, nG5, $06, smpsNoAttack, $18
	dc.b smpsNoAttack, $30, nA4, $06, nC5, nE5, nG5, $0C
	dc.b nFs5, $06, nD5, nFs5, $0C, nE5, $06, nC5
	dc.b nE5, $0C, nD5, $06, nAb4, $0C, nA4, $06
	dc.b nC5, nE5, nG5, $06, smpsNoAttack, $18, smpsNoAttack, $30
	dc.b nC5, $06, nE5, nA5, nB5, $0C, nA5, $06
	dc.b nB5, nC6, $0C, nB5, $06, nC6, nD6, $0C
	dc.b nC6, $06, nAb5, $0C
	smpsFMAlterVol	$FC
	smpsSetvoice	$41
	smpsPan	 panRight, $00
	smpsAlterPitch	$0C
	smpsModSet	$1C, $01, $0A, $04
	smpsFMAlterVol	$F9
	dc.b nD3, $06, nA3, nE4, nD4, smpsNoAttack, $18, nRst
	dc.b $06, nD4, nC4, nG3, nC4, nB3, nG3, nA3
	dc.b smpsNoAttack, $06, nFs3, nD3, nG3, $0C, nE3, $06
	dc.b nC3, nFs3, smpsNoAttack, $06, nD3, nA2, nE3, $0C
	dc.b nC3, $06, nG2, $0C, nF3, $06, nC4, nG4
	dc.b nF4, smpsNoAttack, $18, nRst, $06, nF4, nEb4, nBb3
	dc.b nEb4, nD4, nBb3, nC4, smpsNoAttack, $06, nA3, nF3
	dc.b nD4, $0C, nB3, $06, nG3, nE4, smpsNoAttack, $06
	dc.b nCs4, nA3, nFs4, smpsNoAttack, $18
	smpsReturn

Izayoi_Call3:
	smpsSetvoice	$41
	smpsFMAlterVol	$FD

Izayoi_Loop4:
	smpsModSet	$01, $03, $3F, $AF
	dc.b nD4, $06
	smpsModSet	$1C, $01, $0A, $04
	dc.b smpsNoAttack, nE4, $12, smpsNoAttack, $18
	smpsModSet	$01, $03, $3F, $AF
	dc.b nF4, $06
	smpsModSet	$1C, $01, $0A, $04
	dc.b smpsNoAttack, nG4, $12, smpsNoAttack, $18
	smpsModSet	$01, $03, $3F, $AF
	dc.b nE4, $06
	smpsModSet	$1C, $01, $0A, $04
	dc.b smpsNoAttack, nFs4, $12, smpsNoAttack, $18
	smpsModSet	$01, $03, $3F, $AF
	dc.b nEb4, $06
	smpsModSet	$1C, $01, $0A, $04
	dc.b smpsNoAttack, nF4, $12, smpsNoAttack, $18
	smpsLoop	$00, $02, Izayoi_Loop4
	smpsModSet	$01, $03, $3F, $AF
	dc.b nF4, $06
	smpsModSet	$1C, $01, $0A, $04
	dc.b smpsNoAttack, nG4, $12, smpsNoAttack, $18
	smpsModSet	$01, $03, $3F, $AF
	dc.b nAb4, $06
	smpsModSet	$1C, $01, $0A, $04
	dc.b smpsNoAttack, nBb4, $12, smpsNoAttack, $18
	smpsModSet	$01, $03, $3F, $AF
	dc.b nG4, $06
	smpsModSet	$1C, $01, $0A, $04
	dc.b smpsNoAttack, nA4, $12, smpsNoAttack, $18
	smpsModSet	$01, $03, $3F, $AF
	dc.b nFs4, $06
	smpsModSet	$1C, $01, $0A, $04
	dc.b smpsNoAttack, nAb4, $12, smpsNoAttack, $18
	smpsModSet	$01, $03, $3F, $AF
	dc.b nF4, $06
	smpsModSet	$1C, $01, $0A, $04
	dc.b smpsNoAttack, nG4, $12, smpsNoAttack, $18
	smpsModSet	$01, $03, $3F, $AF
	dc.b nAb4, $06
	smpsModSet	$1C, $01, $0A, $04
	dc.b smpsNoAttack, nBb4, $12, smpsNoAttack, $18
	smpsModSet	$01, $03, $3F, $AF
	dc.b nG4, $06
	smpsModSet	$1C, $01, $0A, $04
	dc.b smpsNoAttack, nA4, $12, smpsNoAttack, $18
	smpsModSet	$01, $03, $3F, $AF
	dc.b nFs4, $06
	smpsModSet	$1C, $01, $0A, $04
	dc.b smpsNoAttack, nAb4, $24, smpsNoAttack, $0C
	smpsFMAlterVol	$03
	smpsReturn

Izayoi_Call4:
	smpsSetvoice	$42
	smpsPan	 panRight, $00
	smpsAlterPitch	$0C
	smpsModSet	$1C, $01, $0A, $04
	smpsFMAlterVol	$FD
	smpsPan	 panCentre, $00
	dc.b nBb2, $06, nE4, $0C, nBb2, $06, nFs4, $18
	dc.b smpsNoAttack, $30, nG4, $06, nFs4, nE4, nD4, nE3
	dc.b nC4, nRst, nD4
	smpsSetvoice	$41
	smpsFMAlterVol	$FB
	smpsPan	 panLeft, $00
	dc.b nB3, $03, nC4, nB3, nC4, nB3, $0C
	smpsPan	 panRight, $00
	dc.b nC4, $03, nB3, nA3, nG3, nFs3, nE3, nEb3
	dc.b nD3
	smpsFMAlterVol	$05
	smpsSetvoice	$42
	smpsPan	 panCentre, $00
	dc.b nBb2, $06, nE4, $0C, nBb2, $06, nFs4, $18
	dc.b smpsNoAttack, $30, nG4, $06, nFs4, nE4, nD4, nE3
	dc.b nC4, nRst, nD4
	smpsFMAlterVol	$FE
	dc.b nG5, $03, nC5, nEb5, nC5, nFs5, $03, nB4
	dc.b nD5, nB4, nF5, $03, nBb4, nCs5, nBb4, nE5
	dc.b $03, nA4, nC5, nA4
	smpsFMAlterVol	$02
	smpsPan	 panCentre, $00
	dc.b nBb2, $06, nE4, $0C, nBb2, $06, nFs4, $18
	dc.b smpsNoAttack, $30, nG4, $06, nFs4, nE4, nD4, nE3
	dc.b nC4, nRst, nD4
	smpsSetvoice	$41
	smpsFMAlterVol	$FB
	smpsPan	 panRight, $00
	dc.b nB3, $03, nC4, nB3, nC4, nB3, $0C
	smpsPan	 panLeft, $00
	dc.b nC4, $03, nB3, nA3, nG3, nFs3, nE3, nEb3
	dc.b nD3
	smpsFMAlterVol	$05
	smpsSetvoice	$42
	smpsPan	 panCentre, $00
	dc.b nBb2, $06, nE4, $0C, nBb2, $06, nFs4, $0C
	dc.b nC3, $06, nG4, $0C, nC3, $06, nA4, $0C
	dc.b nEb3, $06, nBb4, $0C, nEb3, $06, nC5, $30
	dc.b smpsNoAttack, $30, nCs5, $06, nC5, nBb4, nAb4, nBb4
	dc.b nFs4, nRst
	smpsFMAlterVol	$FD
	dc.b nAb4
	smpsFMAlterVol	$01
	smpsModSet	$14, $02, $DF, $AF
	dc.b smpsNoAttack, $60
	smpsFMAlterVol	$02
	smpsAlterPitch	$F4
	smpsModSet	$1C, $01, $0A, $04
	smpsFMAlterVol	$03
	smpsReturn
	; Unused
	dc.b $E0, $C0, $80, $30, $80, $80, $18, $EF
	dc.b $30, $E0, $C0, $FB, $0C, $F0, $04, $03
	dc.b $43, $03, $BD, $0C, $F0, $04, $01, $0A
	dc.b $05, $E7, $BF, $30, $E6, $02, $E7, $BE
	dc.b $02, $E7, $BD, $E6, $03, $E7, $BC, $E7
	dc.b $BB, $E6, $04, $E7, $BA, $E7, $B9, $FB
	dc.b $F4, $E6, $F7, $80, $30, $80, $FB, $0C
	dc.b $EF, $3C, $E6, $08, $B1, $04, $A5, $A7
	dc.b $B3, $04, $A5, $A7, $B5, $04, $A5, $A7
	dc.b $B6, $04, $A5, $A7, $B8, $04, $A5, $A7
	dc.b $BA, $04, $A5, $A7, $BD, $04, $A5, $A7
	dc.b $BF, $04, $A5, $A7, $FB, $F4, $E6, $F8
	dc.b $80, $30, $80, $EF, $30, $F0, $0F, $01
	dc.b $04, $05, $E6, $00, $C2, $04, $BF, $C4
	dc.b $BF, $BC, $BF, $F7, $00, $03, $FF, $F5
	dc.b $BD, $BA, $BC, $BA, $B6, $BA, $E6, $00
	dc.b $80, $30, $80, $EF, $42, $FB, $0C, $E6
	dc.b $FD, $F0, $0F, $01, $04, $05, $BD, $06
	dc.b $F0, $05, $02, $32, $32, $B8, $0C, $F7
	dc.b $00, $05, $FF, $EE, $F0, $0F, $01, $04
	dc.b $05, $BD, $06, $FB, $F4, $E6, $03, $F9
	dc.b $E0, $40, $F0, $0F, $01, $04, $05, $EF
	dc.b $41, $E6, $FB, $A2, $12, $A7, $06, $80
	dc.b $0C, $E6, $05, $E0, $C0, $EF, $1E, $E6
	dc.b $FB, $AA, $06, $AB, $E6, $05, $E0, $40
	dc.b $EF, $41, $E6, $FB, $A0, $12, $A7, $06
	dc.b $80, $0C, $E6, $05, $E0, $C0, $EF, $1E
	dc.b $E6, $FB, $A8, $06, $A9, $80, $E6, $05
	dc.b $E0, $40, $EF, $41, $E6, $FB, $9F, $12
	dc.b $A0, $05, $80, $13, $E6, $05, $E0, $C0
	dc.b $EF, $30, $E6, $02, $AE, $06, $BA, $03
	dc.b $B5, $01, $B6, $E7, $B7, $E7, $B8, $05
	dc.b $80, $07, $BA, $04, $80, $02, $E6, $FE
	dc.b $E0, $40, $EF, $41, $E6, $FB, $A2, $06
	dc.b $80, $0C, $E6, $05, $F7, $00, $03, $FF
	dc.b $90, $E6, $FB, $A2, $12, $A7, $06, $80
	dc.b $0C, $E6, $05, $E0, $C0, $EF, $1E, $E6
	dc.b $FB, $AA, $06, $AB, $E6, $05, $E0, $40
	dc.b $EF, $41, $E6, $FB, $A0, $12, $A7, $06
	dc.b $80, $0C, $E6, $05, $E0, $C0, $EF, $1E
	dc.b $E6, $FB, $A8, $06, $A9, $80, $E6, $05
	dc.b $E0, $40, $EF, $41, $E6, $FB, $9F, $12
	dc.b $A0, $0C, $A4, $F0, $01, $03, $E5, $A0
	dc.b $E4, $02, $03, $01, $03, $02, $E7, $30
	dc.b $E6, $05, $FD, $E4, $00, $F9, $EF, $41
	dc.b $E0, $40, $F0, $0F, $01, $04, $05, $E6
	dc.b $FB, $80, $0C, $A5, $12, $A7, $A5, $A7
	dc.b $1E, $80, $0C, $A5, $10, $80, $02, $A7
	dc.b $12, $AC, $06, $AB, $A7, $A5, $1E, $F7
	dc.b $00, $04, $FC, $C9, $E6, $05, $F9, $E0
	dc.b $40, $F0, $0F, $01, $04, $05, $EF, $41
	dc.b $E6, $FB, $A9, $08, $A9, $04, $AB, $06
	dc.b $80, $AC, $80, $AB, $80, $AC, $80, $AB
	dc.b $08, $AE, $04, $80, $0C, $08, $A9, $04
	dc.b $E7, $A9, $08, $A9, $04, $AB, $06, $80
	dc.b $AC, $80, $AB, $80, $AC, $80, $AB, $08
	dc.b $A9, $04, $80, $0C, $08, $A9, $04, $E7
	dc.b $A9, $08, $A9, $04, $AB, $06, $80, $AC
	dc.b $80, $AB, $80, $AC, $80, $AB, $08, $AE
	dc.b $04, $80, $0C, $08, $A9, $04, $E7, $A9
	dc.b $08, $A9, $04, $AB, $06, $80, $AC, $80
	dc.b $AB, $80, $AC, $80, $AB, $08, $A9, $04
	dc.b $F7, $00, $02, $FF, $CE, $80, $0C, $08
	dc.b $80, $04, $A9, $08, $A9, $04, $AB, $06
	dc.b $80, $AC, $80, $AB, $80, $AC, $80, $AB
	dc.b $08, $AE, $04, $80, $0C, $08, $A9, $04
	dc.b $E7, $A9, $08, $A9, $04, $AB, $06, $80
	dc.b $AC, $80, $EF, $41, $A7, $0C, $F0, $01
	dc.b $03, $E5, $A0, $E4, $02, $02, $00, $03
	dc.b $02, $E7, $30, $FD, $E4, $00, $E6, $05
	dc.b $F9

Izayoi_FM2:
	dc.b nRst, $30, nRst
Izayoi_Jump3:
	smpsFMAlterVol	$FE
	smpsSetvoice	$08
	smpsNoteFill	$00
	dc.b nA2, $06, nA2, nRst, $24, nRst, $30
	smpsFMAlterVol	$02
	smpsModSet	$01, $01, $60, $03
	smpsSetLFO	$0C, $5A
	smpsSetvoice	$1F
	smpsNoteFill	$01
	smpsFMAlterVol	$04
	dc.b nA2, $06, nA3, nA2, nA3
	smpsSetLFO	$00, $00
	smpsNoteFill	$00
	smpsModOff
	smpsFMAlterVol	$FC
	dc.b nRst, $18, nRst, $30
	smpsFMAlterVol	$FE
	smpsSetvoice	$08
	dc.b nA2, $06, nA2, nRst, $24, nRst, $30
	smpsFMAlterVol	$02
	smpsModSet	$01, $01, $60, $03
	smpsSetLFO	$0C, $5A
	smpsSetvoice	$1F
	smpsNoteFill	$01
	smpsFMAlterVol	$04
	dc.b nA2, $06, nA3, nA2, nA3
	smpsSetLFO	$00, $00
	smpsNoteFill	$00
	smpsModOff
	smpsFMAlterVol	$FC
	dc.b nRst, $12
	smpsFMAlterVol	$FC
	smpsSetvoice	$41
	dc.b nA3, $06
	smpsModSet	$01, $05, $E5, $A0
	smpsPanAnim	$01, $01, $01, $03, $01
	dc.b smpsNoAttack, $30, smpsNoAttack, $30
	smpsModOff
	smpsPanAnim	$00
	smpsFMAlterVol	$04
	smpsFMAlterVol	$01
	smpsSetvoice	$43

Izayoi_Loop5:
	dc.b nA2, $06
	smpsLoop	$00, $17, Izayoi_Loop5
	dc.b nD3, $06
	smpsModSet	$14, $01, $DF, $AF
	dc.b smpsNoAttack, $18
	smpsModOff
	dc.b nD3, $06, nD3, nD2, nD3

Izayoi_Loop6:
	dc.b nA2, $06
	smpsLoop	$00, $17, Izayoi_Loop6
	dc.b nD3, $06, smpsNoAttack, $30, smpsNoAttack, $30, nRst, $30

Izayoi_Loop7:
	dc.b nA2, $06, nA2, nA2, nA2, nA2, $06, nA2
	dc.b nA2, nA2, nA2, nC3, smpsNoAttack, $0C, nG2, $18
	dc.b nA2, $06, nA2, nA2, nA2, nA2, $06, nA2
	dc.b nA2, nA2, nA2, nE3, smpsNoAttack, $0C, nEb3, $06
	dc.b nEb2, nE3, nE2
	smpsLoop	$00, $02, Izayoi_Loop7
	dc.b nD3, $06, nD3, nD2, nD3, $0C, nD3, $06
	dc.b nD2, nD3, smpsNoAttack, $06, nD3, nD2, nD3, $0C
	dc.b nD3, $06, nD2, nD3, nD3, $06, nD3, nD2
	dc.b nD3, $0C, nD3, $06, nD2, nD3, smpsNoAttack, $06
	dc.b nD3, nD2, nD3, $0C, nD3, $06, nD2, nD3
	dc.b nF3, $06, nF3, nF2, nF3, $0C, nF3, $06
	dc.b nF2, nF3, smpsNoAttack, $06, nF3, nF2, nF3, $0C
	dc.b nF3, $06, nF2, nC3, smpsNoAttack, $06, nC2, nC2
	dc.b nD3, $0C, nD2, $06, nD2, nE3, smpsNoAttack, $06
	dc.b nE2, nE2, nFs3, smpsNoAttack, $18, smpsNoAttack, $18, nFs3
	dc.b $02, smpsNoAttack, nF3, smpsNoAttack, nE3, smpsNoAttack, nEb3, smpsNoAttack
	dc.b nD3, smpsNoAttack, nCs3, smpsNoAttack, nC3, smpsNoAttack, nB2, smpsNoAttack
	dc.b nBb2, smpsNoAttack, nA2, smpsNoAttack, nAb2, smpsNoAttack, nG2, smpsNoAttack
	dc.b nFs2, smpsNoAttack, nF2, smpsNoAttack, nE2, smpsNoAttack, nEb2, smpsNoAttack
	dc.b nD2, smpsNoAttack, nCs2, nRst, $24, nRst, $18

Izayoi_Loop8:
	dc.b nA2, $06
	smpsLoop	$00, $17, Izayoi_Loop8
	dc.b nD3, $06
	smpsModSet	$14, $01, $DF, $AF
	dc.b smpsNoAttack, $18
	smpsModOff
	dc.b nD3, $06, nD3, nD2, nD3

Izayoi_Loop9:
	dc.b nA2, $06
	smpsLoop	$00, $17, Izayoi_Loop9
	dc.b nD3, $06, smpsNoAttack, $30, smpsNoAttack, $30, nRst, $30

Izayoi_Loop10:
	dc.b nA2, $06, nA2, nA2, nA2, nA2, $06, nA2
	dc.b nA2, nA2, nA2, nC3, smpsNoAttack, $0C, nG2, $18
	dc.b nA2, $06, nA2, nA2, nA2, nA2, $06, nA2
	dc.b nA2, nA2, nA2, nE3, smpsNoAttack, $0C, nEb3, $06
	dc.b nEb2, nE3, nE2
	smpsLoop	$00, $02, Izayoi_Loop10
	dc.b nD3, $06, nD3, nD2, nD3, $0C, nD3, $06
	dc.b nD2, nD3, smpsNoAttack, $06, nD3, nD2, nD3, $0C
	dc.b nD3, $06, nD2, nD3, nD3, $06, nD3, nD2
	dc.b nD3, $0C, nD3, $06, nD2, nD3, smpsNoAttack, $06
	dc.b nD3, nD2, nD3, $0C, nD3, $06, nD2, nD3
	dc.b nF3, $06, nF3, nF2, nF3, $0C, nF3, $06
	dc.b nF2, nF3, smpsNoAttack, $06, nF3, nF2, nF3, $0C
	dc.b nF3, $06, nF2, nC3, smpsNoAttack, $06, nC2, nC2
	dc.b nD3, $0C, nD2, $06, nD2, nE3, smpsNoAttack, $06
	dc.b nE2, nE2, nFs3, smpsNoAttack, $18, smpsNoAttack, $18, nFs3
	dc.b $02, smpsNoAttack, nF3, smpsNoAttack, nE3, smpsNoAttack, nEb3, smpsNoAttack
	dc.b nD3, smpsNoAttack, nCs3, smpsNoAttack, nC3, smpsNoAttack, nB2, smpsNoAttack
	dc.b nBb2, smpsNoAttack, nA2, smpsNoAttack, nAb2, smpsNoAttack, nG2, smpsNoAttack
	dc.b nFs2, smpsNoAttack, nF2, smpsNoAttack, nE2, smpsNoAttack, nEb2, smpsNoAttack
	dc.b nD2, smpsNoAttack, nCs2, nRst, $24, nRst, $30, nRst
	dc.b $12

Izayoi_Loop11:
	smpsFMAlterVol	$FE
	dc.b nA2, $0C
	smpsFMAlterVol	$02
	dc.b nA2, $06, nA2, nA2
	smpsFMAlterVol	$FE
	dc.b nA2, nA1, nRst, nA2, $0C
	smpsFMAlterVol	$02
	dc.b nA2, $06, nA2, nA2, nA2
	smpsFMAlterVol	$FE
	dc.b nA3, nA2
	smpsFMAlterVol	$02
	smpsLoop	$00, $04, Izayoi_Loop11

Izayoi_Loop12:
	smpsFMAlterVol	$FE
	dc.b nC3, $0C
	smpsFMAlterVol	$02
	dc.b nC3, $06, nC3, nC3
	smpsFMAlterVol	$FE
	dc.b nC3, nC2, nRst, nC3, $0C
	smpsFMAlterVol	$02
	dc.b nC3, $06, nC3, nC3, nC3
	smpsFMAlterVol	$FE
	dc.b nC4, nC3
	smpsFMAlterVol	$02
	smpsLoop	$00, $03, Izayoi_Loop12
	smpsFMAlterVol	$FE
	dc.b nC3, $0C
	smpsFMAlterVol	$02
	dc.b nC3, $06, nC3, nC3
	smpsFMAlterVol	$FE
	dc.b nC3, nC2, nRst, nC3, $0C
	smpsFMAlterVol	$02
	dc.b nC3, $06, nC3, nC3, nC3
	smpsFMAlterVol	$FE
	dc.b nC4, nC3, $0C
	smpsFMAlterVol	$02

Izayoi_Loop13:
	dc.b nA2, $12, nA2, $06, nA2, $18, nA2, $06
	dc.b nA2, nA2, nA2, nA2, $06, nA2, nA2, nA2
	dc.b nA2, $06, nA2, nA2, nA2, nA2, $06, nA2
	dc.b nA2, nA2, nA2, $06, nA2, nA2, nA2, nA2
	dc.b $06, nA2, nA2, nA2
	smpsLoop	$00, $03, Izayoi_Loop13
	dc.b nA2, $12, nA2, $06, nA2, $0C, nC3, $12
	dc.b nC3, $06, nC3, $0C, nEb3, $12, nEb3, $06
	dc.b nEb3, $06, nEb2, nEb3, nEb2, nEb3, $06, nEb2
	dc.b nEb3, nEb2, nEb3, nEb3, nEb3, $03, nD3, nCs3
	dc.b nC3, nBb2, nA2, nAb2, nG2, nF2, nE2, nEb2
	dc.b nD2, nEb3, $06, nEb3, nRst, $18, nRst, $06
	smpsModSet	$14, $01, $DF, $AF
	dc.b nE3, $06, smpsNoAttack, $60
	smpsModOff
	smpsFMAlterVol	$FF
	smpsJump	Izayoi_Jump3
	; Unused
	dc.b $F2, $F8, $00, $A2, $E6, $FD, $EF, $43
	dc.b $A2, $12, $A7, $06, $80, $18, $A0, $12
	dc.b $A7, $06, $80, $18, $80, $06, $9F, $12
	dc.b $A0, $05, $80, $13, $80, $18, $06, $A2
	dc.b $80, $0C, $F7, $00, $03, $A2, $12, $A7
	dc.b $06, $80, $18, $A0, $12, $A7, $06, $80
	dc.b $18, $80, $06, $9F, $12, $A0, $0C, $9D
	dc.b $E7, $30, $F8, $00, $96, $F8, $00, $93
	dc.b $EF, $08, $E8, $00, $A7, $06, $B3, $B1
	dc.b $A7, $B0, $AE, $A7, $0C, $AE, $06, $AC
	dc.b $A7, $0C, $B0, $06, $A7, $B1, $B3, $F7
	dc.b $00, $04, $FD, $9B, $E6, $04, $EF, $43
	dc.b $F8, $00, $43, $F8, $00, $40, $E6, $FC
	dc.b $F8, $00, $8D, $EF, $43, $A2, $16, $A7
	dc.b $06, $80, $18, $A0, $12, $A7, $06, $80
	dc.b $18, $80, $06, $9F, $12, $A0, $05, $80
	dc.b $13, $80, $18, $06, $A2, $80, $0C, $A2
	dc.b $12, $A7, $06, $80, $18, $A0, $12, $A7
	dc.b $06, $80, $18, $80, $06, $9F, $12, $A0
	dc.b $0C, $9D, $E7, $30, $F8, $00, $34, $F8
	dc.b $00, $31, $F6, $FC, $8F, $AA, $06, $9E
	dc.b $AA, $9E, $AA, $9E, $AA, $9E, $A9, $9D
	dc.b $A9, $9D, $A7, $9B, $F7, $00, $0A, $FF
	dc.b $FA, $AA, $06, $9E, $AA, $9E, $AA, $9E
	dc.b $AA, $9E, $A9, $9D, $A9, $9D, $A8, $9C
	dc.b $A8, $9C, $A7, $9B, $F7, $00, $08, $FF
	dc.b $FA, $F9, $EF, $08, $E8, $00, $A2, $06
	dc.b $A2, $A2, $A2, $F7, $00, $07, $FF, $F3
	dc.b $A2, $9F, $A0, $A1, $A2, $06, $A2, $A2
	dc.b $A2, $F7, $00, $06, $FF, $F7, $A2, $AE
	dc.b $AD, $AC, $AB, $A7, $A8, $A9, $F9, $E0
	dc.b $80, $F0, $0F, $01, $04, $05, $EF, $41
	dc.b $E6, $FE, $A2, $08, $A2, $04, $A2, $06
	dc.b $80, $A2, $80, $A2, $80, $A2, $80, $A2
	dc.b $08, $A2, $04, $80, $0C, $08, $A2, $04
	dc.b $E7, $A2, $08, $A2, $04, $A2, $06, $80
	dc.b $A2, $80, $A2, $80, $A2, $80, $A2, $08
	dc.b $A2, $04, $80, $0C, $08, $A2, $04, $E7
	dc.b $A2, $08, $A2, $04, $A2, $06, $80, $A2
	dc.b $80, $A2, $80, $A2, $80, $A2, $08, $A2
	dc.b $04, $80, $0C, $08, $A2, $04, $E7, $A2
	dc.b $08, $A2, $04, $A2, $06, $80, $A2, $80
	dc.b $A2, $80, $A2, $80, $A2, $08, $A2, $04
	dc.b $80, $14, $E6, $02, $E0, $C0, $F9

Izayoi_FM3:
	dc.b nRst, $30, nRst
Izayoi_Jump4:
	smpsCall	Izayoi_Call5
	smpsCall	Izayoi_Call6
	dc.b nRst, $30
	smpsCall	Izayoi_Call7
	smpsCall	Izayoi_Call8
	dc.b smpsNoAttack, $12, nRst, $06, nRst, $30, nRst, $18
	smpsFMAlterVol	$03
	smpsAlterPitch	$F4
	smpsCall	Izayoi_Call6
	dc.b nRst, $30
	smpsCall	Izayoi_Call7
	smpsCall	Izayoi_Call8
	smpsFMAlterVol	$03
	smpsAlterPitch	$F4
	smpsPan	 panCentre, $00
	smpsFMAlterVol	$FF
	smpsSetvoice	$41
	dc.b nC3, $04, nB2, nC3, nD3, nC3, nD3, nE3
	dc.b nD3, nE3, nFs3, nE3, nFs3, nG3, nFs3, nG3
	dc.b nA3, nG3, nA3
	smpsFMAlterVol	$FF
	dc.b nB3, nA3, nB3, nC4, nB3, nC4, smpsNoAttack, nB3
	dc.b $03, smpsNoAttack, nBb3, smpsNoAttack, nA3, smpsNoAttack, nAb3, smpsNoAttack
	dc.b nG3, smpsNoAttack, nFs3, smpsNoAttack, nF3, smpsNoAttack, nE3, smpsNoAttack
	dc.b nEb3, smpsNoAttack, nD3, smpsNoAttack, nCs3, smpsNoAttack, nC3, smpsNoAttack
	dc.b nB2, smpsNoAttack, nBb2
	smpsFMAlterVol	$02
	smpsCall	Izayoi_Call9
	smpsJump	Izayoi_Jump4
	; Unused
	dc.b $F8, $00, $7C, $F8, $00, $E4, $F8, $00
	dc.b $0B, $F8, $01, $3E, $F8, $00, $DB, $F6
	dc.b $FF, $80, $F2

Izayoi_Call5:
	smpsSetvoice	$42
	smpsPan	 panLeft, $00
	smpsModSet	$0C, $01, $05, $03
	smpsFMAlterVol	$FA
	smpsAlterPitch	$0C
	smpsNoteFill	$02
	dc.b nA1, $06, nA1, nA1, nA1
	smpsNoteFill	$08
	dc.b nB3, nA3, nG3
	smpsNoteFill	$00
	dc.b nA3, smpsNoAttack, nA3, nG3, nFs3, nE3, $0C, nFs3
	dc.b $06, nD3, $0C
	smpsNoteFill	$02
	dc.b nA1, $06, nA1, nA1, nA1
	smpsNoteFill	$08
	dc.b nB3, nA3, nG3
	smpsNoteFill	$00
	dc.b nA3, smpsNoAttack, nA3, $30
	smpsNoteFill	$02
	dc.b nA1, $06, nA1, nA1, nA1
	smpsNoteFill	$08
	dc.b nB3, nA3, nG3
	smpsNoteFill	$00
	dc.b nA3, smpsNoAttack, nA3, nG3, nFs3, nE3, $0C, nFs3
	dc.b $06, nD3, $0C
	smpsNoteFill	$02
	dc.b nA1, $06, nA1, nA1, nA1
	smpsNoteFill	$08
	dc.b nB3, nA3, nG3
	smpsNoteFill	$00
	dc.b nA3, smpsNoAttack, nA3, $30, smpsNoAttack, nA3, $30
	smpsFMAlterVol	$06
	smpsAlterPitch	$F4
	smpsReturn

Izayoi_Call6:
	smpsSetvoice	$42
	smpsPan	 panLeft, $00
	smpsModSet	$0C, $01, $05, $03
	smpsFMAlterVol	$FA
	smpsAlterPitch	$0C
	smpsNoteFill	$05
	dc.b nE2, $06, nE2, nE2, nE2
	smpsNoteFill	$08
	dc.b nB3, nA3, nG3
	smpsNoteFill	$00
	dc.b nA3, smpsNoAttack, nA3, nG3, nFs3, nE3, $0C, nFs3
	dc.b $06, nD3, $0C
	smpsNoteFill	$05
	dc.b nE2, $06, nE2, nE2, nE2
	smpsNoteFill	$08
	dc.b nB3, nA3, nG3
	smpsNoteFill	$00
	dc.b nA3, smpsNoAttack, nA3, $30
	smpsNoteFill	$05
	dc.b nE2, $06, nE2, nE2, nE2
	smpsNoteFill	$08
	dc.b nB3, nA3, nG3
	smpsNoteFill	$00
	dc.b nA3, smpsNoAttack, nA3, nG3, nFs3, nE3, $0C, nFs3
	dc.b $06, nD3, $0C
	smpsNoteFill	$05
	dc.b nE2, $06, nE2, nE2, nE2
	smpsNoteFill	$08
	dc.b nB3, nA3, nG3
	smpsNoteFill	$00
	dc.b nA3, smpsNoAttack, nA3, $30, smpsNoAttack, nA3, $30
	smpsFMAlterVol	$06
	smpsAlterPitch	$F4
	smpsReturn

Izayoi_Call7:
	smpsSetvoice	$41
	smpsPan	 panRight, $00
	smpsModSet	$0F, $01, $04, $05
	smpsFMAlterVol	$FB

Izayoi_Loop14:
	smpsNoteFill	$05
	smpsFMAlterVol	$FE
	dc.b nA2, $06
	smpsFMAlterVol	$02
	dc.b nA2, nA2
	smpsFMAlterVol	$FE
	dc.b nA2
	smpsFMAlterVol	$02
	dc.b nA2, nA2
	smpsFMAlterVol	$FE
	dc.b nA2
	smpsFMAlterVol	$02
	dc.b nA2
	smpsNoteFill	$08
	dc.b nA2
	smpsFMAlterVol	$FE
	dc.b nC3, smpsNoAttack, $0C
	smpsNoteFill	$00
	smpsFMAlterVol	$02
	dc.b nG2, $18
	smpsNoteFill	$05
	smpsFMAlterVol	$FE
	dc.b nA2, $06
	smpsFMAlterVol	$02
	dc.b nA2, nA2
	smpsFMAlterVol	$FE
	dc.b nA2
	smpsFMAlterVol	$02
	dc.b nA2, nA2
	smpsFMAlterVol	$FE
	dc.b nA2
	smpsFMAlterVol	$02
	dc.b nA2
	smpsNoteFill	$08
	dc.b nA2
	smpsFMAlterVol	$FE
	dc.b nE3, smpsNoAttack, $0C
	smpsNoteFill	$00
	dc.b nEb3, $06, nRst, nE3, nRst
	smpsFMAlterVol	$02
	smpsLoop	$00, $02, Izayoi_Loop14
	smpsFMAlterVol	$05
	smpsReturn

Izayoi_Call8:
	smpsSetvoice	$42
	smpsPan	 panLeft, $00
	smpsAlterPitch	$0C
	smpsModSet	$1C, $01, $0A, $04
	smpsFMAlterVol	$FC
	dc.b nA2, $30
	smpsSetvoice	$1F
	smpsNoteFill	$01
	dc.b nA2, $06
	smpsSetvoice	$42
	smpsNoteFill	$00
	dc.b nA2
	smpsSetvoice	$1F
	smpsNoteFill	$01
	dc.b nA2, nD4
	smpsSetvoice	$42
	smpsNoteFill	$00
	dc.b nA2, $0C
	smpsSetvoice	$1F
	smpsNoteFill	$01
	dc.b nA2, $06
	smpsSetvoice	$42
	smpsNoteFill	$00
	dc.b nA2, smpsNoAttack, $18
	smpsSetvoice	$1F
	smpsNoteFill	$01
	dc.b nA2, $06
	smpsSetvoice	$42
	smpsNoteFill	$00
	dc.b nA2
	smpsSetvoice	$1F
	smpsNoteFill	$01
	dc.b nA2
	smpsSetvoice	$42
	smpsNoteFill	$00
	dc.b nA2, smpsNoAttack, $0C
	smpsSetvoice	$1F
	smpsNoteFill	$01
	dc.b nA2, $06
	smpsSetvoice	$42
	smpsNoteFill	$00
	dc.b nA2, $06, smpsNoAttack, $18, nC3, $30
	smpsSetvoice	$1F
	smpsNoteFill	$01
	dc.b nC3, $06
	smpsSetvoice	$42
	smpsNoteFill	$00
	dc.b nC3
	smpsSetvoice	$1F
	smpsNoteFill	$01
	dc.b nC3, nC4
	smpsSetvoice	$42
	smpsNoteFill	$00
	dc.b nC3, $0C
	smpsSetvoice	$1F
	smpsNoteFill	$01
	dc.b nC3, $06
	smpsSetvoice	$42
	smpsNoteFill	$00
	dc.b nF2, smpsNoAttack, $0C
	smpsSetvoice	$1F
	smpsNoteFill	$01
	dc.b nF2, $06
	smpsFMAlterVol	$FF
	smpsSetvoice	$42
	smpsNoteFill	$00
	dc.b nG2, $12
	smpsFMAlterVol	$01
	smpsSetvoice	$1F
	smpsNoteFill	$01
	dc.b nG2, $06
	smpsFMAlterVol	$FE
	smpsSetvoice	$42
	smpsNoteFill	$00
	dc.b nA2, $12
	smpsFMAlterVol	$02
	smpsSetvoice	$1F
	smpsNoteFill	$01
	dc.b nA2, $06
	smpsFMAlterVol	$FD
	smpsSetvoice	$42
	smpsNoteFill	$00
	dc.b nB2, $06, smpsNoAttack, $18, smpsNoAttack, $18
	smpsFMAlterVol	$04
	smpsReturn

Izayoi_Call9:
	smpsSetvoice	$41
	smpsPan	 panLeft, $00
	smpsModSet	$1C, $01, $0A, $04
	smpsFMAlterVol	$F8

Izayoi_Loop15:
	dc.b nA4, $06, smpsNoAttack, $24, smpsNoAttack, $06, nC5, $06
	dc.b smpsNoAttack, $24, smpsNoAttack, $06, nB4, $06, smpsNoAttack, $24
	dc.b smpsNoAttack, $06, nBb4, $06, smpsNoAttack, $24, smpsNoAttack, $06
	smpsLoop	$00, $02, Izayoi_Loop15
	dc.b nC5, $06, smpsNoAttack, $24, smpsNoAttack, $06, nEb5, $06
	dc.b smpsNoAttack, $24, smpsNoAttack, $06, nD5, $06, smpsNoAttack, $24
	dc.b smpsNoAttack, $06, nCs5, $06, smpsNoAttack, $24, smpsNoAttack, $06
	dc.b nC5, $06, smpsNoAttack, $24, smpsNoAttack, $06, nEb5, $06
	dc.b smpsNoAttack, $24, smpsNoAttack, $06, nD5, $06, smpsNoAttack, $24
	dc.b smpsNoAttack, $06, nCs5, $06, smpsNoAttack, $30
	smpsFMAlterVol	$08
	smpsPan	 panCentre, $00
	dc.b nRst, $06, nC4, $0C, nRst, $06, nD4, $18
	dc.b smpsNoAttack, $30, nEb4, $06, nD4, nC4, nA3, nC4
	dc.b nG3, nRst, nA3
	smpsFMAlterVol	$FA
	smpsSetvoice	$42
	smpsPan	 panLeft, $00
	dc.b nFs4, $03, nG4, nFs4, nG4, nFs4, $0C
	smpsFMAlterVol	$06
	dc.b nRst, $18
	smpsSetvoice	$41
	smpsPan	 panCentre, $00
	dc.b nRst, $06, nC4, $0C, nRst, $06, nD4, $18
	dc.b smpsNoAttack, $30, nEb4, $06, nD4, nC4, nA3, nC4
	dc.b nG3, nRst, nA3, nRst, $30, nRst, $06, nC4
	dc.b $0C, nRst, $06, nD4, $18, smpsNoAttack, $30, nEb4
	dc.b $06, nD4, nC4, nA3, nC4, nG3, nRst, nA3
	smpsFMAlterVol	$FA
	smpsSetvoice	$42
	smpsPan	 panRight, $00
	dc.b nFs4, $03, nG4, nFs4, nG4, nFs4, $0C
	smpsFMAlterVol	$06
	dc.b nRst, $18
	smpsSetvoice	$41
	smpsPan	 panCentre, $00
	dc.b nRst, $06, nC4, $0C, nRst, $06, nD4, $0C
	dc.b nRst, $06, nEb4, $0C, nRst, $06, nF4, $0C
	dc.b nRst, $06, nFs4, $0C, nRst, $06, nAb4, $30
	dc.b smpsNoAttack, $30
	smpsModSet	$1C, $01, $0A, $04
	dc.b nA4, $06, nAb4, nFs4, nEb4, nFs4, nCs4, nRst
	smpsFMAlterVol	$FD
	dc.b nEb4, $06
	smpsFMAlterVol	$01
	smpsModSet	$14, $02, $DF, $AF
	dc.b smpsNoAttack, $60
	smpsFMAlterVol	$02
	smpsModSet	$1C, $01, $0A, $04
	smpsReturn
	; Unused
	dc.b $B1, $30, $B0, $18, $AE, $12, $AA, $36
	dc.b $E7, $18, $80, $06, $A7, $AA, $AE, $B1
	dc.b $30, $B0, $18, $AF, $12, $AE, $36, $E7
	dc.b $18, $80, $06, $A7, $AA, $AE, $B1, $30
	dc.b $B0, $18, $AE, $12, $AA, $36, $E7, $18
	dc.b $80, $06, $A7, $AA, $AE, $B1, $30, $B0
	dc.b $18, $AF, $12, $AE, $36, $E7, $30, $E6
	dc.b $09, $FB, $F4, $F9, $E0, $80, $F0, $0C
	dc.b $01, $05, $03, $EF, $41, $E6, $FA, $A9
	dc.b $12, $AE, $06, $80, $0C, $E6, $06, $E0
	dc.b $C0, $EF, $1E, $E6, $FB, $B2, $06, $B3
	dc.b $E6, $05, $E0, $80, $EF, $41, $E6, $FA
	dc.b $A7, $12, $AE, $06, $80, $0C, $E6, $06
	dc.b $E0, $C0, $EF, $1E, $E6, $FB, $B0, $06
	dc.b $B1, $80, $E6, $05, $E0, $80, $EF, $41
	dc.b $E6, $FA, $A6, $12, $A7, $05, $80, $13
	dc.b $E6, $06, $F0, $01, $01, $60, $03, $E9
	dc.b $0C, $5A, $E6, $FA, $EF, $1F, $E8, $01
	dc.b $A0, $06, $B3, $A0, $A0, $B3, $E6, $06
	dc.b $E9, $00, $00, $E8, $00, $F0, $0C, $01
	dc.b $05, $03, $EF, $41, $E6, $FA, $A9, $06
	dc.b $80, $0C, $E6, $06, $F7, $00, $03, $FC
	dc.b $E4, $E6, $FA, $A9, $12, $AE, $06, $80
	dc.b $0C, $E6, $06, $E0, $C0, $EF, $1E, $E6
	dc.b $FB, $B2, $06, $B3, $E6, $05, $E0, $80
	dc.b $EF, $41, $E6, $FA, $A7, $12, $AE, $06
	dc.b $80, $0C, $E6, $06, $E0, $C0, $EF, $1E
	dc.b $E6, $FB, $B0, $06, $B1, $80, $E6, $05
	dc.b $E0, $80, $EF, $41, $E6, $FA, $A6, $12
	dc.b $A7, $0C, $A7, $F0, $01, $03, $E5, $A0
	dc.b $E4, $02, $02, $00, $03, $02, $E7, $30
	dc.b $E6, $06, $FD, $E4, $00, $F9, $EF, $42
	dc.b $E0, $80, $F0, $0C, $01, $05, $03, $E6
	dc.b $FA, $A2, $18, $0C, $80, $06, $A2, $80
	dc.b $0C, $A2, $80, $18, $A2, $0C, $80, $A2
	dc.b $80, $A7, $06, $A7, $A2, $A0, $1E, $F7
	dc.b $00, $04, $FC, $DA, $E6, $06, $F9, $E0
	dc.b $80, $F0, $0F, $01, $04, $05, $EF, $41
	dc.b $E6, $FA, $A2, $08, $A2, $04, $A2, $06
	dc.b $80, $A2, $80, $A2, $80, $A2, $80, $A2
	dc.b $08, $A2, $04, $80, $0C, $08, $A2, $04
	dc.b $E7, $A2, $08, $A2, $04, $A2, $06, $80
	dc.b $A2, $80, $A2, $80, $A2, $80, $A2, $08
	dc.b $A2, $04, $80, $0C, $08, $A2, $04, $E7
	dc.b $A2, $08, $A2, $04, $A2, $06, $80, $A2
	dc.b $80, $A2, $80, $A2, $80, $A2, $08, $A2
	dc.b $04, $80, $0C, $08, $A2, $04, $E7, $A2
	dc.b $08, $A2, $04, $A2, $06, $80, $A2, $80
	dc.b $A2, $80, $A2, $80, $A2, $08, $A2, $04
	dc.b $80, $0C, $08, $80, $04, $A2, $08, $A2
	dc.b $04, $A2, $06, $80, $A2, $80, $A2, $80
	dc.b $A2, $80, $A2, $08, $A2, $04, $80, $0C
	dc.b $08, $A2, $04, $E7, $A2, $08, $A2, $04
	dc.b $A2, $06, $80, $A2, $80, $EF, $41, $A4
	dc.b $0C, $F0, $01, $03, $E5, $A0, $E4, $02
	dc.b $03, $01, $03, $02, $E7, $30, $FD, $E4
	dc.b $00, $E6, $06, $F9

Izayoi_FM4:
	dc.b nRst, $30, nRst
Izayoi_Jump5:
	dc.b nRst, $30, nRst, nRst, $30, nRst, nRst, $30
	dc.b nRst, nRst, $24, nRst, $06
	smpsFMAlterVol	$FC
	smpsSetvoice	$1F
	dc.b nA3, $06
	smpsModSet	$01, $05, $E5, $A0
	smpsPanAnim	$01, $03, $01, $01, $01
	dc.b smpsNoAttack, $30, smpsNoAttack, $30
	smpsModOff
	smpsPanAnim	$00
	smpsFMAlterVol	$04
	smpsCall	Izayoi_Call10
	smpsCall	Izayoi_Call11
	smpsCall	Izayoi_Call12
	dc.b smpsNoAttack, $12, nRst, $06, nRst, $30, nRst, $18
	smpsAlterPitch	$F4
	smpsCall	Izayoi_Call10
	smpsCall	Izayoi_Call11
	smpsCall	Izayoi_Call12
	dc.b nRst, $18, nRst, $30, nRst, $18
	smpsAlterPitch	$F4
	dc.b nRst, $30
	smpsCall	Izayoi_Call13
	smpsCall	Izayoi_Call14
	smpsJump	Izayoi_Jump5
	; Unused
	dc.b $F2, $EF, $41, $E0, $80, $F0, $1C, $01
	dc.b $0A, $04, $E6, $FD, $E6, $03

Izayoi_Call10:
	dc.b nRst, $30, nRst, nRst, $30, nRst, nRst, $30
	dc.b nRst, nRst, $30, nRst, nRst, $30, nRst
	smpsReturn

Izayoi_Call11:
	smpsSetvoice	$41
	smpsPan	 panLeft, $00
	smpsModSet	$0F, $01, $04, $05
	smpsFMAlterVol	$F9

Izayoi_Loop16:
	smpsNoteFill	$05
	smpsFMAlterVol	$FE
	dc.b nE3, $06
	smpsFMAlterVol	$02
	dc.b nE3, nE3
	smpsFMAlterVol	$FE
	dc.b nE3
	smpsFMAlterVol	$02
	dc.b nE3, nE3
	smpsFMAlterVol	$FE
	dc.b nE3
	smpsFMAlterVol	$02
	dc.b nE3
	smpsNoteFill	$08
	dc.b nE3
	smpsFMAlterVol	$FE
	dc.b nG3, smpsNoAttack, $0C
	smpsNoteFill	$00
	smpsFMAlterVol	$02
	dc.b nC3, $18
	smpsNoteFill	$05
	smpsFMAlterVol	$FE
	dc.b nE3, $06
	smpsFMAlterVol	$02
	dc.b nE3, nE3
	smpsFMAlterVol	$FE
	dc.b nE3
	smpsFMAlterVol	$02
	dc.b nE3, nE3
	smpsFMAlterVol	$FE
	dc.b nE3
	smpsFMAlterVol	$02
	dc.b nE3
	smpsNoteFill	$08
	dc.b nE3
	smpsFMAlterVol	$FE
	dc.b nB3, smpsNoAttack, $0C
	smpsNoteFill	$00
	dc.b nBb3, $06, nRst, nB3, nRst
	smpsFMAlterVol	$02
	smpsLoop	$00, $02, Izayoi_Loop16
	smpsFMAlterVol	$07
	smpsReturn

Izayoi_Call12:
	smpsSetvoice	$42
	smpsPan	 panCentre, $00
	smpsAlterPitch	$0C
	smpsModSet	$1C, $01, $0A, $04
	dc.b nD3, $30
	smpsSetvoice	$1F
	smpsNoteFill	$01
	dc.b nD3, $06
	smpsSetvoice	$42
	smpsNoteFill	$00
	dc.b nD3
	smpsSetvoice	$1F
	smpsNoteFill	$01
	dc.b nD3, nD4
	smpsSetvoice	$42
	smpsNoteFill	$00
	dc.b nD3, $0C
	smpsSetvoice	$1F
	smpsNoteFill	$01
	dc.b nD3, $06
	smpsSetvoice	$42
	smpsNoteFill	$00
	dc.b nD3, smpsNoAttack, $18
	smpsSetvoice	$1F
	smpsNoteFill	$01
	dc.b nD3, $06
	smpsSetvoice	$42
	smpsNoteFill	$00
	dc.b nD3
	smpsSetvoice	$1F
	smpsNoteFill	$01
	dc.b nD3
	smpsSetvoice	$42
	smpsNoteFill	$00
	dc.b nD3, smpsNoAttack, $0C
	smpsSetvoice	$1F
	smpsNoteFill	$01
	dc.b nD3, $06
	smpsSetvoice	$42
	smpsNoteFill	$00
	dc.b nD3, $06, smpsNoAttack, $18, nF3, $30
	smpsSetvoice	$1F
	smpsNoteFill	$01
	dc.b nF3, $06
	smpsSetvoice	$42
	smpsNoteFill	$00
	dc.b nF3
	smpsSetvoice	$1F
	smpsNoteFill	$01
	dc.b nF3, nF4
	smpsSetvoice	$42
	smpsNoteFill	$00
	dc.b nF3, $0C
	smpsSetvoice	$1F
	smpsNoteFill	$01
	dc.b nF3, $06
	smpsSetvoice	$42
	smpsNoteFill	$00
	dc.b nA2, smpsNoAttack, $0C
	smpsSetvoice	$1F
	smpsNoteFill	$01
	dc.b nA2, $06
	smpsFMAlterVol	$FF
	smpsSetvoice	$42
	smpsNoteFill	$00
	dc.b nB2, $12
	smpsFMAlterVol	$01
	smpsSetvoice	$1F
	smpsNoteFill	$01
	dc.b nB2, $06
	smpsFMAlterVol	$FE
	smpsSetvoice	$42
	smpsNoteFill	$00
	dc.b nCs3, $12
	smpsFMAlterVol	$02
	smpsSetvoice	$1F
	smpsNoteFill	$01
	dc.b nCs3, $06
	smpsFMAlterVol	$FD
	smpsSetvoice	$42
	smpsNoteFill	$00
	dc.b nEb3, $06, smpsNoAttack, $18, smpsNoAttack, $18
	smpsFMAlterVol	$03
	smpsReturn

Izayoi_Call13:
	dc.b nRst, $30, nRst, nRst, $30, nRst, nRst, $30
	dc.b nRst, nRst, $30, nRst, nRst, $30, nRst, nRst
	dc.b $30, nRst, nRst, $30, nRst, nRst, $30, nRst
	smpsReturn

Izayoi_Call14:
	dc.b nRst, $30, nRst, nRst, $30, nRst, nRst, $30
	dc.b nRst, nRst, $30, nRst, nRst, $30, nRst, nRst
	dc.b $30, nRst, nRst, $30, nRst, nRst, $30, nRst
	dc.b nRst, $30, nRst, nRst, $30
	smpsReturn

Izayoi_FM5:
	dc.b nRst, $12
	smpsPan	 panCentre, $00
	smpsJump	Izayoi_Jump6
	; Unused
	dc.b $F2

Izayoi_PSG1:
Izayoi_Jump8:
	dc.b nRst, $30, nRst
Izayoi_Jump7:
	smpsCall	Izayoi_Call15
	smpsCall	Izayoi_Call16
	smpsCall	Izayoi_Call17
	smpsCall	Izayoi_Call18
	dc.b smpsNoAttack, $12, nRst, $06, nRst, $30, nRst, $18
	smpsCall	Izayoi_Call16
	smpsCall	Izayoi_Call17
	smpsCall	Izayoi_Call18
	dc.b nRst, $18, nRst, $30, nRst, $18, nRst, $2A
	smpsCall	Izayoi_Call19
	smpsCall	Izayoi_Call20
	smpsJump	Izayoi_Jump7
	; Unused
	dc.b $F2

Izayoi_Call15:
	smpsAlterPitch	$0C
	smpsModSet	$0C, $02, $02, $03
	smpsPSGvoice	 sTone_08
	dc.b nRst, $30, nRst, nRst, $30, nRst, nRst, $30
	dc.b nRst, nRst, $30, nRst, nRst
	smpsAlterPitch	$F4
	smpsReturn

Izayoi_Call16:
	smpsAlterPitch	$0C
	smpsModSet	$0C, $02, $02, $03
	smpsPSGvoice	 sTone_08
	dc.b nRst, $30, nRst, nRst, $30, nRst, nRst, $30
	dc.b nRst, nRst, $30, nRst, nRst, $30, nRst
	smpsAlterPitch	$F4
	smpsReturn

Izayoi_Call17:
	smpsAlterPitch	$0C
	smpsModSet	$0C, $02, $02, $03

Izayoi_Loop17:
	smpsPSGvoice	 sTone_08
	smpsNoteFill	$05
	smpsPSGAlterVol	$FE
	dc.b nE3, $06
	smpsPSGAlterVol	$02
	dc.b nE3, nE3
	smpsPSGAlterVol	$FE
	dc.b nE3
	smpsPSGAlterVol	$02
	dc.b nE3, nE3
	smpsPSGAlterVol	$FE
	dc.b nE3
	smpsPSGAlterVol	$02
	dc.b nE3
	smpsNoteFill	$08
	dc.b nE3
	smpsPSGAlterVol	$FE
	dc.b nG3, smpsNoAttack, $0C
	smpsNoteFill	$00
	smpsPSGAlterVol	$02
	dc.b nC3, $18
	smpsNoteFill	$05
	smpsPSGAlterVol	$FE
	dc.b nE3, $06
	smpsPSGAlterVol	$02
	dc.b nE3, nE3
	smpsPSGAlterVol	$FE
	dc.b nE3
	smpsPSGAlterVol	$02
	dc.b nE3, nE3
	smpsPSGAlterVol	$FE
	dc.b nE3
	smpsPSGAlterVol	$02
	dc.b nE3
	smpsNoteFill	$08
	dc.b nE3
	smpsPSGAlterVol	$FE
	dc.b nB3, smpsNoAttack, $0C
	smpsNoteFill	$00
	dc.b nBb3, $06, nRst, nB3, nRst
	smpsPSGAlterVol	$02
	smpsLoop	$00, $02, Izayoi_Loop17
	smpsAlterPitch	$F4
	smpsReturn

Izayoi_Call18:
	smpsAlterPitch	$0C
	smpsModSet	$0C, $02, $02, $03
	smpsPSGvoice	 sTone_08
	dc.b nD3, $30
	smpsNoteFill	$01
	dc.b nD3, $06
	smpsNoteFill	$00
	dc.b nD3
	smpsNoteFill	$01
	dc.b nD3, nD4
	smpsNoteFill	$00
	dc.b nD3, $0C
	smpsNoteFill	$01
	dc.b nD3, $06
	smpsNoteFill	$00
	dc.b nD3, smpsNoAttack, $18
	smpsNoteFill	$01
	dc.b nD3, $06
	smpsNoteFill	$00
	dc.b nD3
	smpsNoteFill	$01
	dc.b nD3
	smpsNoteFill	$00
	dc.b nD3, smpsNoAttack, $0C
	smpsNoteFill	$01
	dc.b nD3, $06
	smpsNoteFill	$00
	dc.b nD3, $06, smpsNoAttack, $18, nF3, $30
	smpsNoteFill	$01
	dc.b nF3, $06
	smpsNoteFill	$00
	dc.b nF3
	smpsNoteFill	$01
	dc.b nF3, nF4
	smpsNoteFill	$00
	dc.b nF3, $0C
	smpsNoteFill	$01
	dc.b nF3, $06
	smpsNoteFill	$00
	dc.b nA2, smpsNoAttack, $0C
	smpsNoteFill	$01
	dc.b nA2, $06
	smpsPSGAlterVol	$FF
	smpsNoteFill	$00
	dc.b nB2, $12
	smpsPSGAlterVol	$01
	smpsNoteFill	$01
	dc.b nB2, $06
	smpsPSGAlterVol	$FE
	smpsNoteFill	$00
	dc.b nCs3, $12
	smpsPSGAlterVol	$02
	smpsNoteFill	$01
	dc.b nCs3, $06
	smpsPSGAlterVol	$FD
	smpsNoteFill	$00
	dc.b nEb3, $06, smpsNoAttack, $18, smpsNoAttack, $18
	smpsPSGAlterVol	$03
	smpsAlterPitch	$F4
	smpsReturn

Izayoi_Call19:
	smpsModSet	$1C, $02, $03, $02
	smpsAlterPitch	$0C
	smpsPSGAlterVol	$FD
	smpsPSGvoice	$00

Izayoi_Loop18:
	dc.b nE4, $06, smpsNoAttack, $24, smpsNoAttack, $06, nG4, $06
	dc.b smpsNoAttack, $24, smpsNoAttack, $06, nFs4, $06, smpsNoAttack, $24
	dc.b smpsNoAttack, $06, nF4, $06, smpsNoAttack, $24, smpsNoAttack, $06
	smpsLoop	$00, $02, Izayoi_Loop18
	dc.b nG4, $06, smpsNoAttack, $24, smpsNoAttack, $06, nBb4, $06
	dc.b smpsNoAttack, $24, smpsNoAttack, $06, nA4, $06, smpsNoAttack, $24
	dc.b smpsNoAttack, $06, nAb4, $06, smpsNoAttack, $24, smpsNoAttack, $06
	dc.b nG4, $06, smpsNoAttack, $24, smpsNoAttack, $06, nBb4, $06
	dc.b smpsNoAttack, $24, smpsNoAttack, $06, nA4, $06, smpsNoAttack, $24
	dc.b smpsNoAttack, $06, nAb4, $06, smpsNoAttack, $30
	smpsPSGAlterVol	$03
	smpsAlterPitch	$F4
	smpsReturn

Izayoi_Call20:
	dc.b nRst, $30, nRst, nRst, $30, nRst, nRst, $30
	dc.b nRst, nRst, $30, nRst, nRst, $30, nRst, nRst
	dc.b $30, nRst, nRst, $30, nRst, nRst, $30, nRst
	dc.b nRst, $30, nRst, nRst, $30
	smpsReturn

Izayoi_PSG2:
	dc.b nRst, $09
	smpsJump	Izayoi_Jump8
	; Unused
	dc.b $F2

Izayoi_PSG3:
	smpsPSGform	$E7
	dc.b nRst, $30, nRst

Izayoi_Jump9:
	dc.b nRst, $30, nRst, nRst, nRst, nRst, $30, nRst
	dc.b nRst, nRst, nRst, $30, nRst, nRst, nRst, nRst
	dc.b nRst, $30, nRst, nRst, nRst, nRst, $30, nRst
	dc.b nRst, $30, nRst, nRst, nRst
Izayoi_Loop19:
	smpsPSGvoice	 sTone_01
	smpsNoteFill	$02
	dc.b nA5, $06, nA5, nA5, nA5
	smpsLoop	$00, $1D, Izayoi_Loop19

Izayoi_Loop20:
	smpsPSGvoice	 sTone_01
	smpsNoteFill	$14
	dc.b nA5, $0C, nA5, nA5, nA5
	smpsLoop	$00, $09, Izayoi_Loop20
	dc.b nRst, $30

Izayoi_Loop21:
	smpsPSGvoice	 sTone_01
	smpsNoteFill	$02
	dc.b nA5, $06, nA5, nA5, nA5
	smpsLoop	$00, $10, Izayoi_Loop21

Izayoi_Loop22:
	smpsPSGvoice	 sTone_01
	smpsNoteFill	$14
	dc.b nA5, $0C, nA5, nA5, nA5
	smpsLoop	$00, $0B, Izayoi_Loop22
	dc.b nRst, $18

Izayoi_Loop23:
	smpsPSGvoice	 sTone_01
	smpsNoteFill	$0F
	dc.b nA5, $18
	smpsLoop	$00, $18, Izayoi_Loop23

Izayoi_Loop24:
	smpsNoteFill	$02
	dc.b nA5, $06, nA5, nA5, nA5
	smpsLoop	$00, $08, Izayoi_Loop24

Izayoi_Loop25:
	smpsPSGvoice	 sTone_01
	smpsNoteFill	$14
	dc.b nA5, $0C, nA5, nA5, nA5
	smpsLoop	$00, $10, Izayoi_Loop25
	dc.b nA5, $06, nA5, nA5, nA5, nA5, nA5, nRst
	smpsNoteFill	$1E
	dc.b nA5, $06, smpsNoAttack, $18, nRst, nRst, $30
	smpsJump	Izayoi_Jump9
	; Unused
	dc.b $F2

Izayoi_DAC:
	dc.b dC1, $08, dC2, dC3, dA5, $04, dA6, dA7
	dc.b dC1, dC1, dC2, d81, $03, d81, d81, d81
	dc.b dC3, $0C, nRst, $0C, dC1, $0C
Izayoi_Jump1:
	dc.b dC0, $06, dC0, nRst, $24, nRst, $30, nRst
	dc.b nRst, $18, d89, $06, dC1, dC2, dC3, d81
	dc.b $06, d81, dC0, $0C, nRst, $18, nRst, $30
	dc.b nRst, nRst, nRst, $24, dC0, $02, dC2, $0A
Izayoi_Loop1:
	dc.b d81, $0C, dC0, d81, $06, d81, dC0, $0C
	smpsLoop	$00, $06, Izayoi_Loop1
	dc.b d81, $0C, dC0, d81, $06, dC1, dC2, d8C
	dc.b nRst, $30, d81, $06, dC0, $03, dC0, dC3
	dc.b $0C, d81, $06, dC0, $03, dC0, dC0, dC0
	dc.b dC0, dC0, dC0, $06, d82, dC0, d82, dC0
	dc.b dA5, d86, $03, d86, dC2, $06, d81, $0C
	dc.b dC0, d81, $06, d81, dC0, $0C, d81, $06
	dc.b d8C, $0C, dC0, $06, d81, d81, dC0, $0C
	dc.b d81, $0C, dC0, d81, $06, d81, dC0, $0C
	dc.b d81, $06, d8C, $0C, dC0, $06, d81, $0C
	dc.b dC0, d81, $0C, dC0, d81, $06, d81, dC0
	dc.b $0C, d81, $06, d8C, $0C, dC0, $06, d81
	dc.b d81, dC0, $0C, d81, $0C, dC0, d81, $06
	dc.b d81, dC0, $0C, d81, $06, d8C, $0C, dC0
	dc.b $06, d81, dC0, dC0, dC0, d81, $0C, dC0
	dc.b d81, dC0, d81, $0C, dC0, d81, $06, d81
	dc.b dC0, $06, d81, nRst, d81, dC0, d81, nRst
	dc.b d81, dC0, d81, nRst, d81, dC0, d81, nRst
	dc.b d81, dC0, $0C, d81, $0C, dC0, d81, dC0
	dc.b d81, $0C, dC0, d81, $06, d81, dC0, $06
	dc.b d81, nRst, d81, dC0, d81, nRst, d81, dC0
	dc.b d81, nRst, d81, dC0, d8C, nRst, $18, nRst
	dc.b $18, d82, $03, d82, dC0, $06, dC0, dC0
	dc.b dC0, $06, dC0, dC0, dC0, dC0, dC0, d89
	dc.b d89, dC1, dC1, dC2, dC3

Izayoi_Loop2:
	dc.b d81, $0C, dC0, d81, $06, d81, dC0, $0C
	smpsLoop	$00, $06, Izayoi_Loop2
	dc.b d81, $0C, dC0, d81, $06, dC1, dC2, d8C
	dc.b nRst, $30, d81, $06, dC0, $03, dC0, dC3
	dc.b $0C, d81, $06, dC0, $03, dC0, dC0, dC0
	dc.b dC0, dC0, dC0, $06, d82, dC0, d82, dC0
	dc.b d82, d86, $03, d86, dC2, $06, d81, $0C
	dc.b dC0, d81, $06, d81, dC0, $0C, d81, $06
	dc.b d8C, $0C, dC0, $06, d81, d81, dC0, $0C
	dc.b d81, $0C, dC0, d81, $06, d81, dC0, $0C
	dc.b d81, $06, d8C, $0C, dC0, $06, d81, $0C
	dc.b dC0, d81, $0C, dC0, d81, $06, d81, dC0
	dc.b $0C, d81, $06, d8C, $0C, dC0, $06, d81
	dc.b d81, dC0, $0C, d81, $0C, dC0, d81, $06
	dc.b d81, dC0, $0C, d81, $06, d8C, $0C, dC0
	dc.b $06, d81, dC0, dC0, dC0, d81, $0C, dC0
	dc.b d81, dC0, d81, $0C, dC0, d81, $06, d81
	dc.b dC0, $06, d81, nRst, d81, dC0, d81, nRst
	dc.b d81, dC0, d81, nRst, d81, dC0, d81, nRst
	dc.b d81, dC0, $0C, d81, $0C, dC0, d81, dC0
	dc.b d81, $0C, dC0, d81, $06, d81, dC0, $06
	dc.b d81, nRst, d81, dC0, d81, nRst, d81, dC0
	dc.b d81, nRst, d81, dC0, d8C, nRst, $18, nRst
	dc.b $18, d8C, $0C, nRst, nRst, $30, nRst, $0C
	dc.b dC0, $04, dC0, d8C, nRst, $18, d8C, $06
	dc.b dC0, $03, dC0, dC1, $06, d8C, $06, nRst
	dc.b d81, dC0, $0C, d81, dC0, $06, d8C, $06
	dc.b nRst, d81, dC0, $0C, d81, dC0, $06, d8C
	dc.b $06, nRst, d81, dC0, $0C, d81, dC0, $06
	dc.b d8C, $06, nRst, d81, dC0, $0C, d81, dC0
	dc.b $06, d8C, $06, nRst, d81, dC0, $0C, d81
	dc.b dC0, $06, d8C, $06, nRst, d81, dC0, $0C
	dc.b d81, dC0, $06, d8C, $06, nRst, d81, dC0
	dc.b $0C, d81, dC0, $06, d8C, $06, nRst, d81
	dc.b dC0, d81, dC0, dC0, dC0, d8C, $06, nRst
	dc.b d81, dC0, $0C, d81, dC0, $06, d8C, $06
	dc.b nRst, d81, dC0, $0C, d81, dC0, $06, d8C
	dc.b $06, nRst, d81, dC0, $0C, d81, dC0, $06
	dc.b d8C, $06, nRst, d81, dC0, $0C, d81, dC0
	dc.b $06, d8C, $06, nRst, d81, dC0, $0C, d81
	dc.b dC0, $06, d8C, $06, nRst, d81, dC0, $0C
	dc.b d81, dC0, $06, d8C, $06, nRst, d81, dC0
	dc.b $0C, d81, dC0, $06, d8C, $06, nRst, dC0
	dc.b dC0, dC0, dC0, dC0, dC0, dC0

Izayoi_Loop3:
	dc.b d81, $0C, dC0, d81, dC0, d81, dC0, d81
	dc.b $06, d81, dC0, $0C, d81, $0C, dC0, d81
	dc.b $06, d81, dC0, d8C, nRst, d81, dC0, $0C
	dc.b d81, $06, d81, dC0, $0C
	smpsLoop	$00, $03, Izayoi_Loop3
	dc.b d81, $06, d8C, $0C, d81, $06, dC0, dC0
	dc.b d81, $06, d8C, $0C, d81, $06, dC0, dC0
	dc.b d81, $06, d8C, $0C, d81, $06, d8C, $0C
	dc.b dC0, d81, $06, d81, dC0, $0C, d81, $06
	dc.b d81, dC0, $0C, d81, $06, d81, dC0, $0C
	dc.b dC0, $06, dC0, dC0, dC0, dC0, dC0, nRst
	dc.b d8C, nRst, $06, d81, dC0, $0C, d81, dC1
	dc.b d82, $04, d82, d82, d82, d82, d82, dC0
	dc.b dC0, dC0, dC0, dC0, dC0
	smpsJump	Izayoi_Jump1
	; Unused
	dc.b $F2, $81, $06, $82, $82, $0C, $F8, $01
	dc.b $2A, $F8, $01, $27, $F8, $01, $24, $81
	dc.b $06, $84, $82, $84, $81, $84, $82, $84
	dc.b $81, $84, $82, $84, $81, $84, $82, $84
	dc.b $82, $06, $84, $81, $82, $84, $81, $82
	dc.b $84, $81, $82, $84, $81, $89, $8A, $82
	dc.b $0C, $81, $0C, $82, $81, $82, $81, $82
	dc.b $81, $82, $81, $82, $81, $82, $81, $82
	dc.b $81, $82, $01, $8A, $0B, $F7, $00, $03
	dc.b $FD, $F2, $81, $0C, $82, $81, $82, $81
	dc.b $82, $81, $82, $81, $82, $81, $82, $81
	dc.b $06, $87, $82, $87, $82, $04, $82, $82
	dc.b $82, $82, $82, $81, $0C, $82, $F7, $00
	dc.b $1E, $FF, $F9, $87, $02, $88, $04, $87
	dc.b $02, $88, $04, $87, $02, $89, $04, $87
	dc.b $02, $89, $04, $87, $02, $8A, $04, $87
	dc.b $02, $8A, $04, $86, $02, $82, $04, $86
	dc.b $02, $82, $04, $81, $06, $84, $82, $84
	dc.b $F7, $00, $0F, $FF, $F7, $81, $06, $82
	dc.b $82, $0C, $F8, $00, $96, $F8, $00, $93
	dc.b $F8, $00, $90, $81, $06, $84, $82, $84
	dc.b $81, $84, $82, $84, $81, $84, $82, $84
	dc.b $81, $84, $82, $84, $82, $06, $84, $81
	dc.b $82, $84, $81, $82, $84, $81, $82, $84
	dc.b $81, $89, $8A, $82, $0C, $81, $0C, $84
	dc.b $82, $84, $81, $84, $82, $84, $08, $81
	dc.b $0C, $81, $04, $84, $0C, $82, $84, $F7
	dc.b $00, $03, $FF, $EF, $81, $0C, $87, $04
	dc.b $87, $87, $82, $0C, $84, $08, $81, $0C
	dc.b $81, $04, $82, $0C, $81, $0C, $82, $F7
	dc.b $00, $0D, $FF, $F9, $81, $06, $87, $82
	dc.b $87, $82, $04, $82, $82, $82, $82, $82
	dc.b $81, $0C, $82, $F7, $00, $1D, $FF, $F9
	dc.b $81, $0C, $82, $04, $82, $82, $82, $02
	dc.b $89, $04, $82, $02, $88, $04, $82, $02
	dc.b $89, $04, $82, $02, $89, $04, $87, $02
	dc.b $8A, $04, $87, $02, $8A, $04, $86, $02
	dc.b $82, $04, $86, $02, $82, $04, $F6, $FC
	dc.b $21, $F2, $81, $06, $84, $82, $84, $F7
	dc.b $00, $07, $FF, $F7, $81, $06, $82, $8A
	dc.b $0C, $F9

Izayoi_Voices:
	dc.b $06, $01, $33, $72, $31, $0A, $8C, $4C, $52, $00, $00, $00, $00, $01, $00, $01, $00, $03, $05, $26, $06, $4D, $87, $80, $91
	dc.b $3D, $01, $21, $51, $01, $12, $14, $14, $0F, $0A, $05, $05, $05, $00, $00, $00, $00, $26, $28, $28, $18, $19, $80, $80, $80
	dc.b $15, $71, $72, $31, $31, $0F, $12, $0F, $0F, $00, $0F, $09, $0A, $01, $02, $01, $01, $06, $A7, $06, $07, $32, $80, $A8, $80
	dc.b $16, $7A, $74, $3C, $31, $1F, $1F, $1F, $1F, $0A, $08, $0C, $0A, $07, $0A, $07, $05, $25, $A7, $A7, $55, $14, $85, $8A, $80
	dc.b $3A, $0C, $1F, $01, $13, $1F, $DF, $1F, $9F, $0C, $02, $0C, $05, $04, $04, $04, $07, $1A, $F6, $06, $27, $1D, $36, $1B, $80
	dc.b $3E, $0F, $02, $32, $72, $1F, $1F, $1F, $1F, $00, $18, $00, $00, $00, $0F, $0F, $0F, $20, $97, $08, $08, $00, $80, $80, $80
	dc.b $3A, $32, $02, $02, $72, $8F, $8F, $4F, $4D, $09, $09, $00, $03, $00, $00, $00, $00, $15, $F5, $05, $08, $19, $1F, $19, $80
	dc.b $30, $30, $3A, $30, $30, $9E, $D8, $DC, $DC, $0E, $0A, $04, $05, $08, $08, $08, $08, $B6, $B6, $B6, $B6, $14, $2F, $14, $80
	dc.b $3A, $60, $66, $60, $61, $1F, $94, $1F, $1F, $0F, $10, $05, $0D, $07, $06, $06, $07, $2F, $4F, $1F, $5F, $21, $14, $22, $80
	dc.b $3C, $52, $36, $63, $52, $DF, $59, $CF, $8A, $0A, $0A, $01, $05, $14, $14, $0A, $14, $AF, $5F, $AF, $5F, $1E, $85, $28, $82
	dc.b $0C, $00, $00, $06, $01, $1B, $59, $DA, $59, $02, $06, $02, $0C, $0A, $0A, $09, $0F, $14, $15, $02, $A5, $14, $80, $1A, $80
	dc.b $3B, $61, $02, $24, $05, $5F, $5F, $5F, $4F, $03, $03, $03, $07, $00, $00, $00, $04, $23, $22, $22, $27, $1F, $20, $25, $80
	dc.b $3D, $01, $02, $02, $02, $10, $50, $50, $50, $07, $08, $08, $08, $01, $00, $00, $00, $24, $18, $18, $18, $1C, $89, $89, $89
	dc.b $3C, $21, $02, $01, $62, $CF, $0D, $CF, $0C, $00, $04, $00, $04, $00, $00, $00, $00, $02, $37, $02, $38, $1E, $80, $1F, $80
	dc.b $34, $33, $41, $7E, $74, $5B, $9F, $5F, $1F, $04, $07, $07, $08, $00, $00, $00, $00, $FF, $FF, $EF, $FF, $23, $90, $29, $97
	dc.b $3E, $34, $00, $75, $02, $5E, $DF, $5F, $9C, $0F, $04, $0F, $0A, $02, $02, $05, $05, $A7, $A2, $FA, $F6, $28, $80, $A3, $80
	dc.b $3A, $01, $02, $01, $01, $14, $14, $17, $14, $0A, $0C, $03, $07, $02, $08, $08, $03, $07, $F9, $A8, $18, $1C, $2B, $28, $80
	dc.b $3A, $01, $07, $01, $01, $0F, $0F, $0F, $14, $0A, $0A, $0A, $05, $02, $02, $02, $02, $56, $A6, $56, $18, $19, $28, $28, $80
	dc.b $38, $0F, $0F, $0F, $0F, $1F, $1F, $1F, $11, $00, $00, $00, $0E, $00, $00, $00, $19, $03, $03, $03, $1A, $07, $07, $07, $80
	dc.b $3C, $03, $01, $01, $01, $1F, $1F, $1F, $1F, $12, $0F, $14, $0F, $01, $0F, $0C, $0F, $17, $F9, $F7, $F9, $00, $81, $05, $80
	dc.b $00, $00, $03, $02, $00, $DF, $DF, $1F, $1F, $12, $11, $14, $0E, $0A, $00, $0A, $0D, $F3, $F6, $F3, $F8, $22, $07, $27, $80
	dc.b $3B, $08, $04, $0F, $0C, $1F, $1F, $1F, $1F, $1F, $1F, $1C, $1F, $00, $04, $00, $06, $10, $10, $00, $07, $0D, $21, $4D, $80
	dc.b $3B, $61, $02, $23, $02, $59, $59, $59, $4A, $03, $03, $03, $05, $00, $00, $00, $00, $22, $22, $22, $27, $1E, $20, $25, $80
	dc.b $38, $6A, $0A, $11, $02, $19, $18, $0F, $0F, $05, $08, $02, $08, $00, $00, $00, $00, $A6, $16, $16, $17, $1C, $2D, $28, $80
	dc.b $32, $71, $0D, $33, $01, $5F, $99, $5F, $94, $05, $05, $05, $07, $02, $02, $02, $02, $11, $11, $11, $72, $23, $2D, $26, $80
	dc.b $2C, $71, $71, $31, $31, $5F, $54, $5F, $5F, $05, $0A, $03, $0C, $00, $03, $00, $03, $00, $87, $00, $A7, $17, $80, $19, $82
	dc.b $3A, $01, $03, $02, $03, $D6, $D6, $16, $11, $08, $08, $0A, $09, $00, $0C, $01, $01, $33, $33, $13, $07, $18, $18, $2F, $80
	dc.b $3A, $32, $56, $32, $42, $8D, $4F, $15, $52, $06, $08, $07, $04, $02, $00, $00, $00, $1F, $1F, $2F, $2F, $19, $20, $2A, $80
	dc.b $3A, $31, $37, $31, $31, $8D, $8D, $8E, $53, $0E, $0E, $0E, $03, $00, $00, $00, $00, $1F, $FF, $1F, $0F, $17, $25, $23, $80
	dc.b $3A, $41, $45, $32, $41, $59, $59, $5C, $4E, $0A, $0B, $0D, $04, $00, $00, $00, $00, $1F, $5F, $2F, $0F, $1D, $0F, $20, $80
	dc.b $2A, $21, $39, $31, $74, $1E, $1F, $1F, $1F, $17, $1B, $02, $03, $00, $08, $03, $0B, $3F, $3F, $0F, $6F, $11, $0C, $1C, $8A
	dc.b $3D, $0A, $65, $14, $31, $8E, $52, $14, $4C, $08, $08, $0E, $03, $00, $00, $00, $00, $1F, $1B, $1F, $16, $10, $80, $80, $80
	dc.b $02, $00, $00, $00, $00, $5C, $54, $1C, $D0, $0C, $08, $0A, $05, $00, $00, $00, $00, $FF, $FF, $FF, $FF, $24, $1B, $22, $80
	dc.b $39, $01, $51, $00, $00, $1F, $5F, $5F, $5F, $10, $11, $09, $09, $07, $00, $00, $00, $CF, $FF, $FF, $FF, $1C, $1D, $1F, $80
	dc.b $2C, $61, $03, $01, $33, $5F, $94, $5F, $94, $05, $05, $05, $07, $02, $02, $02, $02, $1F, $6F, $1F, $AF, $1E, $80, $1E, $80
	dc.b $3D, $01, $02, $02, $02, $1F, $08, $8A, $0A, $08, $08, $08, $08, $00, $01, $00, $00, $0F, $1F, $1F, $1F, $1F, $88, $88, $87
	dc.b $3B, $03, $01, $30, $01, $1C, $DC, $DC, $5E, $14, $13, $0F, $0C, $0C, $05, $0A, $07, $AF, $AF, $5F, $6F, $16, $11, $11, $80
	dc.b $3D, $08, $01, $01, $01, $1F, $1F, $1F, $1F, $19, $19, $19, $11, $05, $11, $00, $0F, $0F, $7F, $FF, $FF, $00, $80, $80, $80
	dc.b $3A, $60, $66, $60, $61, $1F, $94, $1F, $1F, $0F, $10, $05, $0D, $07, $06, $06, $07, $2F, $4F, $1F, $5F, $21, $14, $28, $80
	dc.b $00, $60, $32, $32, $30, $06, $06, $08, $0E, $06, $00, $00, $04, $02, $00, $00, $04, $3F, $2F, $2F, $4F, $10, $19, $1A, $80
	dc.b $3C, $78, $78, $34, $34, $1F, $12, $1F, $1F, $00, $0F, $00, $0F, $00, $01, $00, $01, $0F, $3F, $0F, $3F, $21, $90, $18, $87
	dc.b $3C, $78, $78, $34, $34, $1F, $12, $1F, $1F, $00, $0F, $00, $0F, $00, $09, $00, $09, $0F, $3F, $0F, $3F, $21, $90, $18, $87
	dc.b $2C, $72, $72, $32, $32, $1F, $12, $1F, $1F, $00, $0F, $00, $0F, $00, $09, $00, $09, $0F, $3F, $0F, $3F, $0E, $88, $0E, $88
	dc.b $3C, $52, $36, $63, $52, $DF, $59, $CF, $8A, $0A, $0A, $01, $05, $14, $14, $0A, $14, $AF, $5F, $AF, $5F, $1E, $85, $28, $82
	dc.b $38, $20, $62, $70, $30, $14, $12, $0A, $0A, $0E, $0E, $09, $1F, $00, $00, $00, $00, $5F, $5F, $AF, $0F, $1C, $28, $14, $85
	dc.b $3A, $3C, $4F, $31, $23, $1F, $DF, $1F, $9F, $0C, $02, $0C, $05, $04, $04, $04, $07, $1F, $FF, $0F, $2F, $20, $39, $1E, $80
	dc.b $1C, $6B, $33, $37, $92, $DF, $DF, $5F, $DF, $0E, $07, $10, $0F, $00, $0B, $05, $04, $FF, $17, $AF, $1F, $14, $80, $27, $85
	dc.b $2A, $21, $39, $31, $74, $1E, $1F, $1F, $1F, $17, $1B, $02, $03, $00, $08, $03, $0B, $3F, $3F, $0F, $6F, $1A, $0D, $27, $87
	dc.b $38, $63, $31, $31, $31, $10, $13, $1A, $1B, $0E, $00, $00, $00, $00, $00, $00, $00, $3F, $0F, $0F, $0F, $1A, $19, $1A, $80
	dc.b $3D, $65, $28, $02, $61, $DF, $1F, $1F, $1F, $12, $04, $0F, $0F, $00, $00, $00, $00, $2F, $0F, $0F, $0F, $27, $91, $9B, $80
	dc.b $1F, $16, $61, $03, $52, $1C, $9F, $1F, $1F, $12, $0F, $0F, $0F, $00, $00, $00, $00, $FF, $0F, $0F, $0F, $91, $8A, $8A, $80
	dc.b $30, $75, $75, $71, $31, $D8, $58, $96, $94, $01, $0B, $03, $08, $01, $04, $01, $01, $F3, $23, $34, $35, $34, $29, $10, $80
	dc.b $1C, $76, $74, $36, $34, $94, $99, $94, $99, $08, $0A, $08, $0A, $00, $05, $00, $05, $35, $47, $35, $47, $1E, $80, $19, $80
	dc.b $3A, $42, $4A, $32, $42, $5C, $53, $5C, $4D, $07, $09, $07, $04, $00, $00, $00, $00, $1F, $3F, $1F, $0F, $1B, $18, $33, $80
	dc.b $16, $7A, $74, $3C, $31, $1F, $1F, $1F, $1F, $0A, $07, $0C, $06, $07, $0A, $07, $05, $25, $A7, $A7, $55, $14, $85, $8A, $80
	dc.b $30, $31, $3A, $30, $31, $9E, $D8, $DC, $DC, $0E, $0A, $01, $05, $08, $08, $08, $08, $BF, $B6, $B6, $BA, $14, $2F, $14, $80
	dc.b $3A, $41, $45, $32, $41, $59, $4F, $5C, $4E, $0A, $0B, $0D, $04, $00, $01, $00, $00, $1F, $5F, $2F, $08, $1D, $0F, $20, $80
	dc.b $30, $30, $3A, $30, $31, $9E, $D8, $DC, $DC, $0E, $0A, $01, $05, $08, $08, $08, $08, $B6, $B6, $B6, $B6, $14, $2F, $14, $80
	dc.b $3A, $32, $02, $02, $72, $8F, $8F, $4F, $4D, $09, $09, $00, $03, $00, $00, $00, $00, $15, $F5, $05, $08, $19, $1F, $19, $80
	dc.b $3A, $20, $29, $20, $01, $1E, $1F, $1F, $1F, $0A, $0A, $0B, $0A, $05, $07, $0A, $08, $A4, $85, $96, $77, $21, $25, $28, $80
	dc.b $3F, $14, $04, $12, $01, $1F, $1F, $1F, $1F, $00, $00, $00, $00, $00, $00, $00, $00, $AA, $AA, $AA, $9A, $AF, $88, $80, $80
	dc.b $3D, $01, $22, $42, $02, $19, $52, $52, $53, $07, $08, $08, $0A, $01, $00, $00, $04, $24, $1A, $1A, $16, $1C, $87, $87, $87
	dc.b $08, $0A, $30, $30, $00, $1F, $1F, $5F, $5F, $12, $0E, $0A, $0A, $00, $04, $04, $03, $26, $26, $26, $26, $24, $2D, $13, $80
	dc.b $14, $70, $70, $30, $30, $5F, $5F, $5F, $5F, $17, $0A, $19, $0A, $00, $00, $00, $00, $FF, $F7, $FF, $F7, $00, $80, $00, $80
	dc.b $3C, $0B, $02, $0A, $02, $1F, $1E, $1F, $1F, $0F, $0E, $11, $10, $13, $0F, $11, $0E, $24, $07, $17, $08, $20, $80, $1B, $80
	dc.b $28, $03, $0F, $17, $71, $1F, $12, $1F, $1F, $04, $01, $04, $0C, $01, $01, $01, $00, $10, $19, $10, $17, $17, $26, $1B, $80
	dc.b $3A, $01, $40, $01, $31, $1F, $1F, $1F, $1F, $0B, $04, $04, $04, $02, $04, $03, $02, $53, $1C, $53, $26, $18, $05, $11, $80
	dc.b $20, $66, $65, $60, $61, $DF, $DF, $9F, $9F, $07, $06, $09, $06, $07, $06, $06, $08, $2F, $1F, $1F, $FF, $1C, $2E, $16, $81
	dc.b $28, $03, $0F, $17, $71, $1F, $12, $1F, $1F, $04, $01, $04, $0C, $01, $01, $01, $00, $10, $19, $10, $17, $17, $1F, $1B, $80