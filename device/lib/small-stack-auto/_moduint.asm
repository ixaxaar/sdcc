;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:03 2013
;--------------------------------------------------------
	.module _moduint
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
;Allocation info for local variables in function '_moduint_dummy'
;------------------------------------------------------------
;	_moduint.c:50: _moduint_dummy (void) __naked
;	-----------------------------------------
;	 function _moduint_dummy
;	-----------------------------------------
__moduint_dummy:
;	naked function: no prologue.
;	_moduint.c:165: __endasm;
	.globl __moduint
	__moduint:
	ar0 = 0 ; BUG register set is not considered
	ar1 = 1
	.globl __modint
	mov a,sp
	add a,#-2 ; 2 bytes return address
	mov r0,a ; r0 points to bh
	mov ar1,@r0 ; load bh
	dec r0
	mov ar0,@r0 ; load bl
	__modint:
; entry point for __modsint
	mov a,r0 ; avoid endless loop
	orl a,r1
	jz div_by_0
	mov r2,#1
	loop1:
	mov a,r0 ; b <<= 1
	add a,acc
	mov r0,a
	mov a,r1
	rlc a
	jc msbset
	mov r1,a
	mov a,dpl ; a - b
	subb a,r0 ; here carry is always clear
	mov a,dph
	subb a,r1
	jc start
	inc r2
	sjmp loop1
	start:
	clr c
	mov a,r1 ; b >>= 1;
	msbset:
	rrc a
	mov r1,a
	mov a,r0
	rrc a
	mov r0,a
	loop2:
	clr c
	mov a,dpl ; a - b
	subb a,r0
	mov b,a
	mov a,dph
	subb a,r1
	jc smaller ; a >= b?
	mov dph,a ; -> yes; a = a - b;
	mov dpl,b
	smaller:
; -> no
	clr c
	mov a,r1 ; b >>= 1;
	rrc a
	mov r1,a
	mov a,r0
	rrc a
	mov r0,a
	djnz r2,loop2
	div_by_0:
	ret
;	naked function: no epilogue.
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
