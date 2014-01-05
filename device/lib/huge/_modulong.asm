;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:00 2013
;--------------------------------------------------------
	.module _modulong
	.optsdcc -mmcs51 --model-huge
	
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
	.area	OSEG    (OVR,DATA)
__modulong_sloc0_1_0:
	.ds 4
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
__modulong_PARM_2:
	.ds 4
__modulong_a_1_1:
	.ds 4
__modulong_count_1_2:
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
;Allocation info for local variables in function '_modulong'
;------------------------------------------------------------
;b                         Allocated with name '__modulong_PARM_2'
;a                         Allocated with name '__modulong_a_1_1'
;count                     Allocated with name '__modulong_count_1_2'
;sloc0                     Allocated with name '__modulong_sloc0_1_0'
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
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	mov	r4,a
	mov	dptr,#__modulong_a_1_1
	mov	a,r7
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	_modulong.c:342: unsigned char count = 0;
	mov	dptr,#__modulong_count_1_2
	clr	a
	movx	@dptr,a
;	_modulong.c:344: while (!MSB_SET(b))
	mov	dptr,#__modulong_a_1_1
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r3,#0x00
00103$:
	mov	dptr,#__modulong_PARM_2
	movx	a,@dptr
	mov	__modulong_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(__modulong_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(__modulong_sloc0_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(__modulong_sloc0_1_0 + 3),a
	rl	a
	anl	a,#0x01
	mov	r2,a
	jnz	00117$
;	_modulong.c:346: b <<= 1;
	push	ar3
	mov	a,__modulong_sloc0_1_0
	add	a,__modulong_sloc0_1_0
	mov	r0,a
	mov	a,(__modulong_sloc0_1_0 + 1)
	rlc	a
	mov	r1,a
	mov	a,(__modulong_sloc0_1_0 + 2)
	rlc	a
	mov	r2,a
	mov	a,(__modulong_sloc0_1_0 + 3)
	rlc	a
	mov	r3,a
	mov	dptr,#__modulong_PARM_2
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
;	_modulong.c:347: if (b > a)
	mov	dptr,#__modulong_PARM_2
	movx	a,@dptr
	mov	__modulong_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(__modulong_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(__modulong_sloc0_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(__modulong_sloc0_1_0 + 3),a
	clr	c
	mov	a,r4
	subb	a,__modulong_sloc0_1_0
	mov	a,r5
	subb	a,(__modulong_sloc0_1_0 + 1)
	mov	a,r6
	subb	a,(__modulong_sloc0_1_0 + 2)
	mov	a,r7
	subb	a,(__modulong_sloc0_1_0 + 3)
	pop	ar3
	jnc	00102$
;	_modulong.c:349: b >>=1;
	mov	a,(__modulong_sloc0_1_0 + 3)
	clr	c
	rrc	a
	mov	(__modulong_sloc0_1_0 + 3),a
	mov	a,(__modulong_sloc0_1_0 + 2)
	rrc	a
	mov	(__modulong_sloc0_1_0 + 2),a
	mov	a,(__modulong_sloc0_1_0 + 1)
	rrc	a
	mov	(__modulong_sloc0_1_0 + 1),a
	mov	a,__modulong_sloc0_1_0
	rrc	a
	mov	__modulong_sloc0_1_0,a
	mov	dptr,#__modulong_PARM_2
	movx	@dptr,a
	mov	a,(__modulong_sloc0_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(__modulong_sloc0_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,(__modulong_sloc0_1_0 + 3)
	inc	dptr
	movx	@dptr,a
;	_modulong.c:350: break;
	sjmp	00117$
00102$:
;	_modulong.c:352: count++;
	inc	r3
	mov	dptr,#__modulong_count_1_2
	mov	a,r3
	movx	@dptr,a
	ljmp	00103$
;	_modulong.c:354: do
00117$:
	mov	dptr,#__modulong_count_1_2
	movx	a,@dptr
	mov	r7,a
00108$:
;	_modulong.c:356: if (a >= b)
	mov	dptr,#__modulong_a_1_1
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#__modulong_PARM_2
	movx	a,@dptr
	mov	__modulong_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(__modulong_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(__modulong_sloc0_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(__modulong_sloc0_1_0 + 3),a
	clr	c
	mov	a,r3
	subb	a,__modulong_sloc0_1_0
	mov	a,r4
	subb	a,(__modulong_sloc0_1_0 + 1)
	mov	a,r5
	subb	a,(__modulong_sloc0_1_0 + 2)
	mov	a,r6
	subb	a,(__modulong_sloc0_1_0 + 3)
	jc	00107$
;	_modulong.c:357: a -= b;
	mov	dptr,#__modulong_a_1_1
	mov	a,r3
	clr	c
	subb	a,__modulong_sloc0_1_0
	movx	@dptr,a
	mov	a,r4
	subb	a,(__modulong_sloc0_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	subb	a,(__modulong_sloc0_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	subb	a,(__modulong_sloc0_1_0 + 3)
	inc	dptr
	movx	@dptr,a
00107$:
;	_modulong.c:358: b >>= 1;
	mov	dptr,#__modulong_PARM_2
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	clr	c
	rrc	a
	mov	r6,a
	mov	a,r5
	rrc	a
	mov	r5,a
	mov	a,r4
	rrc	a
	mov	r4,a
	mov	a,r3
	rrc	a
	mov	r3,a
	mov	dptr,#__modulong_PARM_2
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
;	_modulong.c:360: while (count--);
	mov	ar6,r7
	dec	r7
	mov	a,r6
	jnz	00108$
;	_modulong.c:362: return a;
	mov	dptr,#__modulong_a_1_1
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
