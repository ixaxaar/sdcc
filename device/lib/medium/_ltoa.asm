;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:27:54 2013
;--------------------------------------------------------
	.module _ltoa
	.optsdcc -mmcs51 --model-medium
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __ltoa
	.globl __ultoa
	.globl __ltoa_PARM_3
	.globl __ltoa_PARM_2
	.globl __ultoa_PARM_3
	.globl __ultoa_PARM_2
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
__ultoa_sloc0_1_0:
	.ds 4
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
__ultoa_PARM_2:
	.ds 3
__ultoa_PARM_3:
	.ds 1
__ultoa_value_1_1:
	.ds 4
__ultoa_buffer_1_2:
	.ds 32
__ltoa_PARM_2:
	.ds 3
__ltoa_PARM_3:
	.ds 1
__ltoa_value_1_5:
	.ds 4
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
;sloc0                     Allocated with name '__ultoa_sloc0_1_0'
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
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	mov	r4,a
	mov	r0,#__ultoa_value_1_1
	mov	a,r7
	movx	@r0,a
	inc	r0
	mov	a,r6
	movx	@r0,a
	inc	r0
	mov	a,r5
	movx	@r0,a
	inc	r0
	mov	a,r4
	movx	@r0,a
;	_ltoa.c:61: do {
	mov	r3,#0x20
00103$:
;	_ltoa.c:62: unsigned char c = '0' + (value % radix);
	mov	r0,#__ultoa_PARM_3
	movx	a,@r0
	mov	__ultoa_sloc0_1_0,a
	mov	(__ultoa_sloc0_1_0 + 1),#0x00
	mov	(__ultoa_sloc0_1_0 + 2),#0x00
	mov	(__ultoa_sloc0_1_0 + 3),#0x00
	mov	r0,#__modulong_PARM_2
	mov	a,__ultoa_sloc0_1_0
	movx	@r0,a
	inc	r0
	mov	a,(__ultoa_sloc0_1_0 + 1)
	movx	@r0,a
	inc	r0
	mov	a,(__ultoa_sloc0_1_0 + 2)
	movx	@r0,a
	inc	r0
	mov	a,(__ultoa_sloc0_1_0 + 3)
	movx	@r0,a
	mov	r0,#__ultoa_value_1_1
	movx	a,@r0
	mov	dpl,a
	inc	r0
	movx	a,@r0
	mov	dph,a
	inc	r0
	movx	a,@r0
	mov	b,a
	inc	r0
	movx	a,@r0
	push	ar3
	lcall	__modulong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	pop	ar3
	mov	a,#0x30
	add	a,r4
;	_ltoa.c:63: if (c > (unsigned char)'9')
	mov  r7,a
	add	a,#0xff - 0x39
	jnc	00102$
;	_ltoa.c:64: c += 'A' - '9' - 1;
	mov	ar6,r7
	mov	a,#0x07
	add	a,r6
	mov	r7,a
00102$:
;	_ltoa.c:65: buffer[--index] = c;
	dec	r3
	mov	a,r3
	add	a,#__ultoa_buffer_1_2
	mov	r0,a
	mov	a,r7
	movx	@r0,a
;	_ltoa.c:66: value /= radix;
	mov	r0,#__divulong_PARM_2
	mov	a,__ultoa_sloc0_1_0
	movx	@r0,a
	inc	r0
	mov	a,(__ultoa_sloc0_1_0 + 1)
	movx	@r0,a
	inc	r0
	mov	a,(__ultoa_sloc0_1_0 + 2)
	movx	@r0,a
	inc	r0
	mov	a,(__ultoa_sloc0_1_0 + 3)
	movx	@r0,a
	mov	r0,#__ultoa_value_1_1
	movx	a,@r0
	mov	dpl,a
	inc	r0
	movx	a,@r0
	mov	dph,a
	inc	r0
	movx	a,@r0
	mov	b,a
	inc	r0
	movx	a,@r0
	push	ar3
	lcall	__divulong
	mov	r0,#__ultoa_value_1_1
	push	acc
	mov	a,dpl
	movx	@r0,a
	inc	r0
	mov	a,dph
	movx	@r0,a
	inc	r0
	mov	a,b
	movx	@r0,a
	pop	acc
	inc	r0
	movx	@r0,a
	pop	ar3
;	_ltoa.c:67: } while (value);
	mov	r0,#__ultoa_value_1_1
	movx	a,@r0
	mov	b,a
	inc	r0
	movx	a,@r0
	orl	b,a
	inc	r0
	movx	a,@r0
	orl	b,a
	inc	r0
	movx	a,@r0
	orl	a,b
	jz	00128$
	ljmp	00103$
00128$:
;	_ltoa.c:69: do {
	mov	r0,#__ultoa_PARM_2
	movx	a,@r0
	mov	r5,a
	inc	r0
	movx	a,@r0
	mov	r6,a
	inc	r0
	movx	a,@r0
	mov	r7,a
	mov	ar4,r3
00106$:
;	_ltoa.c:70: *string++ = buffer[index];
	mov	a,r4
	add	a,#__ultoa_buffer_1_2
	mov	r1,a
	movx	a,@r1
	mov	r3,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
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
	ljmp	__gptrput
;------------------------------------------------------------
;Allocation info for local variables in function '_ltoa'
;------------------------------------------------------------
;	_ltoa.c:76: void _ltoa(long value, char* string, unsigned char radix)
;	-----------------------------------------
;	 function _ltoa
;	-----------------------------------------
__ltoa:
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	mov	r4,a
	mov	r0,#__ltoa_value_1_5
	mov	a,r7
	movx	@r0,a
	inc	r0
	mov	a,r6
	movx	@r0,a
	inc	r0
	mov	a,r5
	movx	@r0,a
	inc	r0
	mov	a,r4
	movx	@r0,a
;	_ltoa.c:78: if (value < 0 && radix == 10) {
	mov	r0,#(__ltoa_value_1_5 + 3)
	movx	a,@r0
	jnb	acc.7,00102$
	mov	r0,#__ltoa_PARM_3
	movx	a,@r0
	cjne	a,#0x0A,00102$
;	_ltoa.c:79: *string++ = '-';
	mov	r0,#__ltoa_PARM_2
	movx	a,@r0
	mov	r2,a
	inc	r0
	movx	a,@r0
	mov	r3,a
	inc	r0
	movx	a,@r0
	mov	r7,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	mov	a,#0x2D
	lcall	__gptrput
	mov	r0,#__ltoa_PARM_2
	mov	a,#0x01
	add	a,r2
	movx	@r0,a
	clr	a
	addc	a,r3
	inc	r0
	movx	@r0,a
	inc	r0
	mov	a,r7
	movx	@r0,a
;	_ltoa.c:80: value = -value;
	mov	r0,#__ltoa_value_1_5
	movx	a,@r0
	setb	c
	cpl	a
	addc	a,#0x00
	movx	@r0,a
	inc	r0
	movx	a,@r0
	cpl	a
	addc	a,#0x00
	movx	@r0,a
	inc	r0
	movx	a,@r0
	cpl	a
	addc	a,#0x00
	movx	@r0,a
	inc	r0
	movx	a,@r0
	cpl	a
	addc	a,#0x00
	movx	@r0,a
00102$:
;	_ltoa.c:82: _ultoa(value, string, radix);
	mov	r0,#__ltoa_PARM_2
	mov	r1,#__ultoa_PARM_2
	movx	a,@r0
	movx	@r1,a
	inc	r0
	movx	a,@r0
	inc	r1
	movx	@r1,a
	inc	r0
	movx	a,@r0
	inc	r1
	movx	@r1,a
	mov	r0,#__ltoa_PARM_3
	mov	r1,#__ultoa_PARM_3
	movx	a,@r0
	movx	@r1,a
	mov	r0,#__ltoa_value_1_5
	movx	a,@r0
	mov	dpl,a
	inc	r0
	movx	a,@r0
	mov	dph,a
	inc	r0
	movx	a,@r0
	mov	b,a
	inc	r0
	movx	a,@r0
	ljmp	__ultoa
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
