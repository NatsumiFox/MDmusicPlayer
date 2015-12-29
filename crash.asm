crash	macro	id
	move	sr,Crash_SR		; copy Status Register to RAM
	move.b	#id,CrashID		; set crash ID
	bra.w	CrashHandler		; run crash handler
    endm
; ===========================================================================

	rsset $FFFF0000
Crash_D0	rs.l 1
Crash_D1	rs.l 1
Crash_D2	rs.l 1
Crash_D3	rs.l 1
Crash_D4	rs.l 1
Crash_D5	rs.l 1
Crash_D6	rs.l 1
Crash_D7	rs.l 1
Crash_A0	rs.l 1
Crash_A1	rs.l 1
Crash_A2	rs.l 1
Crash_A3	rs.l 1
Crash_A4	rs.l 1
Crash_A5	rs.l 1
Crash_A6	rs.l 1
Crash_A7	rs.l 1
Crash_Stack	rs.b $100
Crash_StackPtr	rs.b 0
Crash_SR	rs.w 1
CrashID		rs.b 1		; the ID of crash which is recorded for later reference.
; ===========================================================================

StackUnderflow:
		bra	*		; TODO: make code

AddressError:	crash 4+2
IllegalInstr:	crash 8+2
ZeroDivide:	crash 12+2
ChkInstr:	crash 16+2
TrapvInstr:	crash 20+2
PrivilegeViol:	crash 24+2
Trace:		crash 28+2
Line1010Emu:	crash 32+2
Line1111Emu:	crash 36+2
ErrorExcept:	crash 0+2
ErrorTrap:	crash 40+2

; ===========================================================================
CrashHandler:
		movem.l	d0-a7,Crash_A0.l		; store registers to RAM
		lea	Crash_StackPtr,a0		; get crash stack RAM
	; ensure stack is null, so we can more cleanly display stack
		moveq	#0,d1				; fill 0
		moveq	#($100/4)-1,d0			; get size of stack
.clr		move.l	d1,-(a0)			; clear long
		dbf	d0,.clr				; loop until clear
	; calculate the amount of used stack
		move.w	#Stack,d0			; get stack start address to d0
		sub.w	a7,d0				; sub stack address from d0
		bpl.s	.continue			; continue normally
		jmp	StackUnderflow(pc); ERROR:	Stack underflow

.continue	lsr.w	#1,d0				; halve the length
	; now we are copying the used stack to separate RAM
		lea	Crash_StackPtr,a0		; get crash stack RAM
		lea	Stack,a7			; get normal stack RAM
.copy		move.w	-(a7),-(a0)			; copy next word
		dbf	d0,.copy				; loop until done
	; write error name to screen
		moveq	#0,d3				; length of write
		move.b	CrashID,d4			; get crash ID
		lea	CrashNames(pc),a0		; get crash name strings
		move.w	-2(a0,d4.w),d6			; get length of the string
		adda.w	(a0,d4.w),a0			; add the offset to name
		moveq	#1,d4				; x-position to write to
		moveq	#0,d5				; y-position to write to
		jsr	WriteString2.w			; display error message
		bra	*		; for not loop indefinately. TODO: run reset polling code

; ===========================================================================
CrashNames:
	dc.w 14, .ErrExpt-CrashNames
	dc.w 12, .Addr-CrashNames
	dc.w 18, .Illegal-CrashNames
	dc.w 12, .zerodiv-CrashNames
	dc.w 14, .Chk-CrashNames
	dc.w 16, .Trapv-CrashNames
	dc.w 18, .Priv-CrashNames
	dc.w  4, .Trace-CrashNames
	dc.w 14, .LineA-CrashNames
	dc.w 14, .LineF-CrashNames
	dc.w  8, .trapped-CrashNames
	; you can here define custom error messages

.ErrExpt	asc.w 0, 'ERROR EXECPTION'	; miscellaneous error.
.Addr		asc.w 0, 'ADDRESS ERROR'	; address error
.illegal	asc.w 0, 'ILLEGAL INSTRUCTION'	; illegal instruction (code runs in data likely)
.zerodiv	asc.w 0, 'ZERO DIVISION'	; zero divide (ex: 1/0)
.chk		asc.w 0, 'CHK INSTRUCTION'	; CHK
.trapv		asc.w 0, 'TRAPV INSTRUCTION'	; TRAPV
.priv		asc.w 0, 'PRIVILEGE VIOLATION'	; Privilege violation (68k trying to use privileged instructions while supervisor mode)
.trace		asc.w 0, 'TRACE'		; Tracing instruction. TODO: handle properly
.lineA		asc.w 0, 'LINE A EMULATOR'	; line A emulator (running instruction that is not implemented in 68000)
.lineF		asc.w 0, 'LINE F EMULATOR'	; line F emulator (running instruction that is not implemented in 68000)
.trapped	asc.w 0, 'ERRORTRAP'		; ran into ErrorTrap.
; ===========================================================================