;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:27:53 2013
;--------------------------------------------------------
	.module _divuint
	.optsdcc -mmcs51 --model-medium
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __divuint_PARM_2
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
__divuint_c_1_2:
	.ds 1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
__divuint_PARM_2:
	.ds 2
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
	mov	__divuint_c_1_2,c
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
	jnb	__divuint_c_1_2,00102$
;	_divuint.c:168: reste |= 1;
	orl	ar4,#0x01
00102$:
;	_divuint.c:170: if (reste >= y)
	mov	r0,#__divuint_PARM_2
	clr	c
	movx	a,@r0
	mov	b,a
	mov	a,r4
	subb	a,b
	inc	r0
	movx	a,@r0
	mov	b,a
	mov	a,r5
	subb	a,b
	jc	00106$
;	_divuint.c:172: reste -= y;
	mov	r0,#__divuint_PARM_2
	setb	c
	movx	a,@r0
	subb	a,r4
	cpl	a
	cpl	c
	mov	r4,a
	cpl	c
	inc	r0
	movx	a,@r0
	subb	a,r5
	cpl	a
	mov	r5,a
;	_divuint.c:174: x |= 1;
	orl	ar6,#0x01
00106$:
;	_divuint.c:177: while (--count);
	djnz	r3,00105$
;	_divuint.c:178: return x;
	mov	dpl,r6
	mov	dph,r7
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
