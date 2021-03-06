;
; +-------------------------------------------------------------------------+
; |   This file	has been generated by The Interactive Disassembler (IDA)    |
; |	      Copyright	(c) 2011 Hex-Rays, <support@hex-rays.com>	    |
; |			 License info: 48-327F-7274-B7			    |
; |			       ESET spol. s r.o.			    |
; +-------------------------------------------------------------------------+
;
; Input	MD5   :	5A83C1767E576E10E8A225B420B2FD48
; Input	CRC32 :	43A3FD29

; ---------------------------------------------------------------------------
; File Name   :	D:\Emulatoren\Sega\Exodus_1.0.0\TestROMs\Z80_Drvs\DACDrv\Treasure\Dynamite Headdy (UE) [c][!] Z80.bin
; Format      :	Binary file
; Base Address:	0000h Range: 0000h - 0C00h Loaded length: 0C00h

; Processor	  : z80	[]
; Target assembler: Zilog Macro	Assembler

; ===========================================================================

; Segment type:	Regular
	include "../../code/LANG Z80.ASM"
	opt w-	; a lot of warnings, ignore...
		org 0
	z80prog 0
loc_0:					; DATA XREF: RAM:000Br	RAM:000Fr ...
		di
		di
		di
		ld	sp, byte_1F00
		ld	a, 1
		ld	(byte_1F2A), a
		ld	ix, (loc_0)
		ld	ix, (loc_0)
		ld	hl, 4002h
		ld	(hl), 0B6h
		inc	hl
		ld	(hl), 0
		ld	ix, (loc_0)
		ld	ix, (loc_0)
		ld	hl, 4000h
		ld	(hl), 28h
		inc	hl
		ld	(hl), 6
		ld	ix, (loc_0)
		ld	ix, (loc_0)
		dec	hl
		ld	(hl), 2Bh
		inc	hl
		xor	a
		ld	(hl), a
		ld	(byte_1FFF), a
		ld	(byte_1FFE), a
		ld	(byte_1FFD), a
		ld	(byte_1FFC), a
		ld	(byte_1FFA), a
		ld	(byte_1FF9), a
		ld	(byte_1FF8), a
		ld	(byte_1F86), a
		ld	(byte_1FA6), a
		ld	(byte_1F87), a
		ld	(byte_1FA7), a
		ld	(byte_1F2A), a

loc_5D:					; CODE XREF: RAM:0061j	RAM:06F8j
		ld	a, (byte_1FFE)
		zor	a
		jp	z, loc_5D

loc_64:					; CODE XREF: RAM:0189j	RAM:01E7j ...
		ld	(byte_1F2A), a
		zor	a
		jp	m, loc_1EA
		ld	(byte_1FE0), a
		xor	a
		ld	(byte_1FFE), a
		ld	iy, (word_1FE6)
		ld	a, (byte_1FFB)
		ld	(byte_1FFC), a
		ld	a, (byte_1FFD)
		zor	a
		jp	m, loc_88
		ld	a, (byte_1FF9)
		jr	loc_8B
; ---------------------------------------------------------------------------

loc_88:					; CODE XREF: RAM:0080j
		ld	a, (byte_1FFA)

loc_8B:					; CODE XREF: RAM:0086j
		ex	af, af
	; loading z80 bank begins here
		ld	a, (byte_1FE9)
		rlca
		ld	(6000h), a
		ld	b, 8
		ld	a, (byte_1FE8)

loc_98:					; CODE XREF: RAM:009Cj
		ld	(6000h), a
		rrca
		djnz	loc_98
		xor	a
		ld	(byte_1F2A), a
		ld	l, (iy+0)
		ld	h, (iy+1)
		ld	de, SampleCache
		ld	bc, 80h

loc_AE:					; CODE XREF: RAM:00B2j	RAM:00BDj
		ld	a, (byte_1FFF)
		zor	a
		jp	nz, loc_AE
		ldi			; copy 80h bytes from ROM bank to Z80 RAM
		ldi
		ldi
		ldi
		jp	pe, loc_AE
		ld	a, (iy+2)
		ld	b, (iy+3)
		zsub	80h
		jp	nc, loc_CC
		dec	b

loc_CC:					; CODE XREF: RAM:00C8j
		ld	c, a
		exx
		ld	a, 80h
		ld	(byte_1F2A), a
		ld	ix, (loc_0)
		ld	ix, (loc_0)
		ex	af, af
		ld	hl, 4002h
		ld	(hl), 0B6h
		inc	hl
		ld	(hl), a
		ld	ix, (loc_0)
		ld	ix, (loc_0)
		ld	hl, 4000h
		ld	(hl), 28h
		inc	hl
		ld	(hl), 6
		ld	ix, (loc_0)
		ld	ix, (loc_0)
		dec	hl
		ld	(hl), 2Bh
		inc	hl
		ld	(hl), 80h
		ld	hl, byte_1F2A
		ld	de, 4000h
		ld	a, (byte_1FE0)
		ld	c, a
		exx
		ld	sp, word_1FE6
		push	hl
		ld	hl, SampleCache
		ld	(word_1FE2), hl
		ld	a, 80h
		ex	af, af
		xor	a
		ld	(byte_1F2A), a
		jp	loc_179
; ---------------------------------------------------------------------------

loc_120:				; CODE XREF: RAM:0186j
		ld	hl, (word_1FE2)
		ld	d, h
		ld	a, l
		inc	a
		ld	(word_1FE2), a
		ex	af, af
		ld	l, (hl)
		dec	h
		zadd	a, (hl)
		exx
		ld	(hl), d
		znop
		ld	b, c
		ex	de, hl
		ld	(hl), e
		ex	de, hl
		ld	(4001h), a
		ld	(hl), e

loc_138:				; CODE XREF: RAM:loc_138j
		djnz	*
		exx
		dec	h
		zadd	a, (hl)
		ex	af, af
		cp	e
		jr	z, loc_154
		jp	m, loc_15D
		ld	a, (iy+0)
		inc	iy

loc_149:				; CODE XREF: RAM:0161j
		znop
		znop
		inc	iy
		inc	iy
		inc	iy
		jp	loc_169
; ---------------------------------------------------------------------------

loc_154:				; CODE XREF: RAM:013Fj	RAM:015Aj
		ld	a, (byte_1FFF)
		zor	a
		jr	z, loc_163
		jp	loc_154
; ---------------------------------------------------------------------------

loc_15D:				; CODE XREF: RAM:0141j
		ld	a, (byte_1FFF)
		zor	a
		jr	nz, loc_149

loc_163:				; CODE XREF: RAM:0158j
		pop	hl
		ldi
		ldi
		push	hl

loc_169:				; CODE XREF: RAM:0151j
		ex	af, af
		exx
		ld	(hl), d
		znop
		ld	b, c
		ex	de, hl
		ld	(hl), e
		ex	de, hl
		ld	(4001h), a
		ld	(hl), e

loc_175:				; CODE XREF: RAM:loc_175j
		djnz	*
		exx
		ex	af, af

loc_179:				; CODE XREF: RAM:011Dj
		ld	a, b
		zor	a
		jp	m, loc_18C
		zor	c
		jp	z, loc_18F
		ld	a, (byte_1FFE)
		zor	a
		jp	z, loc_120
		jp	loc_64
; ---------------------------------------------------------------------------

loc_18C:				; CODE XREF: RAM:017Bj
		znop
		inc	iy

loc_18F:				; CODE XREF: RAM:017Fj
		ld	a, 0
		znop
		znop
		ld	a, e
		zadd	a, c
		ld	e, a

loc_196:				; CODE XREF: RAM:01E4j
		ld	hl, (word_1FE2)
		ld	d, h
		ld	a, l
		inc	a
		ld	(word_1FE2), a
		ex	af, af
		ld	l, (hl)
		dec	h
		zadd	a, (hl)
		exx
		ld	(hl), d
		znop
		ld	b, c
		ex	de, hl
		ld	(hl), e
		ex	de, hl
		ld	(4001h), a
		ld	(hl), e

loc_1AE:				; CODE XREF: RAM:loc_1AEj
		djnz	*
		exx
		dec	h
		zadd	a, (hl)
		ex	af, af
		znop
		znop
		inc	iy
		inc	iy
		inc	iy
		inc	iy
		inc	iy
		inc	iy
		inc	iy
		inc	iy
		inc	iy
		ex	af, af
		exx
		ld	(hl), d
		znop
		ld	b, c
		ex	de, hl
		ld	(hl), e
		ex	de, hl
		ld	(4001h), a
		ld	(hl), e

loc_1D4:				; CODE XREF: RAM:loc_1D4j
		djnz	*
		exx
		ex	af, af
		znop
		znop
		inc	iy
		cp	e
		jp	z, loc_6C8
		ld	a, (byte_1FFE)
		zor	a
		jp	z, loc_196
		jp	loc_64
; ---------------------------------------------------------------------------

loc_1EA:				; CODE XREF: RAM:0068j
		xor	a
		ld	(byte_1FFE), a
		ld	a, (byte_1FFB)
		ld	(byte_1FFC), a
		ld	hl, 4002h
		ld	(hl), 0B6h
		inc	l
		ld	(hl), 0C0h
		ld	ix, (loc_0)
		ld	ix, (loc_0)
		ld	hl, 4000h
		ld	(hl), 28h
		inc	l
		ld	(hl), 6
		dec	l
		ld	ix, (loc_0)
		ld	ix, (loc_0)
		ld	(hl), 2Bh
		inc	l
		ld	(hl), 80h
		dec	l
		ld	hl, SampleCache2
		ld	(word_1FC1+1), hl
		ld	(word_1F92), hl
		ld	hl, SampleCache
		ld	(word_1FC5+1), hl
		ld	(word_1FB2), hl
		ld	a, 80h
		ld	(word_1FC1), a
		ld	(word_1FC5), a
		xor	a
		ld	(byte_1FC0), a
		ld	(byte_1FC4), a
		ld	(byte_1F90), a
		ld	(byte_1FB0), a
		ld	(byte_1F2A), a
		ld	hl, byte_1F2A
		ld	de, 4000h
		ld	bc, 4001h
		exx
		jp	loc_288
; ---------------------------------------------------------------------------

loc_252:				; CODE XREF: RAM:0296j
		pop	hl
		ld	a, l
		ex	af, af
		ld	c, 80h
		zadd	ix, bc
		zadd	iy, bc
		znop
		znop
		ld	a, 0
		ld	de, (loc_0)
		ld	de, (loc_0)
		jp	loc_2AE
; ---------------------------------------------------------------------------

loc_26A:				; CODE XREF: RAM:02AFj
		pop	hl
		ld	c, 80h
		zadd	ix, bc
		zadd	iy, bc
		znop
		ld	de, 0
		ld	de, (loc_0)
		ld	de, (loc_0)
		ld	de, (loc_0)
		ld	de, (loc_0)
		jp	loc_2D2
; ---------------------------------------------------------------------------

loc_288:				; CODE XREF: RAM:024Fj	RAM:0588j ...
		ld	b, 0
		ld	ix, AddClipTable
		ld	iy, AddClipTable
		ld	sp, byte_1FC0
		pop	af
		jr	nc, loc_252
		pop	hl
		ld	d, l
		inc	d
		ld	l, (hl)
		ld	h, 0Bh		; 0Bxx - DPCM_HighNibble
		zadd	a, (hl)
		ld	c, a
		zadd	ix, bc
		dec	h		; 0Axx - DPCM_LowNibble
		zadd	a, (hl)
		ld	c, a
		zadd	iy, bc
		ld	e, a
		ld	(word_1FC1), de
		ld	a, d
		ex	af, af

loc_2AE:				; CODE XREF: RAM:0267j
		pop	af
		jr	nc, loc_26A
		pop	hl
		ld	d, l
		inc	d
		ld	l, (hl)
		dec	h
		zadd	a, (hl)
		ld	c, a
		zadd	ix, bc
		dec	h
		zadd	a, (hl)
		ld	c, a
		zadd	iy, bc
		ld	e, a
		ld	(word_1FC5), de
		ld	a, (word_1FB2)
		zsub	d
		jr	z, loc_2CF
		znop
		znop
		jp	loc_2D2
; ---------------------------------------------------------------------------

loc_2CF:				; CODE XREF: RAM:02C8j
		ld	(byte_1FC4), a

loc_2D2:				; CODE XREF: RAM:0285j	RAM:02CCj
		exx
		ld	(hl), d
		ld	a, (ix+0)
		ex	de, hl
		ld	(hl), e
		ex	de, hl
		ld	(bc), a
		ld	(hl), e
		exx
		ld	sp, byte_1F90
		pop	af
		jp	nc, loc_3D9
		pop	de
		ex	af, af
		zsub	e
		jp	nz, loc_2F6

loc_2EA:				; CODE XREF: RAM:02EEj
		ld	a, (byte_1FFF)
		zor	a
		jp	nz, loc_2EA
		ld	a, 0
		jp	loc_302
; ---------------------------------------------------------------------------

loc_2F6:				; CODE XREF: RAM:02E7j
		cp	0C0h
		jp	c, loc_38F
		ld	a, (byte_1FFF)
		zor	a
		jp	nz, loc_396

loc_302:				; CODE XREF: RAM:02F3j
		ld	hl, 6000h
		pop	bc
		rlc	b
		ld	(hl), b
		ld	a, c
		ld	(hl), a
		rrca
		ld	(hl), a
		rrca
		ld	(hl), a
		rrca
		ld	(hl), a
		rrca
		ld	(hl), a
		rrca
		ld	(hl), a
		rrca
		ld	(hl), a
		rrca
		ld	(hl), a
		pop	hl
		pop	bc
		ldi
		ldi
		ldi
		ldi
		jp	pe, loc_333
		ld	a, e
		ld	(word_1F92), a
		xor	a
		ld	(byte_1F90), a
		ld	a, 0
		znop
		jr	loc_33E
; ---------------------------------------------------------------------------

loc_333:				; CODE XREF: RAM:0323j
		ld	a, b
		zor	a
		jp	m, loc_362
		push	bc
		push	hl
		ld	a, e
		ld	(word_1F92), a

loc_33E:				; CODE XREF: RAM:0331j	RAM:03D6j ...
		exx
		ld	(hl), d
		ld	a, (iy+0)
		ex	de, hl
		ld	(hl), e
		ex	de, hl
		ld	(bc), a
		ld	(hl), e
		exx
		ld	a, (byte_1FFE)
		zor	a
		jp	z, loc_4C3
		ex	af, af
		xor	a
		ld	(byte_1F86), a
		ld	(byte_1FA6), a
		ld	(byte_1F87), a
		ld	(byte_1FA7), a
		ex	af, af
		jp	loc_64
; ---------------------------------------------------------------------------

loc_362:				; CODE XREF: RAM:0335j
		ld	a, e
		zadd	a, c
		ld	(word_1F92), a
		xor	a
		ld	(byte_1F90), a
		exx
		ld	(hl), d
		ld	a, (iy+0)
		ex	de, hl
		ld	(hl), e
		ex	de, hl
		ld	(bc), a
		ld	(hl), e
		exx
		ld	a, (byte_1FFE)
		zor	a
		jp	z, loc_4C3
		ex	af, af
		xor	a
		ld	(byte_1F86), a
		ld	(byte_1FA6), a
		ld	(byte_1F87), a
		ld	(byte_1FA7), a
		ex	af, af
		jp	loc_64
; ---------------------------------------------------------------------------

loc_38F:				; CODE XREF: RAM:02F8j
		ld	a, 1
		ld	(byte_1FC0), a
		ld	a, 0

loc_396:				; CODE XREF: RAM:02FFj
		ld	a, (byte_1F86)
		zor	a
		jp	m, loc_3A5
		znop
		ld	a, 0
		ld	bc, 0
		jr	loc_3AD
; ---------------------------------------------------------------------------

loc_3A5:				; CODE XREF: RAM:039Aj	RAM:03EEj
		ld	a, 40h
		ld	(byte_1F86), a
		ld	(byte_1F90), a

loc_3AD:				; CODE XREF: RAM:03A3j
		znop
		ld	bc, (loc_0)
		ld	bc, (loc_0)
		ld	bc, (loc_0)
		ld	bc, (loc_0)
		ld	bc, (loc_0)
		ld	bc, (loc_0)
		ld	bc, (loc_0)
		ld	bc, (loc_0)
		ld	bc, (loc_0)
		ld	bc, (loc_0)
		jp	loc_33E
; ---------------------------------------------------------------------------

loc_3D9:				; CODE XREF: RAM:02E1j
		jp	z, loc_448
		znop
		znop
		znop
		ld	bc, 0
		ld	bc, (loc_0)
		ld	bc, (loc_0)
		ld	a, (byte_1F86)
		zor	a
		jp	m, loc_3A5
		jp	nz, loc_405
		znop
		ld	a, 0
		ld	bc, 0
		ld	bc, (loc_0)
		ld	bc, (loc_0)
		jp	loc_422
; ---------------------------------------------------------------------------

loc_405:				; CODE XREF: RAM:03F1j
		pop	de
		ex	af, af
		cp	e
		jp	z, loc_418
		ld	a, 0
		ld	bc, (loc_0)
		ld	bc, (loc_0)
		jp	loc_429
; ---------------------------------------------------------------------------

loc_418:				; CODE XREF: RAM:0408j
		xor	a
		ld	(byte_1FC0), a
		ld	(byte_1F86), a
		ld	(byte_1F87), a

loc_422:				; CODE XREF: RAM:0402j
		ld	a, (byte_1FA6)
		zor	a
		jp	z, loc_6C8

loc_429:				; CODE XREF: RAM:0415j
		znop
		znop
		znop
		ld	a, 0
		ld	bc, 0
		ld	bc, (loc_0)
		ld	bc, (loc_0)
		ld	bc, (loc_0)
		ld	bc, (loc_0)
		ld	bc, (loc_0)
		jp	loc_33E
; ---------------------------------------------------------------------------

loc_448:				; CODE XREF: RAM:loc_3D9j
		xor	a
		ld	(byte_1FC0), a
		ld	(word_1FC1+1), a
		ld	(word_1F92), a
		ld	a, 80h
		ld	(word_1FC1), a
		ld	a, 1
		ld	(byte_1F90), a
		ld	(byte_1F2A), a
		ld	a, (byte_1FFB)
		ld	(byte_1FFC), a
		ld	sp, byte_1F80
		pop	hl
		pop	de
		pop	bc
		ld	sp, byte_1F9A
		push	bc
		push	de
		push	hl
		xor	a
		ld	(byte_1F2A), a
		znop
		ld	bc, (loc_0)
		ld	bc, (loc_0)
		ld	bc, (loc_0)
		ld	bc, (loc_0)
		ld	bc, (loc_0)
		jp	loc_33E
; ---------------------------------------------------------------------------

loc_48D:				; CODE XREF: RAM:04D1j
		pop	hl
		ld	c, 80h
		zadd	ix, bc
		zadd	iy, bc
		ld	a, 0
		ld	de, 0
		ld	de, (loc_0)
		ld	de, (loc_0)
		ld	de, (loc_0)
		ld	de, (loc_0)
		jp	loc_4F5
; ---------------------------------------------------------------------------

loc_4AC:				; CODE XREF: RAM:04F6j
		pop	hl
		ld	a, l
		ex	af, af
		ld	c, 80h
		zadd	ix, bc
		zadd	iy, bc
		znop
		znop
		znop
		ld	de, (loc_0)
		ld	de, (loc_0)
		jp	loc_50D
; ---------------------------------------------------------------------------

loc_4C3:				; CODE XREF: RAM:034Dj	RAM:037Aj
		ld	b, 0
		ld	ix, AddClipTable
		ld	iy, AddClipTable
		ld	sp, byte_1FC0
		pop	af
		jr	nc, loc_48D
		pop	hl
		ld	d, l
		inc	d
		ld	l, (hl)
		ld	h, 0Bh		; 0Bxx - DPCM_HighNibble
		zadd	a, (hl)
		ld	c, a
		zadd	ix, bc
		dec	h		; 0Axx - DPCM_LowNibble
		zadd	a, (hl)
		ld	c, a
		zadd	iy, bc
		ld	e, a
		ld	(word_1FC1), de
		ld	a, (word_1F92)
		zsub	d
		jr	z, loc_4F2
		znop
		znop
		jp	loc_4F5
; ---------------------------------------------------------------------------

loc_4F2:				; CODE XREF: RAM:04EBj
		ld	(byte_1FC0), a

loc_4F5:				; CODE XREF: RAM:04A9j	RAM:04EFj
		pop	af
		jr	nc, loc_4AC
		pop	hl
		ld	d, l
		inc	d
		ld	l, (hl)
		dec	h
		zadd	a, (hl)
		ld	c, a
		zadd	ix, bc
		dec	h
		zadd	a, (hl)
		ld	c, a
		zadd	iy, bc
		ld	e, a
		ld	(word_1FC5), de
		ld	a, d
		ex	af, af

loc_50D:				; CODE XREF: RAM:04C0j
		exx
		ld	(hl), d
		ld	a, (ix+0)
		ex	de, hl
		ld	(hl), e
		ex	de, hl
		ld	(bc), a
		ld	(hl), e
		exx
		ld	sp, byte_1FB0
		pop	af
		jp	nc, loc_614
		pop	de
		ex	af, af
		zsub	e
		jp	nz, loc_531

loc_525:				; CODE XREF: RAM:0529j
		ld	a, (byte_1FFF)
		zor	a
		jp	nz, loc_525
		ld	a, 0
		jp	loc_53D
; ---------------------------------------------------------------------------

loc_531:				; CODE XREF: RAM:0522j
		cp	0C0h
		jp	c, loc_5CA
		ld	a, (byte_1FFF)
		zor	a
		jp	nz, loc_5D1

loc_53D:				; CODE XREF: RAM:052Ej
		ld	hl, 6000h
		pop	bc
		rlc	b
		ld	(hl), b
		ld	a, c
		ld	(hl), a
		rrca
		ld	(hl), a
		rrca
		ld	(hl), a
		rrca
		ld	(hl), a
		rrca
		ld	(hl), a
		rrca
		ld	(hl), a
		rrca
		ld	(hl), a
		rrca
		ld	(hl), a
		pop	hl
		pop	bc
		ldi
		ldi
		ldi
		ldi
		jp	pe, loc_56E
		ld	a, e
		ld	(word_1FB2), a
		xor	a
		ld	(byte_1FB0), a
		ld	a, 0
		znop
		jr	loc_579
; ---------------------------------------------------------------------------

loc_56E:				; CODE XREF: RAM:055Ej
		ld	a, b
		zor	a
		jp	m, loc_59D
		push	bc
		push	hl
		ld	a, e
		ld	(word_1FB2), a

loc_579:				; CODE XREF: RAM:056Cj	RAM:0611j ...
		exx
		ld	(hl), d
		ld	a, (iy+0)
		ex	de, hl
		ld	(hl), e
		ex	de, hl
		ld	(bc), a
		ld	(hl), e
		exx
		ld	a, (byte_1FFE)
		zor	a
		jp	z, loc_288
		ex	af, af
		xor	a
		ld	(byte_1F86), a
		ld	(byte_1FA6), a
		ld	(byte_1F87), a
		ld	(byte_1FA7), a
		ex	af, af
		jp	loc_64
; ---------------------------------------------------------------------------

loc_59D:				; CODE XREF: RAM:0570j
		ld	a, e
		zadd	a, c
		ld	(word_1FB2), a
		xor	a
		ld	(byte_1FB0), a
		exx
		ld	(hl), d
		ld	a, (iy+0)
		ex	de, hl
		ld	(hl), e
		ex	de, hl
		ld	(bc), a
		ld	(hl), e
		exx
		ld	a, (byte_1FFE)
		zor	a
		jp	z, loc_288
		ex	af, af
		xor	a
		ld	(byte_1F86), a
		ld	(byte_1FA6), a
		ld	(byte_1F87), a
		ld	(byte_1FA7), a
		ex	af, af
		jp	loc_64
; ---------------------------------------------------------------------------

loc_5CA:				; CODE XREF: RAM:0533j
		ld	a, 1
		ld	(byte_1FC4), a
		ld	a, 0

loc_5D1:				; CODE XREF: RAM:053Aj
		ld	a, (byte_1FA6)
		zor	a
		jp	m, loc_5E0
		znop
		ld	a, 0
		ld	bc, 0
		jr	loc_5E8
; ---------------------------------------------------------------------------

loc_5E0:				; CODE XREF: RAM:05D5j	RAM:0629j
		ld	a, 40h
		ld	(byte_1FA6), a
		ld	(byte_1FB0), a

loc_5E8:				; CODE XREF: RAM:05DEj
		znop
		ld	bc, (loc_0)
		ld	bc, (loc_0)
		ld	bc, (loc_0)
		ld	bc, (loc_0)
		ld	bc, (loc_0)
		ld	bc, (loc_0)
		ld	bc, (loc_0)
		ld	bc, (loc_0)
		ld	bc, (loc_0)
		ld	bc, (loc_0)
		jp	loc_579
; ---------------------------------------------------------------------------

loc_614:				; CODE XREF: RAM:051Cj
		jp	z, loc_683
		znop
		znop
		znop
		ld	bc, 0
		ld	bc, (loc_0)
		ld	bc, (loc_0)
		ld	a, (byte_1FA6)
		zor	a
		jp	m, loc_5E0
		jp	nz, loc_640
		znop
		ld	a, 0
		ld	bc, 0
		ld	bc, (loc_0)
		ld	bc, (loc_0)
		jp	loc_65D
; ---------------------------------------------------------------------------

loc_640:				; CODE XREF: RAM:062Cj
		pop	de
		ex	af, af
		cp	e
		jp	z, loc_653
		ld	a, 0
		ld	bc, (loc_0)
		ld	bc, (loc_0)
		jp	loc_664
; ---------------------------------------------------------------------------

loc_653:				; CODE XREF: RAM:0643j
		xor	a
		ld	(byte_1FC4), a
		ld	(byte_1FA6), a
		ld	(byte_1FA7), a

loc_65D:				; CODE XREF: RAM:063Dj
		ld	a, (byte_1F86)
		zor	a
		jp	z, loc_6C8

loc_664:				; CODE XREF: RAM:0650j
		znop
		znop
		znop
		ld	a, 0
		ld	bc, 0
		ld	bc, (loc_0)
		ld	bc, (loc_0)
		ld	bc, (loc_0)
		ld	bc, (loc_0)
		ld	bc, (loc_0)
		jp	loc_579
; ---------------------------------------------------------------------------

loc_683:				; CODE XREF: RAM:loc_614j
		xor	a
		ld	(byte_1FC4), a
		ld	(word_1FC5+1), a
		ld	(word_1FB2), a
		ld	a, 80h
		ld	(word_1FC5), a
		ld	a, 1
		ld	(byte_1FB0), a
		ld	(byte_1F2A), a
		ld	a, (byte_1FFB)
		ld	(byte_1FFC), a
		ld	sp, byte_1FA0
		pop	hl
		pop	de
		pop	bc
		ld	sp,  word_1FB2+8
		push	bc
		push	de
		push	hl
		xor	a
		ld	(byte_1F2A), a
		znop
		ld	bc, (loc_0)
		ld	bc, (loc_0)
		ld	bc, (loc_0)
		ld	bc, (loc_0)
		ld	bc, (loc_0)
		jp	loc_579
; ---------------------------------------------------------------------------

loc_6C8:				; CODE XREF: RAM:01DDj	RAM:0426j ...
		ld	a, 80h
		ld	(byte_1F2A), a
		ld	ix, (loc_0)
		ld	ix, (loc_0)
		ld	hl, 4002h
		ld	(hl), 0B6h
		inc	hl
		ld	a, (byte_1FF8)
		ld	(hl), a
		ld	ix, (loc_0)
		ld	ix, (loc_0)
		ld	hl, 4000h
		ld	(hl), 2Bh
		inc	hl
		xor	a
		ld	(hl), a
		ld	(byte_1FFC), a
		ld	(byte_1FFD), a
		ld	(byte_1F2A), a
		jp	loc_5D
; ---------------------------------------------------------------------------
		dsb 105h, 0
AddClipTable:	db 0, 0, 0, 0, 0, 0, 0,	0, 0, 0, 0, 0, 0, 0, 0,	0 ; DATA XREF: RAM:028Ao
					; RAM:028Eo ...
		db 0, 0, 0, 0, 0, 0, 0,	0, 0, 0, 0, 0, 0, 0, 0,	0
		db 0, 0, 0, 0, 0, 0, 0,	0, 0, 0, 0, 0, 0, 0, 0,	0
		db 0, 0, 0, 0, 0, 0, 0,	0, 0, 0, 0, 0, 0, 0, 0,	0
		db 0, 0, 0, 0, 0, 0, 0,	0, 0, 0, 0, 0, 0, 0, 0,	0
		db 0, 0, 0, 0, 0, 0, 0,	0, 0, 0, 0, 0, 0, 0, 0,	0
		db 0, 0, 0, 0, 0, 0, 0,	0, 0, 0, 0, 0, 0, 0, 0,	0
		db 0, 0, 0, 0, 0, 0, 0,	0, 0, 0, 0, 0, 0, 0, 0,	0
		db 0, 1, 2, 3, 4, 5, 6,	7, 8, 9, 0Ah, 0Bh, 0Ch,	0Dh, 0Eh, 0Fh
		db 10h,	11h, 12h, 13h, 14h, 15h, 16h, 17h, 18h,	19h, 1Ah, 1Bh, 1Ch, 1Dh, 1Eh, 1Fh
		db 20h,	21h, 22h, 23h, 24h, 25h, 26h, 27h, 28h,	29h, 2Ah, 2Bh, 2Ch, 2Dh, 2Eh, 2Fh
		db 30h,	31h, 32h, 33h, 34h, 35h, 36h, 37h, 38h,	39h, 3Ah, 3Bh, 3Ch, 3Dh, 3Eh, 3Fh
		db 40h,	41h, 42h, 43h, 44h, 45h, 46h, 47h, 48h,	49h, 4Ah, 4Bh, 4Ch, 4Dh, 4Eh, 4Fh
		db 50h,	51h, 52h, 53h, 54h, 55h, 56h, 57h, 58h,	59h, 5Ah, 5Bh, 5Ch, 5Dh, 5Eh, 5Fh
		db 60h,	61h, 62h, 63h, 64h, 65h, 66h, 67h, 68h,	69h, 6Ah, 6Bh, 6Ch, 6Dh, 6Eh, 6Fh
		db 70h,	71h, 72h, 73h, 74h, 75h, 76h, 77h, 78h,	79h, 7Ah, 7Bh, 7Ch, 7Dh, 7Eh, 7Fh
		db 80h,	81h, 82h, 83h, 84h, 85h, 86h, 87h, 88h,	89h, 8Ah, 8Bh, 8Ch, 8Dh, 8Eh, 8Fh
		db 90h,	91h, 92h, 93h, 94h, 95h, 96h, 97h, 98h,	99h, 9Ah, 9Bh, 9Ch, 9Dh, 9Eh, 9Fh
		db 0A0h, 0A1h, 0A2h, 0A3h, 0A4h, 0A5h, 0A6h, 0A7h, 0A8h, 0A9h, 0AAh, 0ABh, 0ACh, 0ADh, 0AEh, 0AFh
		db 0B0h, 0B1h, 0B2h, 0B3h, 0B4h, 0B5h, 0B6h, 0B7h, 0B8h, 0B9h, 0BAh, 0BBh, 0BCh, 0BDh, 0BEh, 0BFh
		db 0C0h, 0C1h, 0C2h, 0C3h, 0C4h, 0C5h, 0C6h, 0C7h, 0C8h, 0C9h, 0CAh, 0CBh, 0CCh, 0CDh, 0CEh, 0CFh
		db 0D0h, 0D1h, 0D2h, 0D3h, 0D4h, 0D5h, 0D6h, 0D7h, 0D8h, 0D9h, 0DAh, 0DBh, 0DCh, 0DDh, 0DEh, 0DFh
		db 0E0h, 0E1h, 0E2h, 0E3h, 0E4h, 0E5h, 0E6h, 0E7h, 0E8h, 0E9h, 0EAh, 0EBh, 0ECh, 0EDh, 0EEh, 0EFh
		db 0F0h, 0F1h, 0F2h, 0F3h, 0F4h, 0F5h, 0F6h, 0F7h, 0F8h, 0F9h, 0FAh, 0FBh, 0FCh, 0FDh, 0FEh, 0FFh
		db 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh
		db 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh
		db 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh
		db 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh
		db 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh
		db 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh
		db 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh
		db 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh
DPCM_LowNibble:	db 0, 1, 2, 4, 8, 10h, 20h, 40h, 80h, 0FFh, 0FEh, 0FCh,	0F8h, 0F0h, 0E0h, 0C0h
		db 0, 1, 2, 4, 8, 10h, 20h, 40h, 80h, 0FFh, 0FEh, 0FCh,	0F8h, 0F0h, 0E0h, 0C0h
		db 0, 1, 2, 4, 8, 10h, 20h, 40h, 80h, 0FFh, 0FEh, 0FCh,	0F8h, 0F0h, 0E0h, 0C0h
		db 0, 1, 2, 4, 8, 10h, 20h, 40h, 80h, 0FFh, 0FEh, 0FCh,	0F8h, 0F0h, 0E0h, 0C0h
		db 0, 1, 2, 4, 8, 10h, 20h, 40h, 80h, 0FFh, 0FEh, 0FCh,	0F8h, 0F0h, 0E0h, 0C0h
		db 0, 1, 2, 4, 8, 10h, 20h, 40h, 80h, 0FFh, 0FEh, 0FCh,	0F8h, 0F0h, 0E0h, 0C0h
		db 0, 1, 2, 4, 8, 10h, 20h, 40h, 80h, 0FFh, 0FEh, 0FCh,	0F8h, 0F0h, 0E0h, 0C0h
		db 0, 1, 2, 4, 8, 10h, 20h, 40h, 80h, 0FFh, 0FEh, 0FCh,	0F8h, 0F0h, 0E0h, 0C0h
		db 0, 1, 2, 4, 8, 10h, 20h, 40h, 80h, 0FFh, 0FEh, 0FCh,	0F8h, 0F0h, 0E0h, 0C0h
		db 0, 1, 2, 4, 8, 10h, 20h, 40h, 80h, 0FFh, 0FEh, 0FCh,	0F8h, 0F0h, 0E0h, 0C0h
		db 0, 1, 2, 4, 8, 10h, 20h, 40h, 80h, 0FFh, 0FEh, 0FCh,	0F8h, 0F0h, 0E0h, 0C0h
		db 0, 1, 2, 4, 8, 10h, 20h, 40h, 80h, 0FFh, 0FEh, 0FCh,	0F8h, 0F0h, 0E0h, 0C0h
		db 0, 1, 2, 4, 8, 10h, 20h, 40h, 80h, 0FFh, 0FEh, 0FCh,	0F8h, 0F0h, 0E0h, 0C0h
		db 0, 1, 2, 4, 8, 10h, 20h, 40h, 80h, 0FFh, 0FEh, 0FCh,	0F8h, 0F0h, 0E0h, 0C0h
		db 0, 1, 2, 4, 8, 10h, 20h, 40h, 80h, 0FFh, 0FEh, 0FCh,	0F8h, 0F0h, 0E0h, 0C0h
		db 0, 1, 2, 4, 8, 10h, 20h, 40h, 80h, 0FFh, 0FEh, 0FCh,	0F8h, 0F0h, 0E0h, 0C0h
DPCM_HighNibble: db 0, 0, 0, 0, 0, 0, 0,	0, 0, 0, 0, 0, 0, 0, 0,	0
		db 1, 1, 1, 1, 1, 1, 1,	1, 1, 1, 1, 1, 1, 1, 1,	1
		db 2, 2, 2, 2, 2, 2, 2,	2, 2, 2, 2, 2, 2, 2, 2,	2
		db 4, 4, 4, 4, 4, 4, 4,	4, 4, 4, 4, 4, 4, 4, 4,	4
		db 8, 8, 8, 8, 8, 8, 8,	8, 8, 8, 8, 8, 8, 8, 8,	8
		db 10h,	10h, 10h, 10h, 10h, 10h, 10h, 10h, 10h,	10h, 10h, 10h, 10h, 10h, 10h, 10h
		db 20h,	20h, 20h, 20h, 20h, 20h, 20h, 20h, 20h,	20h, 20h, 20h, 20h, 20h, 20h, 20h
		db 40h,	40h, 40h, 40h, 40h, 40h, 40h, 40h, 40h,	40h, 40h, 40h, 40h, 40h, 40h, 40h
		db 80h,	80h, 80h, 80h, 80h, 80h, 80h, 80h, 80h,	80h, 80h, 80h, 80h, 80h, 80h, 80h
		db 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh
		db 0FEh, 0FEh, 0FEh, 0FEh, 0FEh, 0FEh, 0FEh, 0FEh, 0FEh, 0FEh, 0FEh, 0FEh, 0FEh, 0FEh, 0FEh, 0FEh
		db 0FCh, 0FCh, 0FCh, 0FCh, 0FCh, 0FCh, 0FCh, 0FCh, 0FCh, 0FCh, 0FCh, 0FCh, 0FCh, 0FCh, 0FCh, 0FCh
		db 0F8h, 0F8h, 0F8h, 0F8h, 0F8h, 0F8h, 0F8h, 0F8h, 0F8h, 0F8h, 0F8h, 0F8h, 0F8h, 0F8h, 0F8h, 0F8h
		db 0F0h, 0F0h, 0F0h, 0F0h, 0F0h, 0F0h, 0F0h, 0F0h, 0F0h, 0F0h, 0F0h, 0F0h, 0F0h, 0F0h, 0F0h, 0F0h
		db 0E0h, 0E0h, 0E0h, 0E0h, 0E0h, 0E0h, 0E0h, 0E0h, 0E0h, 0E0h, 0E0h, 0E0h, 0E0h, 0E0h, 0E0h, 0E0h
		db 0C0h, 0C0h, 0C0h, 0C0h, 0C0h, 0C0h, 0C0h, 0C0h, 0C0h, 0C0h, 0C0h, 0C0h, 0C0h, 0C0h, 0C0h, 0C0h
SampleCache = *
SampleCache2 =	SampleCache+100h
byte_1F00 =	$1F00
byte_1F2A =	$1F2A
byte_1F80 =	$1F80
byte_1F86 =	$1F86
byte_1F87 =	$1F87
byte_1F90 =	$1F90
word_1F92 =	$1F92
byte_1F9A =	$1F9A
byte_1FA0 =	$1FA0
byte_1FA6 =	$1FA6
byte_1FA7 =	$1FA7
byte_1FB0 =	$1FB0
word_1FB2 =	$1FB2
byte_1FC0 =	$1FC0
word_1FC1 =	$1FC1
byte_1FC4 =	$1FC4
word_1FC5 =	$1FC5
byte_1FE0 =	$1FE0
word_1FE2 =	$1FE2
word_1FE6 =	$1FE6
byte_1FE8 =	$1FE8
byte_1FE9 =	$1FE9
byte_1FF8 =	$1FF8
byte_1FF9 =	$1FF9
byte_1FFA =	$1FFA
byte_1FFB =	$1FFB
byte_1FFC =	$1FFC
byte_1FFD =	$1FFD
byte_1FFE =	$1FFE
byte_1FFF =	$1FFF
	z80prog
		end
