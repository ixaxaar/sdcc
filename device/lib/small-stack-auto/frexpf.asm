;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:02 2013
;--------------------------------------------------------
	.module frexpf
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _frexpf
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
;Allocation info for local variables in function 'frexpf'
;------------------------------------------------------------
;pw2                       Allocated to stack - _bp -5
;x                         Allocated to registers r4 r5 r6 r7 
;fl                        Allocated to stack - _bp +1
;i                         Allocated to stack - _bp +5
;------------------------------------------------------------
;	frexpf.c:34: float frexpf(const float x, int *pw2)
;	-----------------------------------------
;	 function frexpf
;	-----------------------------------------
_frexpf:
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
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0x08
	mov	sp,a
;	frexpf.c:39: fl.f=x;
	mov	a,_bp
	inc	a
	mov	r0,a
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	frexpf.c:41: i  = ( fl.l >> 23) & 0x000000ff;
	mov	r1,_bp
	inc	r1
	mov	ar4,@r1
	inc	r1
	mov	ar5,@r1
	inc	r1
	mov	ar6,@r1
	inc	r1
	mov	ar7,@r1
	dec	r1
	dec	r1
	dec	r1
	mov	ar4,r6
	mov	a,r7
	mov	c,acc.7
	xch	a,r4
	rlc	a
	xch	a,r4
	rlc	a
	xch	a,r4
	anl	a,#0x01
	jnb	acc.0,00103$
	orl	a,#0xFE
00103$:
	rlc	a
	subb	a,acc
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	@r0,ar4
	inc	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
;	frexpf.c:42: i -= 0x7e;
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,@r0
	add	a,#0x82
	mov	@r0,a
	inc	r0
	mov	a,@r0
	addc	a,#0xFF
	mov	@r0,a
	inc	r0
	mov	a,@r0
	addc	a,#0xFF
	mov	@r0,a
	inc	r0
	mov	a,@r0
	addc	a,#0xFF
	mov	@r0,a
;	frexpf.c:43: *pw2 = i;
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar7,@r0
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r5
	lcall	__gptrput
;	frexpf.c:44: fl.l &= 0x807fffff; /* strip all exponent bits */
	mov	ar4,@r1
	inc	r1
	mov	ar5,@r1
	inc	r1
	mov	ar6,@r1
	inc	r1
	mov	ar7,@r1
	dec	r1
	dec	r1
	dec	r1
	anl	ar6,#0x7F
	anl	ar7,#0x80
	mov	@r1,ar4
	inc	r1
	mov	@r1,ar5
	inc	r1
	mov	@r1,ar6
	inc	r1
	mov	@r1,ar7
	dec	r1
	dec	r1
	dec	r1
;	frexpf.c:45: fl.l |= 0x3f000000; /* mantissa between 0.5 and 1 */
	mov	ar4,@r1
	inc	r1
	mov	ar5,@r1
	inc	r1
	mov	ar6,@r1
	inc	r1
	mov	ar7,@r1
	dec	r1
	dec	r1
	dec	r1
	orl	ar7,#0x3F
	mov	@r1,ar4
	inc	r1
	mov	@r1,ar5
	inc	r1
	mov	@r1,ar6
	inc	r1
	mov	@r1,ar7
;	frexpf.c:46: return(fl.f);
	mov	r1,_bp
	inc	r1
	mov	ar4,@r1
	inc	r1
	mov	ar5,@r1
	inc	r1
	mov	ar6,@r1
	inc	r1
	mov	ar7,@r1
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	mov	sp,_bp
	pop	_bp
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
