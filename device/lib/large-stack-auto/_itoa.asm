;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:12 2013
;--------------------------------------------------------
	.module _itoa
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __itoa
	.globl __uitoa
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
;Allocation info for local variables in function '_uitoa'
;------------------------------------------------------------
;string                    Allocated to stack - _bp -5
;radix                     Allocated to stack - _bp -6
;value                     Allocated to stack - _bp +1
;index                     Allocated to registers 
;i                         Allocated to stack - _bp +8
;tmp                       Allocated to registers r3 
;sloc0                     Allocated to stack - _bp +3
;sloc1                     Allocated to stack - _bp +5
;------------------------------------------------------------
;	_itoa.c:40: void _uitoa(unsigned int value, char* string, unsigned char radix)
;	-----------------------------------------
;	 function _uitoa
;	-----------------------------------------
__uitoa:
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
	mov	a,sp
	add	a,#0x06
	mov	sp,a
;	_itoa.c:45: do {
	mov	r6,#0x00
00103$:
;	_itoa.c:46: string[index] = '0' + (value % radix);
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,r6
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	a,_bp
	add	a,#0xfa
	mov	r0,a
	mov	a,_bp
	add	a,#0x03
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r1
	mov	@r1,#0x00
	push	ar6
	push	ar4
	push	ar3
	push	ar2
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
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
	lcall	__moduint
	mov	r5,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar6
	mov	a,#0x30
	add	a,r5
	mov	r5,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrput
;	_itoa.c:47: if (string[index] > '9')
	clr	c
	mov	a,#(0x39 ^ 0x80)
	mov	b,r5
	xrl	b,#0x80
	subb	a,b
	jnc	00102$
;	_itoa.c:48: string[index] += 'A' - '9' - 1;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	add	a,#0x07
	mov	r7,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrput
00102$:
;	_itoa.c:49: value /= radix;
	push	ar6
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
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
	lcall	__divuint
	mov	r0,_bp
	inc	r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	dec	sp
	dec	sp
	pop	ar6
;	_itoa.c:50: ++index;
	inc	r6
;	_itoa.c:51: } while (value != 0);
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00129$
	ljmp	00103$
00129$:
;	_itoa.c:54: string[index--] = '\0';
	mov	a,r6
	dec	a
	mov	r7,a
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,r6
	add	a,@r0
	mov	r4,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar6,@r0
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	clr	a
	lcall	__gptrput
;	_itoa.c:57: while (index > i) {
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	@r0,#0x00
00106$:
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	clr	c
	mov	a,@r0
	xrl	a,#0x80
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00109$
;	_itoa.c:58: char tmp = string[i];
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,_bp
	add	a,#0x08
	mov	r1,a
	mov	a,@r1
	add	a,@r0
	push	acc
	clr	a
	inc	r0
	addc	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	pop	acc
	mov	@r0,a
	dec	r0
	pop	acc
	mov	@r0,a
	dec	r0
	pop	acc
	mov	@r0,a
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r3,a
;	_itoa.c:59: string[i] = string[index];
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,r7
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar6,@r0
	mov	dpl,r2
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r4,a
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r4
	lcall	__gptrput
;	_itoa.c:60: string[index] = tmp;
	mov	dpl,r2
	mov	dph,r5
	mov	b,r6
	mov	a,r3
	lcall	__gptrput
;	_itoa.c:61: ++i;
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	inc	@r0
;	_itoa.c:62: --index;
	dec	r7
	ljmp	00106$
00109$:
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '_itoa'
;------------------------------------------------------------
;string                    Allocated to stack - _bp -5
;radix                     Allocated to stack - _bp -6
;value                     Allocated to registers r6 r7 
;------------------------------------------------------------
;	_itoa.c:66: void _itoa(int value, char* string, unsigned char radix)
;	-----------------------------------------
;	 function _itoa
;	-----------------------------------------
__itoa:
	push	_bp
	mov	_bp,sp
	mov	r6,dpl
;	_itoa.c:68: if (value < 0 && radix == 10) {
	mov	a,dph
	mov	r7,a
	jnb	acc.7,00102$
	mov	a,_bp
	add	a,#0xfa
	mov	r0,a
	cjne	@r0,#0x0A,00102$
;	_itoa.c:69: *string++ = '-';
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,#0x2D
	lcall	__gptrput
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x01
	add	a,r3
	mov	@r0,a
	clr	a
	addc	a,r4
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar5
;	_itoa.c:70: value = -value;
	clr	c
	clr	a
	subb	a,r6
	mov	r6,a
	clr	a
	subb	a,r7
	mov	r7,a
00102$:
;	_itoa.c:72: _uitoa(value, string, radix);
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
	mov	dpl,r6
	mov	dph,r7
	lcall	__uitoa
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	_bp
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
