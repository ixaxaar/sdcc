;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:04 2013
;--------------------------------------------------------
	.module _ispunct
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _isspace
	.globl _isprint
	.globl _isupper
	.globl _islower
	.globl _isdigit
	.globl _ispunct
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
;Allocation info for local variables in function 'ispunct'
;------------------------------------------------------------
;c                         Allocated to registers r7 
;------------------------------------------------------------
;	_ispunct.c:31: char ispunct (unsigned char c)
;	-----------------------------------------
;	 function ispunct
;	-----------------------------------------
_ispunct:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	_ispunct.c:33: if ( isprint (c) &&
	mov  r7,dpl
	push	ar7
	lcall	_isprint
	mov	a,dpl
	pop	ar7
	jz	00102$
;	_ispunct.c:34: !islower(c) &&
	mov	dpl,r7
	push	ar7
	lcall	_islower
	mov	a,dpl
	pop	ar7
	jnz	00102$
;	_ispunct.c:35: !isupper(c) &&
	mov	dpl,r7
	push	ar7
	lcall	_isupper
	mov	a,dpl
	pop	ar7
	jnz	00102$
;	_ispunct.c:36: !isspace(c) &&
	mov	dpl,r7
	push	ar7
	lcall	_isspace
	mov	a,dpl
	pop	ar7
	jnz	00102$
;	_ispunct.c:37: !isdigit(c) )
	mov	dpl,r7
	lcall	_isdigit
	mov	a,dpl
	jnz	00102$
;	_ispunct.c:38: return 1;
	mov	dpl,#0x01
	ret
00102$:
;	_ispunct.c:39: return 0;
	mov	dpl,#0x00
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
