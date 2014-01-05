;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:11 2013
;--------------------------------------------------------
	.module _memcmp
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _memcmp
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
;Allocation info for local variables in function 'memcmp'
;------------------------------------------------------------
;buf2                      Allocated to stack - _bp -5
;count                     Allocated to stack - _bp -7
;buf1                      Allocated to registers r5 r6 r7 
;sloc0                     Allocated to stack - _bp +1
;sloc1                     Allocated to stack - _bp +4
;------------------------------------------------------------
;	_memcmp.c:31: int memcmp (
;	-----------------------------------------
;	 function memcmp
;	-----------------------------------------
_memcmp:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x06
	mov	sp,a
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	_memcmp.c:37: if (!count)
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00112$
;	_memcmp.c:38: return(0);
	mov	dptr,#0x0000
	ljmp	00107$
;	_memcmp.c:40: while ( --count && *((char *)buf1) == *((char *)buf2) ) {
00112$:
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
00104$:
	dec	r3
	cjne	r3,#0xFF,00123$
	dec	r4
00123$:
	mov	a,r3
	orl	a,r4
	jnz	00124$
	ljmp	00106$
00124$:
	push	ar3
	push	ar4
	mov	r0,_bp
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r2,a
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,_bp
	add	a,#0x04
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r4,a
	mov	a,r2
	cjne	a,ar4,00125$
	sjmp	00126$
00125$:
	pop	ar4
	pop	ar3
	sjmp	00106$
00126$:
;	_memcmp.c:41: buf1 = (char *)buf1 + 1;
	mov	r0,_bp
	inc	r0
	mov	a,#0x01
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	ar5,r2
	mov	ar6,r3
	mov	ar7,r4
;	_memcmp.c:42: buf2 = (char *)buf2 + 1;
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x01
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	pop	ar4
	pop	ar3
	ljmp	00104$
00106$:
;	_memcmp.c:45: return( *((unsigned char *)buf1) - *((unsigned char *)buf2) );
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	mov	r7,#0x00
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar6,@r0
	mov	dpl,r3
	mov	dph,r4
	mov	b,r6
	lcall	__gptrget
	mov	r3,a
	mov	r6,#0x00
	mov	a,r5
	clr	c
	subb	a,r3
	mov	r5,a
	mov	a,r7
	subb	a,r6
	mov	r7,a
	mov	dpl,r5
	mov	dph,r7
00107$:
	mov	sp,_bp
	pop	_bp
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
