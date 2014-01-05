;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:03 2013
;--------------------------------------------------------
	.module _modulong
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
;Allocation info for local variables in function '_modlong_dummy'
;------------------------------------------------------------
;	_modulong.c:191: _modlong_dummy (void) __naked
;	-----------------------------------------
;	 function _modlong_dummy
;	-----------------------------------------
__modlong_dummy:
;	naked function: no prologue.
;	_modulong.c:332: __endasm;
	.globl __modulong
	__modulong:
	ar2 = 2 ; BUG register set is not considered
	ar3 = 3
	ar4 = 4
	ar5 = 5
	.globl __modlong ; entry point for __modslong
; parameter a comes in a, b, dph, dpl
	mov r1,a ; save parameter r1
	mov a,sp
	add a,#-2-3 ; 2 bytes return address, 3 bytes param b
	mov r0,a ; r1 points to r2
	mov ar2,@r0 ; load r2
	inc r0 ; r0 points to r3
	mov ar3,@r0 ; r3
	inc r0
	mov ar4,@r0 ; r4
	inc r0
	mov ar5,@r0 ; r5
	__modlong:
; entry point for __modslong
; a in r1, b, dph, dpl
; b in r5, r4, r3, r2
	mov r0,#0
	mov a,r2 ; b == 0? avoid endless loop
	orl a,r3
	orl a,r4
	orl a,r5
	jz div_by_0
	mov r0,#0
	clr c ; when loop1 jumps immediately to loop2
	loop1:
	inc r0
	mov a,r5 ; if (!MSB_SET(b))
	jb acc.7,loop2
	mov a,r2 ; b <<= 1
	add a,acc
	mov r2,a
	mov a,r3
	rlc a
	mov r3,a
	mov a,r4
	rlc a
	mov r4,a
	mov a,r5
	rlc a
	mov r5,a
	mov a,dpl ; a - b
	subb a,r2 ; here carry is always clear
	mov a,dph
	subb a,r3
	mov a,b
	subb a,r4
	mov a,r1
	subb a,r5
	jnc loop1
	clr c
	mov a,r5 ; b >>= 1;
	rrc a
	mov r5,a
	mov a,r4
	rrc a
	mov r4,a
	mov a,r3
	rrc a
	mov r3,a
	mov a,r2
	rrc a
	mov r2,a
	loop2:
; clr c never set
	mov a,dpl ; a - b
	subb a,r2
	mov a,dph
	subb a,r3
	mov r6,a ; d1
	mov a,b
	subb a,r4
	mov r7,a ; d2
	mov a,r1
	subb a,r5
	jc smaller ; a >= b?
	mov r1,a ; -> yes; a = a - b;
	mov b,r7
	mov dph,r6
	mov a,dpl
	subb a,r2
	mov dpl,a
	smaller:
; -> no
	clr c
	mov a,r5 ; b >>= 1;
	rrc a
	mov r5,a
	mov a,r4
	rrc a
	mov r4,a
	mov a,r3
	rrc a
	mov r3,a
	mov a,r2
	rrc a
	mov r2,a
	djnz r0,loop2
	mov a,r1 ; prepare the return value
	div_by_0:
	ret
;	naked function: no epilogue.
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
