;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:03 2013
;--------------------------------------------------------
	.module _modsint
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
;Allocation info for local variables in function '_modsint_dummy'
;------------------------------------------------------------
;	_modsint.c:128: _modsint_dummy (void) __naked
;	-----------------------------------------
;	 function _modsint_dummy
;	-----------------------------------------
__modsint_dummy:
;	naked function: no prologue.
;	_modsint.c:198: __endasm;
	ar0 = 0 ; BUG register set is not considered
	ar1 = 1
	.globl __modsint
	__modsint:
	clr F0 ; Flag 0 in PSW
; available to user for general purpose
	mov a,dph
	jnb acc.7,a_not_negative
	setb F0
	clr a
	clr c
	subb a,dpl
	mov dpl,a
	clr a
	subb a,dph
	mov dph,a
	a_not_negative:
	mov a,sp
	add a,#-2 ; 2 bytes return address
	mov r0,a ; r0 points to b1
	mov a,@r0 ; b1
	jnb acc.7,b_not_negative
	dec r0
	clr a
	clr c
	subb a,@r0 ; b0
	mov @r0,a
	clr a
	inc r0
	subb a,@r0 ; b1
	mov @r0,a
	b_not_negative:
	mov ar1,@r0 ; b1
	dec r0
	mov ar0,@r0 ; b0
	lcall __modint
	jnb F0,not_negative
	clr a
	clr c
	subb a,dpl
	mov dpl,a
	clr a
	subb a,dph
	mov dph,a
	not_negative:
	ret
;	naked function: no epilogue.
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
