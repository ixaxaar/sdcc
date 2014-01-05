;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:10 2013
;--------------------------------------------------------
	.module _divuint
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __divuint
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
; overlayable bit register bank
;--------------------------------------------------------
	.area BIT_BANK	(REL,OVR,DATA)
bits:
	.ds 1
	b0 = bits[0]
	b1 = bits[1]
	b2 = bits[2]
	b3 = bits[3]
	b4 = bits[4]
	b5 = bits[5]
	b6 = bits[6]
	b7 = bits[7]
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
;Allocation info for local variables in function '_divuint'
;------------------------------------------------------------
;y                         Allocated to stack - _bp -4
;x                         Allocated to registers r6 r7 
;reste                     Allocated to registers r4 r5 
;count                     Allocated to registers r3 
;c                         Allocated to registers b0 
;------------------------------------------------------------
;	_divuint.c:155: _divuint (unsigned int x, unsigned int y)
;	-----------------------------------------
;	 function _divuint
;	-----------------------------------------
__divuint:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	push	_bp
	mov	_bp,sp
	mov	r6,dpl
	mov	r7,dph
;	_divuint.c:157: unsigned int reste = 0;
	mov	r4,#0x00
	mov	r5,#0x00
;	_divuint.c:161: do
	mov	r3,#0x10
00105$:
;	_divuint.c:164: c = MSB_SET(x);
	mov	a,r7
	rlc	a
	mov	b0,c
;	_divuint.c:165: x <<= 1;
	mov	a,r7
	xch	a,r6
	add	a,acc
	xch	a,r6
	rlc	a
	mov	r7,a
;	_divuint.c:166: reste <<= 1;
	mov	a,r5
	xch	a,r4
	add	a,acc
	xch	a,r4
	rlc	a
	mov	r5,a
;	_divuint.c:167: if (c)
	jnb	b0,00102$
;	_divuint.c:168: reste |= 1;
	orl	ar4,#0x01
00102$:
;	_divuint.c:170: if (reste >= y)
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	clr	c
	mov	a,r4
	subb	a,@r0
	mov	a,r5
	inc	r0
	subb	a,@r0
	jc	00106$
;	_divuint.c:172: reste -= y;
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	a,r4
	clr	c
	subb	a,@r0
	mov	r4,a
	mov	a,r5
	inc	r0
	subb	a,@r0
	mov	r5,a
;	_divuint.c:174: x |= 1;
	orl	ar6,#0x01
00106$:
;	_divuint.c:177: while (--count);
	djnz	r3,00105$
;	_divuint.c:178: return x;
	mov	dpl,r6
	mov	dph,r7
	pop	_bp
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
