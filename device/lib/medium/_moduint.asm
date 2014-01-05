;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:27:53 2013
;--------------------------------------------------------
	.module _moduint
	.optsdcc -mmcs51 --model-medium
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __moduint_PARM_2
	.globl __moduint
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
__moduint_PARM_2:
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
;Allocation info for local variables in function '_moduint'
;------------------------------------------------------------
;	_moduint.c:173: _moduint (unsigned int a, unsigned int b)
;	-----------------------------------------
;	 function _moduint
;	-----------------------------------------
__moduint:
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
;	_moduint.c:175: unsigned char count = 0;
	mov	r5,#0x00
;	_moduint.c:178: while (!MSB_SET(b))
	mov	r4,#0x00
00103$:
	mov	r0,#(__moduint_PARM_2 + 1)
	movx	a,@r0
	rl	a
	anl	a,#0x01
	mov	r3,a
	jnz	00117$
;	_moduint.c:180: b <<= 1;
	mov	r0,#(__moduint_PARM_2 + 1)
	movx	a,@r0
	mov	b,a
	dec	r0
	movx	a,@r0
	add	a,acc
	xch	a,b
	rlc	a
	xch	a,b
	movx	@r0,a
	inc	r0
	mov	a,b
	movx	@r0,a
;	_moduint.c:181: if (b > a)
	mov	r0,#__moduint_PARM_2
	clr	c
	movx	a,@r0
	mov	b,a
	mov	a,r6
	subb	a,b
	inc	r0
	movx	a,@r0
	mov	b,a
	mov	a,r7
	subb	a,b
	jnc	00102$
;	_moduint.c:183: b >>=1;
	mov	r0,#__moduint_PARM_2
	movx	a,@r0
	mov	b,a
	inc	r0
	movx	a,@r0
	clr	c
	rrc	a
	xch	a,b
	rrc	a
	dec	r0
	movx	@r0,a
	xch	a,b
	inc	r0
	movx	@r0,a
;	_moduint.c:184: break;
	sjmp	00117$
00102$:
;	_moduint.c:186: count++;
	inc	r4
	mov	ar5,r4
;	_moduint.c:188: do
	sjmp	00103$
00117$:
00108$:
;	_moduint.c:190: if (a >= b)
	mov	r0,#__moduint_PARM_2
	clr	c
	movx	a,@r0
	mov	b,a
	mov	a,r6
	subb	a,b
	inc	r0
	movx	a,@r0
	mov	b,a
	mov	a,r7
	subb	a,b
	jc	00107$
;	_moduint.c:191: a -= b;
	mov	r0,#__moduint_PARM_2
	setb	c
	movx	a,@r0
	subb	a,r6
	cpl	a
	cpl	c
	mov	r6,a
	cpl	c
	inc	r0
	movx	a,@r0
	subb	a,r7
	cpl	a
	mov	r7,a
00107$:
;	_moduint.c:192: b >>= 1;
	mov	r0,#__moduint_PARM_2
	movx	a,@r0
	mov	b,a
	inc	r0
	movx	a,@r0
	clr	c
	rrc	a
	xch	a,b
	rrc	a
	dec	r0
	movx	@r0,a
	xch	a,b
	inc	r0
	movx	@r0,a
;	_moduint.c:194: while (count--);
	mov	ar4,r5
	dec	r5
	mov	a,r4
	jnz	00108$
;	_moduint.c:195: return a;
	mov	dpl,r6
	mov	dph,r7
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
