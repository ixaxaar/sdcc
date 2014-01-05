;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:27:50 2013
;--------------------------------------------------------
	.module _divslong
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
;Allocation info for local variables in function '_divslong_dummy'
;------------------------------------------------------------
;	_divslong.c:56: _divslong_dummy (void) __naked
;	-----------------------------------------
;	 function _divslong_dummy
;	-----------------------------------------
__divslong_dummy:
;	naked function: no prologue.
;	_divslong.c:152: __endasm;
	.globl __divslong
	__divslong:
; r3 in acc
; (__divslong_PARM_2 + 3) in (__divslong_PARM_2 + 3)
	mov r3,a ; save r3
	clr F0 ; Flag 0 in PSW
; available to user for general purpose
	jnb acc.7,a_not_negative
	setb F0
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
	subb a,r3
	mov r3,a
	a_not_negative:
	mov a,(__divslong_PARM_2 + 3)
	jnb acc.7,b_not_negative
	cpl F0
	clr a
	clr c
	subb a,(__divslong_PARM_2)
	mov (__divslong_PARM_2),a
	clr a
	subb a,(__divslong_PARM_2 + 1)
	mov (__divslong_PARM_2 + 1),a
	clr a
	subb a,(__divslong_PARM_2 + 2)
	mov (__divslong_PARM_2 + 2),a
	clr a
	subb a,(__divslong_PARM_2 + 3)
	mov (__divslong_PARM_2 + 3),a
	b_not_negative:
	mov a,r3 ; restore r3 in acc
	lcall __divulong
	jnb F0,not_negative
	mov r3,a ; save r3
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
	subb a,r3 ; r3 ends in acc
	not_negative:
	ret
;	naked function: no epilogue.
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
