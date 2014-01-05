;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:10 2013
;--------------------------------------------------------
	.module _fsreturnval
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
;	_fsreturnval.c:37: static void dummy(void) __naked
;	-----------------------------------------
;	 function dummy
;	-----------------------------------------
_dummy:
;	naked function: no prologue.
;	_fsreturnval.c:112: __endasm;
	.globl fs_round_and_return
	fs_round_and_return:
	cjne r1, #128, 00001$
	mov a, r2
	rrc a
	cpl c
	00001$:
	jc fs_zerocheck_return
	mov a, r2
	add a, #1
	mov r2, a
	clr a
	addc a, r3
	mov r3, a
	clr a
	addc a, r4
	mov r4, a
	jnc fs_zerocheck_return
	mov r4, #0x80
	inc dpl
	.globl fs_zerocheck_return
	fs_zerocheck_return:
	cjne r4, #0, fs_direct_return
	cjne r3, #0, fs_direct_return
	cjne r2, #0, fs_direct_return
	.globl fs_return_zero
	fs_return_zero:
	clr a
	mov b, a
	mov dph, a
	mov dpl, a
	ret
	.globl fs_direct_return
	fs_direct_return:
	mov c, psw.1
	mov a, dpl
	rrc a
	mov b, r4
	mov b.7, c
	mov dph, r3
	mov dpl, r2
	ret
	.globl fs_return_inf
	fs_return_inf:
	clr a
	mov dph, a
	mov dpl, a
	mov b, #0x80
	cpl a
	mov c, psw.1
	rrc a
	ret
	.globl fs_return_nan
	fs_return_nan:
	clr a
	mov dph, a
	mov dpl, a
	mov b, #0xC0
	mov a, #0x7F
	ret
;	naked function: no epilogue.
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
