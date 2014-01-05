;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:27:53 2013
;--------------------------------------------------------
	.module _modulong
	.optsdcc -mmcs51 --model-medium
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __modulong_PARM_2
	.globl __modulong
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
__modulong_PARM_2:
	.ds 4
__modulong_count_1_2:
	.ds 1
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
;Allocation info for local variables in function '_modulong'
;------------------------------------------------------------
;	_modulong.c:340: _modulong (unsigned long a, unsigned long b)
;	-----------------------------------------
;	 function _modulong
;	-----------------------------------------
__modulong:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
;	_modulong.c:342: unsigned char count = 0;
	mov	r3,#0x00
;	_modulong.c:344: while (!MSB_SET(b))
	mov	r0,#__modulong_count_1_2
	clr	a
	movx	@r0,a
00103$:
	mov	r0,#(__modulong_PARM_2 + 3)
	movx	a,@r0
	rl	a
	anl	a,#0x01
	mov	r2,a
	jnz	00117$
;	_modulong.c:346: b <<= 1;
	mov	r0,#__modulong_PARM_2
	movx	a,@r0
	add	a,acc
	movx	@r0,a
	inc	r0
	movx	a,@r0
	rlc	a
	movx	@r0,a
	inc	r0
	movx	a,@r0
	rlc	a
	movx	@r0,a
	inc	r0
	movx	a,@r0
	rlc	a
	movx	@r0,a
;	_modulong.c:347: if (b > a)
	mov	r0,#__modulong_PARM_2
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
	inc	r0
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
;	_modulong.c:349: b >>=1;
	mov	r0,#(__modulong_PARM_2 + 3)
	movx	a,@r0
	clr	c
	rrc	a
	movx	@r0,a
	dec	r0
	movx	a,@r0
	rrc	a
	movx	@r0,a
	dec	r0
	movx	a,@r0
	rrc	a
	movx	@r0,a
	dec	r0
	movx	a,@r0
	rrc	a
	movx	@r0,a
;	_modulong.c:350: break;
	sjmp	00117$
00102$:
;	_modulong.c:352: count++;
	mov	r0,#__modulong_count_1_2
	movx	a,@r0
	add	a,#0x01
	movx	@r0,a
	mov	r0,#__modulong_count_1_2
	movx	a,@r0
	mov	r3,a
;	_modulong.c:354: do
	sjmp	00103$
00117$:
00108$:
;	_modulong.c:356: if (a >= b)
	mov	r0,#__modulong_PARM_2
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
	inc	r0
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
;	_modulong.c:357: a -= b;
	mov	r0,#__modulong_PARM_2
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
	cpl	c
	mov	r5,a
	cpl	c
	inc	r0
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
;	_modulong.c:358: b >>= 1;
	mov	r0,#(__modulong_PARM_2 + 3)
	movx	a,@r0
	clr	c
	rrc	a
	movx	@r0,a
	dec	r0
	movx	a,@r0
	rrc	a
	movx	@r0,a
	dec	r0
	movx	a,@r0
	rrc	a
	movx	@r0,a
	dec	r0
	movx	a,@r0
	rrc	a
	movx	@r0,a
;	_modulong.c:360: while (count--);
	mov	ar2,r3
	dec	r3
	mov	a,r2
	jnz	00108$
;	_modulong.c:362: return a;
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
