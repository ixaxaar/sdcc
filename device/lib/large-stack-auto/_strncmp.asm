;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:11 2013
;--------------------------------------------------------
	.module _strncmp
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strncmp
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
;Allocation info for local variables in function 'strncmp'
;------------------------------------------------------------
;last                      Allocated to stack - _bp -5
;count                     Allocated to stack - _bp -7
;first                     Allocated to registers r5 r6 r7 
;sloc0                     Allocated to stack - _bp +1
;sloc1                     Allocated to stack - _bp +3
;------------------------------------------------------------
;	_strncmp.c:31: int strncmp (
;	-----------------------------------------
;	 function strncmp
;	-----------------------------------------
_strncmp:
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
	inc	sp
	inc	sp
	inc	sp
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	_strncmp.c:37: if (!count)
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00114$
;	_strncmp.c:38: return(0);
	mov	dptr,#0x0000
	ljmp	00108$
;	_strncmp.c:40: while (--count && *first && *first == *last) {
00114$:
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	mov	r1,_bp
	inc	r1
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
00105$:
	mov	r0,_bp
	inc	r0
	dec	@r0
	cjne	@r0,#0xFF,00127$
	inc	r0
	dec	@r0
00127$:
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00107$
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	lcall	__gptrget
	mov	@r0,a
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	a,@r0
	jz	00107$
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r7,a
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	a,@r0
	cjne	a,ar7,00130$
	sjmp	00131$
00130$:
	pop	ar7
	pop	ar6
	pop	ar5
	sjmp	00107$
00131$:
	pop	ar7
	pop	ar6
	pop	ar5
;	_strncmp.c:41: first++;
	inc	r5
	cjne	r5,#0x00,00132$
	inc	r6
00132$:
;	_strncmp.c:42: last++;
	inc	r2
	cjne	r2,#0x00,00105$
	inc	r3
	sjmp	00105$
00107$:
;	_strncmp.c:45: return( *first - *last );
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	rlc	a
	subb	a,acc
	mov	r7,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	a,r5
	clr	c
	subb	a,r2
	mov	r5,a
	mov	a,r7
	subb	a,r6
	mov	r7,a
	mov	dpl,r5
	mov	dph,r7
00108$:
	mov	sp,_bp
	pop	_bp
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
