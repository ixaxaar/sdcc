;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:27:51 2013
;--------------------------------------------------------
	.module _ltoa
	.optsdcc -mmcs51 --model-small
	
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
__ultoa_PARM_2:
	.ds 3
__ultoa_PARM_3:
	.ds 1
__ultoa_value_1_1:
	.ds 4
__ltoa_PARM_2:
	.ds 3
__ltoa_PARM_3:
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
__ultoa_buffer_1_2:
	.ds 32
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
;string                    Allocated with name '__ultoa_PARM_2'
;radix                     Allocated with name '__ultoa_PARM_3'
;value                     Allocated with name '__ultoa_value_1_1'
;index                     Allocated to registers r3 
;c                         Allocated to registers r7 
;buffer                    Allocated with name '__ultoa_buffer_1_2'
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
	mov	__ultoa_value_1_1,dpl
	mov	(__ultoa_value_1_1 + 1),dph
	mov	(__ultoa_value_1_1 + 2),b
	mov	(__ultoa_value_1_1 + 3),a
;	_ltoa.c:59: unsigned char index = NUMBER_OF_DIGITS;
	mov	r3,#0x20
;	_ltoa.c:61: do {
00103$:
;	_ltoa.c:62: unsigned char c = '0' + (value % radix);
	mov	__modulong_PARM_2,__ultoa_PARM_3
	mov	(__modulong_PARM_2 + 1),#0x00
	mov	(__modulong_PARM_2 + 2),#0x00
	mov	(__modulong_PARM_2 + 3),#0x00
	mov	dpl,__ultoa_value_1_1
	mov	dph,(__ultoa_value_1_1 + 1)
	mov	b,(__ultoa_value_1_1 + 2)
	mov	a,(__ultoa_value_1_1 + 3)
	push	ar3
	lcall	__modulong
	mov	r2,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	pop	ar3
	mov	a,#0x30
	add	a,r2
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
	mov	@r0,ar7
;	_ltoa.c:66: value /= radix;
	mov	__divulong_PARM_2,__ultoa_PARM_3
	mov	(__divulong_PARM_2 + 1),#0x00
	mov	(__divulong_PARM_2 + 2),#0x00
	mov	(__divulong_PARM_2 + 3),#0x00
	mov	dpl,__ultoa_value_1_1
	mov	dph,(__ultoa_value_1_1 + 1)
	mov	b,(__ultoa_value_1_1 + 2)
	mov	a,(__ultoa_value_1_1 + 3)
	push	ar3
	lcall	__divulong
	mov	__ultoa_value_1_1,dpl
	mov	(__ultoa_value_1_1 + 1),dph
	mov	(__ultoa_value_1_1 + 2),b
	mov	(__ultoa_value_1_1 + 3),a
	pop	ar3
;	_ltoa.c:67: } while (value);
	mov	a,__ultoa_value_1_1
	orl	a,(__ultoa_value_1_1 + 1)
	orl	a,(__ultoa_value_1_1 + 2)
	orl	a,(__ultoa_value_1_1 + 3)
	jnz	00103$
;	_ltoa.c:69: do {
	mov	ar7,r3
	mov	r4,__ultoa_PARM_2
	mov	r5,(__ultoa_PARM_2 + 1)
	mov	r6,(__ultoa_PARM_2 + 2)
00106$:
;	_ltoa.c:70: *string++ = buffer[index];
	mov	a,r7
	add	a,#__ultoa_buffer_1_2
	mov	r1,a
	mov	ar3,@r1
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	r4,dpl
	mov	r5,dph
;	_ltoa.c:71: } while ( ++index != NUMBER_OF_DIGITS );
	inc	r7
	cjne	r7,#0x20,00106$
;	_ltoa.c:73: *string = 0;  /* string terminator */
	mov	__ultoa_PARM_2,r4
	mov	(__ultoa_PARM_2 + 1),r5
	mov	(__ultoa_PARM_2 + 2),r6
	mov	r5,__ultoa_PARM_2
	mov	r6,(__ultoa_PARM_2 + 1)
	mov	r7,(__ultoa_PARM_2 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	ljmp	__gptrput
;------------------------------------------------------------
;Allocation info for local variables in function '_ltoa'
;------------------------------------------------------------
;string                    Allocated with name '__ltoa_PARM_2'
;radix                     Allocated with name '__ltoa_PARM_3'
;value                     Allocated to registers r4 r5 r6 r7 
;------------------------------------------------------------
;	_ltoa.c:76: void _ltoa(long value, char* string, unsigned char radix)
;	-----------------------------------------
;	 function _ltoa
;	-----------------------------------------
__ltoa:
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
;	_ltoa.c:78: if (value < 0 && radix == 10) {
	mov	r7,a
	jnb	acc.7,00102$
	mov	a,#0x0A
	cjne	a,__ltoa_PARM_3,00102$
;	_ltoa.c:79: *string++ = '-';
	mov	r1,__ltoa_PARM_2
	mov	r2,(__ltoa_PARM_2 + 1)
	mov	r3,(__ltoa_PARM_2 + 2)
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	mov	a,#0x2D
	lcall	__gptrput
	mov	a,#0x01
	add	a,r1
	mov	__ltoa_PARM_2,a
	clr	a
	addc	a,r2
	mov	(__ltoa_PARM_2 + 1),a
	mov	(__ltoa_PARM_2 + 2),r3
;	_ltoa.c:80: value = -value;
	clr	c
	clr	a
	subb	a,r4
	mov	r4,a
	clr	a
	subb	a,r5
	mov	r5,a
	clr	a
	subb	a,r6
	mov	r6,a
	clr	a
	subb	a,r7
	mov	r7,a
00102$:
;	_ltoa.c:82: _ultoa(value, string, radix);
	mov	__ultoa_PARM_2,__ltoa_PARM_2
	mov	(__ultoa_PARM_2 + 1),(__ltoa_PARM_2 + 1)
	mov	(__ultoa_PARM_2 + 2),(__ltoa_PARM_2 + 2)
	mov	__ultoa_PARM_3,__ltoa_PARM_3
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	ljmp	__ultoa
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
