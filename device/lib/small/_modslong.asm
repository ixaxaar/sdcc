;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:27:50 2013
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
;	_modslong.c:55: _modslong_dummy (void) __naked
;	-----------------------------------------
;	 function _modslong_dummy
;	-----------------------------------------
__modslong_dummy:
;	naked function: no prologue.
;	_modslong.c:147: __endasm;
	.globl __modslong
	__modslong:
; r1 in acc
; (__modslong_PARM_2 + 3) in (__modslong_PARM_2 + 3)
	mov r1,a ; save r1
	clr F0 ; Flag 0 in PSW
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
	mov a,(__modslong_PARM_2 + 3)
	jnb acc.7,b_not_negative
	clr a ; b = -b;
	clr c
	subb a,(__modslong_PARM_2)
	mov (__modslong_PARM_2),a
	clr a
	subb a,(__modslong_PARM_2 + 1)
	mov (__modslong_PARM_2 + 1),a
	clr a
	subb a,(__modslong_PARM_2 + 2)
	mov (__modslong_PARM_2 + 2),a
	clr a
	subb a,(__modslong_PARM_2 + 3)
	mov (__modslong_PARM_2 + 3),a
	b_not_negative:
	mov a,r1 ; restore r1 in acc
	lcall __modulong
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
	subb a,r1
; result in a, b, dph, dpl
	not_negative:
	ret
;	naked function: no epilogue.
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
