;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:27:53 2013
;--------------------------------------------------------
	.module _divsint
	.optsdcc -mmcs51 --model-medium
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __divsint_PARM_2
	.globl __divsint
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
__divsint_PARM_2:
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
;Allocation info for local variables in function '_divsint'
;------------------------------------------------------------
;r                         Allocated to registers r4 r6 
;------------------------------------------------------------
;	_divsint.c:207: _divsint (int x, int y)
;	-----------------------------------------
;	 function _divsint
;	-----------------------------------------
__divsint:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r6,dpl
;	_divsint.c:211: r = (unsigned int)(x < 0 ? -x : x) / (unsigned int)(y < 0 ? -y : y);
	mov	a,dph
	mov	r7,a
	rlc	a
	clr	a
	rlc	a
	mov	r5,a
	jz	00106$
	clr	c
	clr	a
	subb	a,r6
	mov	r3,a
	clr	a
	subb	a,r7
	mov	r4,a
	sjmp	00107$
00106$:
	mov	ar3,r6
	mov	ar4,r7
00107$:
	mov	r0,#(__divsint_PARM_2 + 1)
	movx	a,@r0
	rlc	a
	clr	a
	rlc	a
	mov	r7,a
	jz	00108$
	mov	r0,#__divsint_PARM_2
	movx	a,@r0
	setb	c
	cpl	a
	addc	a,#0x00
	mov	r2,a
	inc	r0
	movx	a,@r0
	cpl	a
	addc	a,#0x00
	mov	r6,a
	sjmp	00109$
00108$:
	mov	r0,#__divsint_PARM_2
	movx	a,@r0
	mov	r2,a
	inc	r0
	movx	a,@r0
	mov	r6,a
00109$:
	mov	r0,#__divuint_PARM_2
	mov	a,r2
	movx	@r0,a
	inc	r0
	mov	a,r6
	movx	@r0,a
	mov	dpl,r3
	mov	dph,r4
	push	ar7
	push	ar5
	lcall	__divuint
	mov	r4,dpl
	mov	r6,dph
	pop	ar5
	pop	ar7
;	_divsint.c:212: if ((x < 0) ^ (y < 0))
	mov	a,r7
	xrl	a,r5
	jz	00102$
;	_divsint.c:213: return -r;
	clr	c
	clr	a
	subb	a,r4
	mov	dpl,a
	clr	a
	subb	a,r6
	mov	dph,a
	ret
00102$:
;	_divsint.c:215: return r;
	mov	dpl,r4
	mov	dph,r6
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
