;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:27:56 2013
;--------------------------------------------------------
	.module _divuint
	.optsdcc -mmcs51 --model-large
	
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
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
__divuint_PARM_2:
	.ds 2
__divuint_x_1_1:
	.ds 2
__divuint_reste_1_2:
	.ds 2
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
;y                         Allocated with name '__divuint_PARM_2'
;x                         Allocated with name '__divuint_x_1_1'
;reste                     Allocated with name '__divuint_reste_1_2'
;count                     Allocated with name '__divuint_count_1_2'
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
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#__divuint_x_1_1
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	_divuint.c:157: unsigned int reste = 0;
	mov	dptr,#__divuint_reste_1_2
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	_divuint.c:161: do
	mov	dptr,#__divuint_PARM_2
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r5,#0x10
00105$:
;	_divuint.c:164: c = MSB_SET(x);
	mov	dptr,#__divuint_x_1_1
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	rlc	a
	mov	__divuint_c_1_2,c
;	_divuint.c:165: x <<= 1;
	mov	a,r4
	xch	a,r3
	add	a,acc
	xch	a,r3
	rlc	a
	mov	r4,a
	mov	dptr,#__divuint_x_1_1
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	_divuint.c:166: reste <<= 1;
	mov	dptr,#__divuint_reste_1_2
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	xch	a,r3
	add	a,acc
	xch	a,r3
	rlc	a
	mov	r4,a
	mov	dptr,#__divuint_reste_1_2
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	_divuint.c:167: if (c)
	jnb	__divuint_c_1_2,00102$
;	_divuint.c:168: reste |= 1;
	mov	dptr,#__divuint_reste_1_2
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#__divuint_reste_1_2
	mov	a,#0x01
	orl	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
00102$:
;	_divuint.c:170: if (reste >= y)
	mov	dptr,#__divuint_reste_1_2
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	clr	c
	mov	a,r3
	subb	a,r6
	mov	a,r4
	subb	a,r7
	jc	00106$
;	_divuint.c:172: reste -= y;
	mov	dptr,#__divuint_reste_1_2
	mov	a,r3
	clr	c
	subb	a,r6
	movx	@dptr,a
	mov	a,r4
	subb	a,r7
	inc	dptr
	movx	@dptr,a
;	_divuint.c:174: x |= 1;
	mov	dptr,#__divuint_x_1_1
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#__divuint_x_1_1
	mov	a,#0x01
	orl	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
00106$:
;	_divuint.c:177: while (--count);
	djnz	r5,00105$
;	_divuint.c:178: return x;
	mov	dptr,#__divuint_x_1_1
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	dpl,r6
	mov	dph,a
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
