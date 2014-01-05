;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:27:50 2013
;--------------------------------------------------------
	.module _divuint
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
;Allocation info for local variables in function '_divuint_dummy'
;------------------------------------------------------------
;	_divuint.c:51: _divuint_dummy (void) __naked
;	-----------------------------------------
;	 function _divuint_dummy
;	-----------------------------------------
__divuint_dummy:
;	naked function: no prologue.
;	_divuint.c:147: __endasm;
	.globl __divuint
	__divuint:
	.area OSEG (OVR,DATA)
	.globl __divuint_PARM_2
	.globl __divsint_PARM_2
	__divuint_PARM_2:
	__divsint_PARM_2:
	.ds 2
	.area CSEG (CODE)
	mov r2,#16
	clr a
	mov r3,a
	mov r4,a
	loop:
	mov a,dpl ; x <<= 1
	add a,acc
	mov dpl,a
	mov a,dph
	rlc a
	mov dph,a
	mov a,r3 ; reste <<= 1
	rlc a ; feed in carry
	mov r3,a
	mov a,r4
	rlc a
	mov r4,a
	mov a,r3 ; reste - y
	subb a,(__divuint_PARM_2) ; here carry is always clear, because
; reste <<= 1 never overflows
	mov b,a
	mov a,r4
	subb a,(__divuint_PARM_2 + 1)
	jc smaller ; reste >= y?
	mov r4,a ; -> yes; reste = reste - y;
	mov r3,b
	orl dpl,#1
	smaller:
; -> no
	djnz r2,loop
	ret
;	naked function: no epilogue.
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
