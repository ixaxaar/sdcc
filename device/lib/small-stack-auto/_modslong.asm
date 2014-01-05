;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:03 2013
;--------------------------------------------------------
	.module _modslong
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
;Allocation info for local variables in function '_modslong_dummy'
;------------------------------------------------------------
;	_modslong.c:153: _modslong_dummy (void) __naked
;	-----------------------------------------
;	 function _modslong_dummy
;	-----------------------------------------
__modslong_dummy:
;	naked function: no prologue.
;	_modslong.c:253: __endasm;
	ar2 = 2 ; BUG register set is not considered
	ar3 = 3
	ar4 = 4
	ar5 = 5
	.globl __modslong
	__modslong:
; r1 in acc
	mov r1,a ; save r1
	clr F0 ; F0 (Flag 0)
; available to user for general purpose
	jnb acc.7,a_not_negative
	setb F0
	clr a ; a = -a;
	clr c
	subb a,dpl
	mov dpl,a
	clr a
	subb a,dph
	mov dph,a
	clr a
	subb a,b
	mov b,a
	clr a
	subb a,r1
	mov r1,a
	a_not_negative:
	mov a,sp
	add a,#-2-3 ; 2 bytes return address, 3 bytes param b
	mov r0,a ; r1 points to r2
	mov ar2,@r0 ; load r2
	inc r0 ; r0 points to r3
	mov ar3,@r0 ; r3
	inc r0
	mov ar4,@r0 ; r4
	inc r0
	mov a,@r0 ; r5
	mov r5,a
	jnb acc.7,b_not_negative
	clr a ; b = -b;
	clr c
	subb a,r2
	mov r2,a
	clr a
	subb a,r3
	mov r3,a
	clr a
	subb a,r4
	mov r4,a
	clr a
	subb a,r5
	mov r5,a
	b_not_negative:
	lcall __modlong
	jnb F0,not_negative
; result in (a == r1), b, dph, dpl
	clr a
	clr c
	subb a,dpl
	mov dpl,a
	clr a
	subb a,dph
	mov dph,a
	clr a
	subb a,b
	mov b,a
	clr a
	subb a,r1 ; result in a, b, dph, dpl
	not_negative:
	ret
;	naked function: no epilogue.
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
