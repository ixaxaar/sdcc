;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:08 2013
;--------------------------------------------------------
	.module _ltoa
	.optsdcc -mmcs51 --model-medium
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __ltoa
	.globl __ultoa
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
;Allocation info for local variables in function '_ultoa'
;------------------------------------------------------------
;string                    Allocated to stack - _bp -5
;radix                     Allocated to stack - _bp -6
;value                     Allocated to stack - _bp +1
;buffer                    Allocated to stack - _bp +9
;index                     Allocated to registers r4 
;c                         Allocated to registers r6 
;sloc0                     Allocated to stack - _bp +5
;------------------------------------------------------------
;	_ltoa.c:56: void _ultoa(unsigned long value, char* string, unsigned char radix)
;	-----------------------------------------
;	 function _ultoa
;	-----------------------------------------
__ultoa:
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
	push	dpl
	push	dph
	push	b
	push	acc
	mov	a,sp
	add	a,#0x24
	mov	sp,a
;	_ltoa.c:61: do {
	mov	a,_bp
	add	a,#0x09
	mov	r3,a
	mov	r4,#0x20
00103$:
;	_ltoa.c:62: unsigned char c = '0' + (value % radix);
	push	ar3
	mov	a,_bp
	add	a,#0xfa
	mov	r0,a
	mov	a,_bp
	add	a,#0x05
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r1
	mov	@r1,#0x00
	inc	r1
	mov	@r1,#0x00
	inc	r1
	mov	@r1,#0x00
	push	ar4
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	__modulong
	mov	r2,dpl
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar4
	mov	a,#0x30
	add	a,r2
	mov	r6,a
;	_ltoa.c:63: if (c > (unsigned char)'9')
	clr	c
	mov	a,#0x39
	subb	a,r6
	pop	ar3
	jnc	00102$
;	_ltoa.c:64: c += 'A' - '9' - 1;
	mov	ar7,r6
	mov	a,#0x07
	add	a,r7
	mov	r6,a
00102$:
;	_ltoa.c:65: buffer[--index] = c;
	dec	r4
	mov	a,r4
	add	a,r3
	mov	r0,a
	mov	@r0,ar6
;	_ltoa.c:66: value /= radix;
	push	ar4
	push	ar3
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	__divulong
	mov	r0,_bp
	inc	r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	inc	r0
	mov	@r0,b
	inc	r0
	mov	@r0,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar3
	pop	ar4
;	_ltoa.c:67: } while (value);
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
	jz	00128$
	ljmp	00103$
00128$:
;	_ltoa.c:69: do {
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
00106$:
;	_ltoa.c:70: *string++ = buffer[index];
	mov	a,r4
	add	a,r3
	mov	r1,a
	mov	ar2,@r1
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	r5,dpl
	mov	r6,dph
;	_ltoa.c:71: } while ( ++index != NUMBER_OF_DIGITS );
	inc	r4
	cjne	r4,#0x20,00106$
;	_ltoa.c:73: *string = 0;  /* string terminator */
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '_ltoa'
;------------------------------------------------------------
;string                    Allocated to stack - _bp -5
;radix                     Allocated to stack - _bp -6
;value                     Allocated to stack - _bp +1
;------------------------------------------------------------
;	_ltoa.c:76: void _ltoa(long value, char* string, unsigned char radix)
;	-----------------------------------------
;	 function _ltoa
;	-----------------------------------------
__ltoa:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	push	acc
;	_ltoa.c:78: if (value < 0 && radix == 10) {
	mov	r0,_bp
	inc	r0
	inc	r0
	inc	r0
	inc	r0
	mov	a,@r0
	jnb	acc.7,00102$
	mov	a,_bp
	add	a,#0xfa
	mov	r0,a
	cjne	@r0,#0x0A,00102$
;	_ltoa.c:79: *string++ = '-';
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar7,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	mov	a,#0x2D
	lcall	__gptrput
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x01
	add	a,r2
	mov	@r0,a
	clr	a
	addc	a,r3
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar7
;	_ltoa.c:80: value = -value;
	mov	r0,_bp
	inc	r0
	clr	c
	clr	a
	subb	a,@r0
	mov	@r0,a
	inc	r0
	clr	a
	subb	a,@r0
	mov	@r0,a
	inc	r0
	clr	a
	subb	a,@r0
	mov	@r0,a
	inc	r0
	clr	a
	subb	a,@r0
	mov	@r0,a
00102$:
;	_ltoa.c:82: _ultoa(value, string, radix);
	mov	a,_bp
	add	a,#0xfa
	mov	r0,a
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	__ultoa
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	sp,_bp
	pop	_bp
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
