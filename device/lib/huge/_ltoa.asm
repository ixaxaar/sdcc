;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:02 2013
;--------------------------------------------------------
	.module _ltoa
	.optsdcc -mmcs51 --model-huge
	
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
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
__ultoa_PARM_2:
	.ds 3
__ultoa_PARM_3:
	.ds 1
__ultoa_value_1_1:
	.ds 4
__ultoa_buffer_1_2:
	.ds 32
__ultoa_c_2_3:
	.ds 1
__ltoa_PARM_2:
	.ds 3
__ltoa_PARM_3:
	.ds 1
__ltoa_value_1_5:
	.ds 4
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
;string                    Allocated with name '__ultoa_PARM_2'
;radix                     Allocated with name '__ultoa_PARM_3'
;value                     Allocated with name '__ultoa_value_1_1'
;buffer                    Allocated with name '__ultoa_buffer_1_2'
;index                     Allocated with name '__ultoa_index_1_2'
;c                         Allocated with name '__ultoa_c_2_3'
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
	mov	dptr,#__ultoa_value_1_1
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
;	_ltoa.c:61: do {
	mov	dptr,#__ultoa_PARM_3
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x20
00103$:
;	_ltoa.c:62: unsigned char c = '0' + (value % radix);
	mov	dptr,#__ultoa_value_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	__ultoa_sloc0_1_0,r7
	mov	(__ultoa_sloc0_1_0 + 1),#0x00
	mov	(__ultoa_sloc0_1_0 + 2),#0x00
	mov	(__ultoa_sloc0_1_0 + 3),#0x00
	mov	dptr,#__modulong_PARM_2
	mov	a,__ultoa_sloc0_1_0
	movx	@dptr,a
	mov	a,(__ultoa_sloc0_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(__ultoa_sloc0_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,(__ultoa_sloc0_1_0 + 3)
	inc	dptr
	movx	@dptr,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	push	ar7
	push	ar6
	lcall	__modulong
	mov	r2,dpl
	mov	r3,dph
	pop	ar6
	pop	ar7
	mov	a,#0x30
	add	a,r2
	mov	r5,a
	mov	dptr,#__ultoa_c_2_3
	movx	@dptr,a
;	_ltoa.c:63: if (c > (unsigned char)'9')
	mov	ar4,r5
	mov	a,r4
	add	a,#0xff - 0x39
	jnc	00102$
;	_ltoa.c:64: c += 'A' - '9' - 1;
	mov	dptr,#__ultoa_c_2_3
	mov	a,#0x07
	add	a,r5
	movx	@dptr,a
00102$:
;	_ltoa.c:65: buffer[--index] = c;
	dec	r6
	mov	a,r6
	add	a,#__ultoa_buffer_1_2
	mov	r4,a
	clr	a
	addc	a,#(__ultoa_buffer_1_2 >> 8)
	mov	r5,a
	mov	dptr,#__ultoa_c_2_3
	movx	a,@dptr
	mov	dpl,r4
	mov	dph,r5
	movx	@dptr,a
;	_ltoa.c:66: value /= radix;
	mov	dptr,#__ultoa_value_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#__divulong_PARM_2
	mov	a,__ultoa_sloc0_1_0
	movx	@dptr,a
	mov	a,(__ultoa_sloc0_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(__ultoa_sloc0_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,(__ultoa_sloc0_1_0 + 3)
	inc	dptr
	movx	@dptr,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	push	ar7
	push	ar6
	lcall	__divulong
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	pop	ar6
	pop	ar7
	mov	dptr,#__ultoa_value_1_1
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	_ltoa.c:67: } while (value);
	mov	dptr,#__ultoa_value_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r2
	orl	a,r3
	orl	a,r4
	orl	a,r5
	jz	00128$
	ljmp	00103$
00128$:
;	_ltoa.c:69: do {
	mov	dptr,#__ultoa_PARM_2
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
00106$:
;	_ltoa.c:70: *string++ = buffer[index];
	mov	a,r6
	add	a,#__ultoa_buffer_1_2
	mov	dpl,a
	clr	a
	addc	a,#(__ultoa_buffer_1_2 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r3,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r7
	lcall	__gptrput
	inc	dptr
	mov	r4,dpl
	mov	r5,dph
;	_ltoa.c:71: } while ( ++index != NUMBER_OF_DIGITS );
	inc	r6
	cjne	r6,#0x20,00106$
;	_ltoa.c:73: *string = 0;  /* string terminator */
	mov	dpl,r4
	mov	dph,r5
	mov	b,r7
	clr	a
	lcall	__gptrput
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function '_ltoa'
;------------------------------------------------------------
;string                    Allocated with name '__ltoa_PARM_2'
;radix                     Allocated with name '__ltoa_PARM_3'
;value                     Allocated with name '__ltoa_value_1_5'
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
	mov	dptr,#__ltoa_value_1_5
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
;	_ltoa.c:78: if (value < 0 && radix == 10) {
	mov	dptr,#__ltoa_value_1_5
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
	jnb	acc.7,00102$
	mov	dptr,#__ltoa_PARM_3
	movx	a,@dptr
	mov	r3,a
	cjne	r3,#0x0A,00102$
;	_ltoa.c:79: *string++ = '-';
	mov	dptr,#__ltoa_PARM_2
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	mov	a,#0x2D
	lcall	__gptrput
	mov	dptr,#__ltoa_PARM_2
	mov	a,#0x01
	add	a,r1
	movx	@dptr,a
	clr	a
	addc	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
;	_ltoa.c:80: value = -value;
	mov	dptr,#__ltoa_value_1_5
	clr	c
	clr	a
	subb	a,r4
	movx	@dptr,a
	clr	a
	subb	a,r5
	inc	dptr
	movx	@dptr,a
	clr	a
	subb	a,r6
	inc	dptr
	movx	@dptr,a
	clr	a
	subb	a,r7
	inc	dptr
	movx	@dptr,a
00102$:
;	_ltoa.c:82: _ultoa(value, string, radix);
	mov	dptr,#__ltoa_value_1_5
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
	mov	dptr,#__ltoa_PARM_2
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#__ltoa_PARM_3
	movx	a,@dptr
	mov	r0,a
	mov	dptr,#__ultoa_PARM_2
	mov	a,r1
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	dptr,#__ultoa_PARM_3
	mov	a,r0
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	mov	r0,#__ultoa
	mov	r1,#(__ultoa >> 8)
	mov	r2,#(__ultoa >> 16)
	lcall	__sdcc_banked_call
	ljmp	__sdcc_banked_ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
