;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:03 2013
;--------------------------------------------------------
	.module _mullong
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __mullong_dummy
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
;Allocation info for local variables in function '_mullong_dummy'
;------------------------------------------------------------
;	_mullong.c:57: _mullong_dummy (void) __naked
;	-----------------------------------------
;	 function _mullong_dummy
;	-----------------------------------------
__mullong_dummy:
;	naked function: no prologue.
;	_mullong.c:310: __endasm;
	__mullong:
	.globl __mullong
; the result c will be stored in r4...r7
; r4 dpl * b0
; r5 dph * b0 + dpl * b1
; r6 r2 * b0 + dph * b1 + dpl * b2
; r7 r3 * b0 + r2 * b1 + dph * b2 + dpl * b3
; parameter a comes in a, b, dph, dpl
	mov r2,b ; save parameter a
	mov r3,a
	mov a,#-2-3 ; 1 return address 2 bytes, b 4 bytes
	add a,sp ; 1
	mov r0,a ; 1 r0 points to r1
; Byte 0
	mov a,dpl
	mov b,@r0 ; r1
	mov r1,b ; we need r1 several times
	inc r0 ; r0 points to b1
	mul ab ; dpl * r1
	mov r4,a
	mov r5,b
; Byte 1
	mov a,dph
	mov b,r1
	mul ab ; dph * r1
	add a,r5
	mov r5,a
	clr a
	addc a,b
	mov r6,a
	mov a,dpl
	mov b,@r0 ; b1
	mul ab ; dpl * b1
	add a,r5
	mov r5,a
	mov a,b
	addc a,r6
	mov r6,a
	clr a
	rlc a
	mov r7,a
; Byte 2
	mov a,r2
	mov b,r1
	mul ab ; r2 * r1
	add a,r6
	mov r6,a
	mov a,b
	addc a,r7
	mov r7,a
	mov a,dph
	mov b,@r0 ; b1
	mul ab ; dph * b1
	add a,r6
	mov r6,a
	mov a,b
	addc a,r7
	mov r7,a
	mov a,dpl
	inc r0
	mov b,@r0 ; b2
	mul ab ; dpl * b2
	add a,r6
	mov r6,a
	mov a,b
	addc a,r7
	mov r7,a
; Byte 3
	mov a,r3
	mov b,r1
	mul ab ; r3 * r1
	add a,r7
	mov r7,a
	mov a,dph
	mov b,@r0 ; b2
	mul ab ; dph * b2
	add a,r7
	mov r7,a
	mov a,r2
	dec r0
	mov b,@r0 ; b1
	mul ab ; r2 * b1
	add a,r7
	mov r7,a
	mov a,dpl
	inc r0
	inc r0
	mov b,@r0 ; b3
	mul ab ; dpl * b3
	add a,r7
	mov b,r6
	mov dph,r5
	mov dpl,r4
	ret
;	naked function: no epilogue.
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
