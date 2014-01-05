;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:02 2013
;--------------------------------------------------------
	.module _fsdiv
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'dummy'
;------------------------------------------------------------
;	_fsdiv.c:37: static void dummy(void) __naked
;	-----------------------------------------
;	 function dummy
;	-----------------------------------------
_dummy:
;	naked function: no prologue.
;	_fsdiv.c:244: __endasm;
	.globl ___fsdiv
	___fsdiv:
	lcall fsgetargs
	jnb psw.5, 00001$
	cpl psw.1
	00001$:
	cjne r7, #0, 00003$
	cjne r4, #0, 00002$
	ljmp fs_return_nan
	00002$:
	ljmp fs_return_inf
	00003$:
	cjne r4, #0, 00004$
	ljmp fs_return_zero
	00004$:
	mov a, dph
	cjne a, #0xFF, 00006$
	mov a, dpl
	cjne a, #0xFF, 00005$
	ljmp fs_return_nan
	00005$:
	ljmp fs_return_zero
	00006$:
	mov a, dpl
	cjne a, #0xFF, 00007$
	ljmp fs_return_inf
	00007$:
	clr c
	subb a, dph
	jnc 00008$
	add a, #127
	jc 00009$
	ljmp fs_return_zero
	00008$:
	add a, #128
	dec a
	jnc 00009$
	ljmp fs_return_inf
	00009$:
	mov dpl, a
	clr c
	mov a, r5
	subb a, r2
	mov a, r6
	subb a, r3
	mov a, r7
	subb a, r4
	jc 00010$
	dec dpl
	clr c
	mov a, r2
	rlc a
	mov r1, a
	mov a, r3
	rlc a
	mov r2, a
	mov a, r4
	rlc a
	mov r3, a
	clr a
	rlc a
	mov r4, a
	sjmp 00011$
	00010$:
	clr a
	xch a, r4
	xch a, r3
	xch a, r2
	mov r1, a
	00011$:
	push dpl
	mov b, #25
	00012$:
	clr c
	mov a, r1
	subb a, r5
	mov a, r2
	subb a, r6
	mov a, r3
	subb a, r7
	mov a, r4
	subb a, #0
	djnz b, 00013$
	sjmp 00015$
	00013$:
	jc 00014$
	mov a, r1
	subb a, r5
	mov r1, a
	mov a, r2
	subb a, r6
	mov r2, a
	mov a, r3
	subb a, r7
	mov r3, a
	mov a, r4
	subb a, #0
	mov r4, a
	clr c
	00014$:
	cpl c
	mov a, r0
	rlc a
	mov r0, a
	mov a, dpl
	rlc a
	mov dpl, a
	mov a, dph
	rlc a
	mov dph, a
	clr c
	mov a, r1
	rlc a
	mov r1, a
	mov a, r2
	rlc a
	mov r2, a
	mov a, r3
	rlc a
	mov r3, a
	mov a, r4
	rlc a
	mov r4, a
	sjmp 00012$
	00015$:
	cpl c
	clr a
	mov r1, a
	addc a, r0
	mov r2, a
	clr a
	addc a, dpl
	mov r3, a
	clr a
	addc a, dph
	mov r4, a
	pop dpl
	jnc 00016$
	inc dpl
	mov r4, #0x80
	00016$:
	lcall fs_normalize_a
	ljmp fs_zerocheck_return
;	naked function: no epilogue.
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
