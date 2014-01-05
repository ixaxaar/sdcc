;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:27:55 2013
;--------------------------------------------------------
	.module _fsmul
	.optsdcc -mmcs51 --model-large
	
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
;	_fsmul.c:37: static void dummy(void) __naked
;	-----------------------------------------
;	 function dummy
;	-----------------------------------------
_dummy:
;	naked function: no prologue.
;	_fsmul.c:211: __endasm;
	.globl ___fsmul
	___fsmul:
	lcall fsgetargs
	cjne r4, #0, 00002$
	00001$:
	ljmp fs_return_zero
	00002$:
	mov a, r7
	jz 00001$
	jnb psw.5, 00003$
	cpl psw.1
	00003$:
	mov a, dph
	cjne a, #0xFF, 00004$
	ljmp fs_return_inf
	00004$:
	mov a, dpl
	cjne a, #0xFF, 00005$
	ljmp fs_return_inf
	00005$:
	add a, dph
	jc 00006$
	add a, #130
	jc 00007$
	ljmp fs_return_zero
	00006$:
	add a, #131
	dec a
	jnc 00007$
	ljmp fs_return_inf
	00007$:
	mov dpl, a
	mov a, r2
	mov b, r5
	mul ab
	mov r0, b
	mov a, r2
	mov b, r6
	mul ab
	add a, r0
	mov r0, a
	clr a
	addc a, b
	mov r1, a
	mov a, r3
	mov b, r5
	mul ab
	add a, r0
	mov a, r1
	addc a, b
	mov r1, a
	clr a
	rlc a
	xch a, r2
	mov b, r7
	mul ab
	add a, r1
	mov r1, a
	mov a, r2
	addc a, b
	mov r2, a
	mov a, r3
	mov r0, a
	mov b, r6
	mul ab
	add a, r1
	mov r1, a
	mov a, r2
	addc a, b
	mov r2, a
	clr a
	rlc a
	mov r3, a
	mov a, r4
	mov b, r5
	mul ab
	add a, r1
	mov r1, a
	mov a, r2
	addc a, b
	mov r2, a
	clr a
	addc a, r3
	mov r3, a
	mov a, r0
	mov b, r7
	mul ab
	add a, r2
	mov r2, a
	mov a, r3
	addc a, b
	mov r3, a
	clr a
	rlc a
	xch a, r4
	mov r5, a
	mov b, r6
	mul ab
	add a, r2
	mov r2, a
	mov a, r3
	addc a, b
	mov r3, a
	clr a
	addc a, r4
	mov r4, a
	mov a, r5
	mov b, r7
	mul ab
	add a, r3
	mov r3, a
	mov a, r4
	addc a, b
	mov r4, a
	jb acc.7, 00010$
	lcall fs_normalize_a
	00010$:
	ljmp fs_round_and_return
;	naked function: no epilogue.
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
