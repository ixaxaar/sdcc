;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:06 2013
;--------------------------------------------------------
	.module _fs2slong
	.optsdcc -mmcs51 --model-medium
	
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
;	_fs2slong.c:37: static void dummy(void) __naked
;	-----------------------------------------
;	 function dummy
;	-----------------------------------------
_dummy:
;	naked function: no prologue.
;	_fs2slong.c:102: __endasm;
	.globl ___fs2slong
	___fs2slong:
	lcall fsgetarg
	clr c
	mov a, #158
	subb a, dpl
	jc fs2slong_maxval
	fs2slong_int_ok:
	mov r1, #0
	lcall fs_rshift_a
	jnb psw.1, fs2slong_pos
	fs2slong_neg:
	mov a, r1
	cpl a
	add a, #1
	mov dpl, a
	mov a, r2
	cpl a
	addc a, #0
	mov dph, a
	mov a, r3
	cpl a
	addc a, #0
	mov b, a
	mov a, r4
	cpl a
	addc a, #0
	jnz fs2slong_not_zero
	mov a, dpl
	orl a, dph
	orl a, b
	jnz fs2slong_clr_a
	ret
	fs2slong_clr_a:
	clr a
	fs2slong_not_zero:
	jnb acc.7, fs2slong_maxval_neg
	ret
	fs2slong_pos:
	mov a, r4
	jb acc.7, fs2slong_maxval_pos
	mov dpl, r1
	mov dph, r2
	mov b, r3
	ret
	fs2slong_maxval:
	jnb psw.1, fs2slong_maxval_pos
	fs2slong_maxval_neg:
	clr a
	mov dpl, a
	mov dph, a
	mov b, a
	mov a, #0x80
	ret
	fs2slong_maxval_pos:
	mov a, #0xFF
	mov dpl, a
	mov dph, a
	mov b, a
	mov a, #0x7F
	ret
;	naked function: no epilogue.
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
