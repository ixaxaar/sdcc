;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:27:56 2013
;--------------------------------------------------------
	.module _moduint
	.optsdcc -mmcs51 --model-large
	
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
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
__moduint_PARM_2:
	.ds 2
__moduint_a_1_1:
	.ds 2
__moduint_count_1_2:
	.ds 1
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
;b                         Allocated with name '__moduint_PARM_2'
;a                         Allocated with name '__moduint_a_1_1'
;count                     Allocated with name '__moduint_count_1_2'
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
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#__moduint_a_1_1
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	_moduint.c:175: unsigned char count = 0;
	mov	dptr,#__moduint_count_1_2
	clr	a
	movx	@dptr,a
;	_moduint.c:178: while (!MSB_SET(b))
	mov	dptr,#__moduint_a_1_1
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r5,#0x00
00103$:
	mov	dptr,#__moduint_PARM_2
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	rl	a
	anl	a,#0x01
	mov	r2,a
	jnz	00117$
;	_moduint.c:180: b <<= 1;
	mov	a,r4
	xch	a,r3
	add	a,acc
	xch	a,r3
	rlc	a
	mov	r4,a
	mov	dptr,#__moduint_PARM_2
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	_moduint.c:181: if (b > a)
	mov	dptr,#__moduint_PARM_2
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	clr	c
	mov	a,r6
	subb	a,r3
	mov	a,r7
	subb	a,r4
	jnc	00102$
;	_moduint.c:183: b >>=1;
	mov	a,r4
	clr	c
	rrc	a
	xch	a,r3
	rrc	a
	xch	a,r3
	mov	r4,a
	mov	dptr,#__moduint_PARM_2
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	_moduint.c:184: break;
	sjmp	00117$
00102$:
;	_moduint.c:186: count++;
	inc	r5
	mov	dptr,#__moduint_count_1_2
	mov	a,r5
	movx	@dptr,a
;	_moduint.c:188: do
	sjmp	00103$
00117$:
	mov	dptr,#__moduint_count_1_2
	movx	a,@dptr
	mov	r7,a
00108$:
;	_moduint.c:190: if (a >= b)
	mov	dptr,#__moduint_a_1_1
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#__moduint_PARM_2
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	clr	c
	mov	a,r5
	subb	a,r3
	mov	a,r6
	subb	a,r4
	jc	00107$
;	_moduint.c:191: a -= b;
	mov	dptr,#__moduint_a_1_1
	mov	a,r5
	clr	c
	subb	a,r3
	movx	@dptr,a
	mov	a,r6
	subb	a,r4
	inc	dptr
	movx	@dptr,a
00107$:
;	_moduint.c:192: b >>= 1;
	mov	dptr,#__moduint_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	clr	c
	rrc	a
	xch	a,r5
	rrc	a
	xch	a,r5
	mov	r6,a
	mov	dptr,#__moduint_PARM_2
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
;	_moduint.c:194: while (count--);
	mov	ar6,r7
	dec	r7
	mov	a,r6
	jnz	00108$
;	_moduint.c:195: return a;
	mov	dptr,#__moduint_a_1_1
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
