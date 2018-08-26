smpsIsZ80 =		1
smpsUniVoiceBank =	$17D8
; E7 - Do not attack of next note (HOLD)
sHold =			$E7
; ---------------------------------------------------------------------------------------------
; PSG volume envelope equates
	enum $00,   v00,v01,v02,v03,v04,v05
	enum v05+1, v06,v07,v08,v09,v0A,v0B
	enum v0B+1, v0C,v0D,v0E,v0F,v10,v11
	enum v11+1, v12,v13,v14,v15,v16,v17
	enum v17+1, v18,v19,v1A,v1B,v1C,v1D
	enum v1D+1, v1E,v1F,v20,v21,v22,v23
	enum v23+1, v24,v25,v26,v27
; ---------------------------------------------------------------------------------------------
; PSG modulation envelope equates
	enum $00,   m00,m01,m02,m03,m04,m05
	enum m05+1, m06,m07,m08
; ---------------------------------------------------------------------------------------------
; DAC Equates
	enum $81, dSnare,dHighTom,dMidTom,dLowTom,dFloorTom,dKick,dMuffledSnare
	enum dMuffledSnare+1, dCrashCymbal,dRideCymbal,dLowMetalHit,dMetalHit,dHighMetalHit
	enum dHighMetalHit+1, dHigherMetalHit,dMidMetalHit,dClap,dElectricHighTom
	enum dElectricHighTom+1, dElectricMidTom,dElectricLowTom,dElectricFloorTom
	enum dElectricFloorTom+1, dTightSnare,dMidpitchSnare,dLooseSnare,dLooserSnare
	enum dLooserSnare+1, dHiTimpani,dLowTimpani,dMidTimpani,dQuickLooseSnare
	enum dQuickLooseSnare+1, dClick,dPowerKick,dQuickGlassCrash

	enum dQuickGlassCrash+1, dGlassCrashSnare,dGlassCrash,dGlassCrashKick,dQuietGlassCrash
	enum dQuietGlassCrash+1, dOddSnareKick,dKickExtraBass,dComeOn,dDanceSnare,dLooseKick
	enum dLooseKick+1, dModLooseKick,dWoo,dGo,dSnareGo,dPowerTom,dHiWoodBlock,dLowWoodBlock
	enum dLowWoodBlock+1, dHiHitDrum,dLowHitDrum,dMetalCrashHit,dEchoedClapHit
	enum dEchoedClapHit+1, dLowerEchoedClapHit,dHipHopHitKick,dHipHopHitPowerKick
	enum dHipHopHitPowerKick+1, dBassHey,dDanceStyleKick,dHipHopHitKick2,dHipHopHitKick3
	enum dHipHopHitKick3+1, dReverseFadingWind,dScratch,dLooseSnareNoise,dPowerKick2
	enum dPowerKick2+1, dCrashingNoiseWoo,dQuickHit,dKickHey,dPowerKickHit
	enum dPowerKickHit+1, dLowPowerKickHit,dLowerPowerKickHit,dLowestPowerKickHit
	enum dLowestPowerKickHit+1, dEchoedClapHit2,dLowerEchoedClapHit2
; ---------------------------------------------------------------------------------------------
; SMPS commands

; E0xx - Panning, AMS, FMS (PANAFMS - PAFMS_PAN)
sPan		macro dir,amsfms
	if narg=2
		dc.b $E0,\dir+\amsfms
	else
		dc.b $E0,\dir
	endif
    endm

; E1xx - Set channel frequency displacement to xx (DETUNE)
ssDetune	macro val
	dc.b $E1,\val
    endm

; E2[xx] - Fade in previous song (FADE_IN_SONG)
sFade		macro val
	dc.b $E2
	if narg=1
		dc.b \val
	else
		dc.b $FF
	endif
    endm

; E3 - Stop FM (TRK_END - TEND_MUTE)
sMuteStopFM	macro
	dc.b $E3
    endm

; E4 - S3K's special set volume absolute (VOLUME - VOL_ABS_S3K)
ssVol		macro val
	dc.b $E4,-(\val)&$7F
    endm

; E5yyxx - Add xx to volume. yy is broken/ignored (VOLUME - VOL_CC_FMP2)
saVolFMP	macro psg,fm
	dc.b $E5,\psg,\fm
	; Sonic Team should be handed a dunce hat for breaking this simple command...
    endm

; E6xx - Add xx to volume. (VOLUME - VOL_CC_FM)
saVolFM		macro vol
	dc.b $E6,\vol
    endm

; E8xx - Stop note after xx ticks (NOTE_STOP - NSTOP_MULT)
sNoteTimeOut	macro val
	dc.b $E8,\val
    endm

; E9 - Rev spindash once (SPINDASH_REV - SDREV_INC)
sSpDashRev	macro
	dc.b $E9
    endm

; EAxx - Play sample xx (bit7 clear) (PLAY_DAC)
sPlayDAC	macro sample
	dc.b $EA,(\sample&$7F)
    endm

; EBxxyyyy - Jump to zzzz, if loop index xx is 1 (last iteration of loop) (LOOP_EXIT)
sLoopExit	macro index,loc
	dc.b $EB,\index
	Z80PtrROM \loc
    endm

; ECxx - Add xx to PSG channel volume (VOLUME - VOL_CC_PSG)
saVolPSG	macro vol
	dc.b $EC,\vol
    endm

; EDxx - Set channel pitch to xx (TRANSPOSE - TRNSP_ADD)
ssTransposeS3K	macro val
	dc.b $ED,\val
    endm

; EExxyy - Write yy to YM port 1 reg xx (FM_COMMAND - FMW_FM1)
sYM1cmd		macro reg,val
	dc.b $EE,\reg,\val
    endm

; EFxx[yy] - Set patch id of FM channel to xx. If xx bit7 set, read from another song instead
; (INSTRUMENT - INS_C_FMP)
sPatFM		macro pat, songID
	if narg=2
		dc.b $EF,\pat|$80,\songID+$81
	else
		dc.b $EF,\pat
	endif
    endm

; F0wwxxyyzz - Modulation
;  ww: wait time
;  xx: modulation speed
;  yy: change per step
;  zz: number of steps
; (MOD_SETUP)
ssModZ80	macro wait,speed,change,step
	dc.b $F0,\wait,\speed,\change,\step
    endm

; F1yyxx - For FM channels, set channel modulation envelope to xx. For PSG, use yy (MOD_ENV - MENV_FMP)
; F4xx - Set channel modulation envelope to xx  (MOD_ENV - MENV_GEN)
sModEnv		macro psg,fm
	if narg=1
		dc.b $F4,\psg
	else
		dc.b $F1,\psg,\fm
	endif
    endm

; F2 - End of channel (TRK_END - TEND_STD)
sStop		macro
	dc.b $F2
    endm

; F3xx - PSG waveform to xx (PSG_NOISE - PNOIS_SET)
sNoisePSG		macro val
	dc.b $F3,\val
    endm

; F480 - Turn on Modulation (MOD_SET - MODS_ON)
sModOn		macro
	dc.b $F4,$80
    endm

; F5xx - PSG volume envelope to xx (INSTRUMENT - INS_C_PSG)
sVolEnvPSG	macro voice
	dc.b $F5,voice
    endm

; F6xxxx - Jump to xxxx (GOTO)
sJump		macro loc
	dc.b $F6
	Z80PtrROM \loc
    endm

; F7xxyyzzzz - Loop back to zzzz yy times, xx being the loop index for loop recursion fixing (LOOP)
sLoop		macro index,loops,loc
	dc.b $F7,\index,\loops
	Z80PtrROM \loc
    endm

; F8xxxx - Call pattern at xxxx, saving return point (GOSUB)
sCall		macro loc
	dc.b $F8
	Z80PtrROM \loc
    endm

; F9 - Return (RETURN)
sRet		macro
	dc.b $F9
    endm

; FA - Turn off Modulation (MOD_SET - MODS_OFF)
sModOff		macro
	dc.b $FA
    endm

; FBxx - Add xx to channel pitch (TRANSPOSE - TRNSP_ADD)
saTranspose	macro val
	dc.b $FB,\val
    endm

; FCxxxx -  If continous SFX counter is > 0, jump to xxxx (CONT_SFX)
sCont		macro loc
	dc.b $FC
	Z80PtrROM \loc
    endm

; FDxx - Enable raw frequency mode (RAW_FREQ)
sRawFreq	macro val
	dc.b $FD,\val
    endm

; FEwwxxyyzz - Enable special FM3 mode (broken?) (SPC_FM3)
sSpecFM3	macro ind1,ind2,ind3,ind4
	dc.b $FE,\ind1,\ind2,\ind3,\ind4
    endm

; FF00xx - Set music tempo to xx (TEMPO - TEMPO_SET)
ssTempo		macro tempo
	dc.b $FF,$00,\tempo
    endm

; FF01xx - Play sound xx (SND_CMD)
sPlaySound	macro val
	dc.b $FF,$01,\val
    endm

; FF02xx - Pause music (MUS_PAUSE - MUSP_Z80)
sMusPause	macro val
	dc.b $FF,$02,\val
    endm

; FF03xxxxyy - Copy yy bytes from xxxx to here (only in Z80 RAM) (COPY_MEM)
sCopyMem	macro loc,len
	dc.b $FF,$03
	littleEndian \loc
	dc.b \len
    endm

; FF04xx - Set global tick multiplier to xx (TICK_MULT - TMULT_ALL)
ssTickMul	macro tmul
	dc.b $FF,$04,\tmul
    endm

; FF05wwxxyyzz - Enable SSG-EG (SSG_EG - SEG_NORMAL)
sSSGEG		macro op1,op2,op3,op4
	dc.b $FF,$05,\op1,\op3,\op2,\op4
    endm

; FF06xxyy - ?? (FM_VOLENV)
sVolEnvFM	macro tone,mask
	dc.b $FF,$06,\tone,\mask
    endm

; FF07 - Reset spindash rev counter (SPINDASH_REV - SDREV_RESET)
sSpDashReset	macro
	dc.b $FF,$07
    endm

sPatch		macro
	dc.b	(spFe<<3)+spAl
;   0     1     2     3     4     5     6     7
;%1000,%1000,%1000,%1000,%1010,%1110,%1110,%1111
spTLMask4 set $80
spTLMask2 set ((spAl>=5)<<7)
spTLMask3 set ((spAl>=4)<<7)
spTLMask1 set ((spAl=7)<<7)

	dc.b (spDe1<<4)+spMu1, (spDe3<<4)+spMu3, (spDe2<<4)+spMu2, (spDe4<<4)+spMu4
	dc.b (spRS1<<6)+spAR1, (spRS3<<6)+spAR3, (spRS2<<6)+spAR2, (spRS4<<6)+spAR4
	dc.b (spAM1<<7)+spSR1, (spAM3<<7)+spsR3, (spAM2<<7)+spSR2, (spAM4<<7)+spSR4
	dc.b spDR1,            spDR3,            spDR2,            spDR4
	dc.b (spSL1<<4)+spRR1, (spSL3<<4)+spRR3, (spSL2<<4)+spRR2, (spSL4<<4)+spRR4
	dc.b spTL1|spTLMask1,  spTL3|spTLMask3,  spTL2|spTLMask2,  spTL4|spTLMask4
    endm
