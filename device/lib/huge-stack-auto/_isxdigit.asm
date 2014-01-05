;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:14 2013
;--------------------------------------------------------
	.module _isxdigit
	.optsdcc -mmcs51 --model-huge
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _isxdigit
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
;Allocation info for local variables in function 'isxdigit'
;------------------------------------------------------------
;c                         Allocated to registers r7 
;------------------------------------------------------------
;	_isxdigit.c:33: char isxdigit (unsigned char c)
;	-----------------------------------------
;	 function isxdigit
;	-----------------------------------------
_isxdigit:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7,dpl
;	_isxdigit.c:35: if ( ( c >= UC('0') && c <= UC('9')) ||
	cjne	r7,#0x30,00119$
00119$:
	jc	00105$
	mov	a,r7
	add	a,#0xff - 0x39
	jnc	00101$
00105$:
;	_isxdigit.c:36: ( c >= UC('a') && c <= UC('f')) ||
	cjne	r7,#0x61,00122$
00122$:
	jc	00107$
	mov	a,r7
	add	a,#0xff - 0x66
	jnc	00101$
00107$:
;	_isxdigit.c:37: ( c >= UC('A') && c <= UC('F')) )
	cjne	r7,#0x41,00125$
00125$:
	jc	00102$
	mov	a,r7
	add	a,#0xff - 0x46
	jc	00102$
00101$:
;	_isxdigit.c:38: return 1;
	mov	dpl,#0x01
	sjmp	00108$
00102$:
;	_isxdigit.c:39: return 0;
	mov	dpl,#0x00
00108$:
	ljmp	__sdcc_banked_ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
