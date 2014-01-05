;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:27:50 2013
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
;	_modulong.c:50: _modlong_dummy (void) __naked
;	-----------------------------------------
;	 function _modlong_dummy
;	-----------------------------------------
__modlong_dummy:
;	naked function: no prologue.
;	_modulong.c:185: __endasm;
	.globl __modulong
	__modulong:
	.area OSEG (OVR,DATA)
	.globl __modulong_PARM_2
	.globl __modslong_PARM_2
	__modulong_PARM_2:
	__modslong_PARM_2:
	.ds 4
	.area CSEG (CODE)
; parameter a comes in a, b, dph, dpl
	mov r1,a ; save parameter r1
	mov a,(__modulong_PARM_2) ; b == 0? avoid endless loop
	orl a,(__modulong_PARM_2 + 1)
	orl a,(__modulong_PARM_2 + 2)
	orl a,(__modulong_PARM_2 + 3)
	jz div_by_0
	mov r0,#0
	clr c ; when loop1 jumps immediately to loop2
	loop1:
	inc r0
	mov a,(__modulong_PARM_2 + 3) ; if (!MSB_SET(b))
	jb acc.7,loop2
	mov a,(__modulong_PARM_2) ; b <<= 1
	add a,acc
	mov (__modulong_PARM_2),a
	mov a,(__modulong_PARM_2 + 1)
	rlc a
	mov (__modulong_PARM_2 + 1),a
	mov a,(__modulong_PARM_2 + 2)
	rlc a
	mov (__modulong_PARM_2 + 2),a
	mov a,(__modulong_PARM_2 + 3)
	rlc a
	mov (__modulong_PARM_2 + 3),a
	mov a,dpl ; a - b
	subb a,(__modulong_PARM_2) ; here carry is always clear
	mov a,dph
	subb a,(__modulong_PARM_2 + 1)
	mov a,b
	subb a,(__modulong_PARM_2 + 2)
	mov a,r1
	subb a,(__modulong_PARM_2 + 3)
	jnc loop1
	clr c
	mov a,(__modulong_PARM_2 + 3) ; b >>= 1;
	rrc a
	mov (__modulong_PARM_2 + 3),a
	mov a,(__modulong_PARM_2 + 2)
	rrc a
	mov (__modulong_PARM_2 + 2),a
	mov a,(__modulong_PARM_2 + 1)
	rrc a
	mov (__modulong_PARM_2 + 1),a
	mov a,(__modulong_PARM_2)
	rrc a
	mov (__modulong_PARM_2),a
	loop2:
; clr c never set
	mov a,dpl ; a - b
	subb a,(__modulong_PARM_2)
	mov r4,a
	mov a,dph
	subb a,(__modulong_PARM_2 + 1)
	mov r5,a
	mov a,b
	subb a,(__modulong_PARM_2 + 2)
	mov r6,a
	mov a,r1
	subb a,(__modulong_PARM_2 + 3)
	jc smaller ; a >= b?
	mov r1,a ; -> yes; a = a - b;
	mov b,r6
	mov dph,r5
	mov dpl,r4
	smaller:
; -> no
	clr c
	mov a,(__modulong_PARM_2 + 3) ; b >>= 1;
	rrc a
	mov (__modulong_PARM_2 + 3),a
	mov a,(__modulong_PARM_2 + 2)
	rrc a
	mov (__modulong_PARM_2 + 2),a
	mov a,(__modulong_PARM_2 + 1)
	rrc a
	mov (__modulong_PARM_2 + 1),a
	mov a,(__modulong_PARM_2)
	rrc a
	mov (__modulong_PARM_2),a
	djnz r0,loop2
	mov a,r1 ; prepare the return value
	div_by_0:
	ret
;	naked function: no epilogue.
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
