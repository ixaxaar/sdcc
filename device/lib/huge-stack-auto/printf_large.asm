;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:15 2013
;--------------------------------------------------------
	.module printf_large
	.optsdcc -mmcs51 --model-huge
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strlen
	.globl __print_format
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
; overlayable bit register bank
;--------------------------------------------------------
	.area BIT_BANK	(REL,OVR,DATA)
bits:
	.ds 1
	b0 = bits[0]
	b1 = bits[1]
	b2 = bits[2]
	b3 = bits[3]
	b4 = bits[4]
	b5 = bits[5]
	b6 = bits[6]
	b7 = bits[7]
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
;Allocation info for local variables in function 'output_digit'
;------------------------------------------------------------
;output_char               Allocated to stack - _bp -6
;p                         Allocated to stack - _bp -9
;lower_case                Allocated to registers b0 
;n                         Allocated to registers r7 
;c                         Allocated to registers r7 
;------------------------------------------------------------
;	printf_large.c:116: output_digit (unsigned char n, bool lower_case, pfn_outputchar output_char, void* p)
;	-----------------------------------------
;	 function output_digit
;	-----------------------------------------
_output_digit:
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
	mov	r7,dpl
;	printf_large.c:118: register unsigned char c = n + (unsigned char)'0';
	mov	a,#0x30
	add	a,r7
;	printf_large.c:120: if (c > (unsigned char)'9')
	mov  r7,a
	add	a,#0xff - 0x39
	jnc	00104$
;	printf_large.c:122: c += (unsigned char)('A' - '0' - 10);
	mov	a,#0x07
	add	a,r7
	mov	r7,a
;	printf_large.c:123: if (lower_case)
	jnb	b0,00104$
;	printf_large.c:124: c += (unsigned char)('a' - 'A');
	mov	a,#0x20
	add	a,r7
	mov	r7,a
00104$:
;	printf_large.c:126: output_char( c, p );
	mov	a,_bp
	add	a,#0xf7
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0xfa
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r7
	pop	ar2
	pop	ar1
	pop	ar0
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
	pop	_bp
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'output_2digits'
;------------------------------------------------------------
;output_char               Allocated to stack - _bp -6
;p                         Allocated to stack - _bp -9
;lower_case                Allocated to registers b0 
;b                         Allocated to registers r7 
;------------------------------------------------------------
;	printf_large.c:149: output_2digits (unsigned char b, bool lower_case, pfn_outputchar output_char, void* p)
;	-----------------------------------------
;	 function output_2digits
;	-----------------------------------------
_output_2digits:
	push	_bp
	mov	_bp,sp
;	printf_large.c:151: output_digit( b>>4,   lower_case, output_char, p );
	mov	a,dpl
	mov	r7,a
	swap	a
	anl	a,#0x0F
	mov	r6,a
	push	ar7
	push	bits
	mov	a,_bp
	add	a,#0xf7
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0xfa
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	c,b0
	mov	b[0],c
	mov	bits,b
	mov	dpl,r6
	mov	r0,#_output_digit
	mov	r1,#(_output_digit >> 8)
	mov	r2,#(_output_digit >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	pop	bits
	pop	ar7
;	printf_large.c:152: output_digit( b&0x0F, lower_case, output_char, p );
	anl	ar7,#0x0F
	mov	a,_bp
	add	a,#0xf7
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0xfa
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	c,b0
	mov	b[0],c
	mov	bits,b
	mov	dpl,r7
	mov	r0,#_output_digit
	mov	r1,#(_output_digit >> 8)
	mov	r2,#(_output_digit >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	pop	_bp
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'calculate_digit'
;------------------------------------------------------------
;radix                     Allocated to stack - _bp -4
;value                     Allocated to registers r1 
;ul                        Allocated to registers r4 r5 r6 r7 
;pb4                       Allocated to registers r0 
;i                         Allocated to stack - _bp +1
;sloc0                     Allocated to stack - _bp +8
;------------------------------------------------------------
;	printf_large.c:168: calculate_digit (value_t _AUTOMEM * value, unsigned char radix)
;	-----------------------------------------
;	 function calculate_digit
;	-----------------------------------------
_calculate_digit:
	push	_bp
	mov	_bp,sp
	inc	sp
	mov	r1,dpl
;	printf_large.c:170: unsigned long ul = value->ul;
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
;	printf_large.c:171: unsigned char _AUTOMEM * pb4 = &value->byte[4];
	mov	a,#0x04
	add	a,r1
	mov	r0,a
;	printf_large.c:174: do
	push	ar0
	mov	r0,_bp
	inc	r0
	mov	@r0,#0x20
	pop	ar0
00103$:
;	printf_large.c:176: *pb4 = (*pb4 << 1) | ((ul >> 31) & 0x01);
	push	ar1
	mov	a,@r0
	add	a,@r0
	mov	r2,a
	mov	a,r7
	rl	a
	anl	a,#0x01
	mov	r3,a
	mov	a,r2
	orl	ar3,a
	mov	@r0,ar3
;	printf_large.c:177: ul <<= 1;
	mov	a,r4
	add	a,r4
	mov	r4,a
	mov	a,r5
	rlc	a
	mov	r5,a
	mov	a,r6
	rlc	a
	mov	r6,a
	mov	a,r7
	rlc	a
	mov	r7,a
;	printf_large.c:179: if (radix <= *pb4 )
	mov	ar3,@r0
	push	ar0
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	clr	c
	mov	a,r3
	subb	a,@r0
	pop	ar0
	pop	ar1
	jc	00104$
;	printf_large.c:181: *pb4 -= radix;
	push	ar0
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	a,r3
	clr	c
	subb	a,@r0
	mov	r3,a
	pop	ar0
	mov	@r0,ar3
;	printf_large.c:182: ul |= 1;
	orl	ar4,#0x01
00104$:
;	printf_large.c:184: } while (--i);
	push	ar0
	mov	r0,_bp
	inc	r0
	dec	@r0
	mov	a,@r0
	pop	ar0
	jz	00120$
	sjmp	00103$
00120$:
;	printf_large.c:185: value->ul = ul;
	mov	@r1,ar4
	inc	r1
	mov	@r1,ar5
	inc	r1
	mov	@r1,ar6
	inc	r1
	mov	@r1,ar7
	dec	sp
	pop	_bp
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'output_float'
;------------------------------------------------------------
;reqWidth                  Allocated to stack - _bp -4
;reqDecimals               Allocated to stack - _bp -5
;output_char               Allocated to stack - _bp -8
;p                         Allocated to stack - _bp -11
;space                     Allocated to registers b3 
;sign                      Allocated to registers b2 
;zero                      Allocated to registers b1 
;left                      Allocated to registers b0 
;f                         Allocated to stack - _bp +1
;charsOutputted            Allocated to stack - _bp +26
;fpBuffer                  Allocated to stack - _bp +10
;negative                  Allocated to registers b4 
;integerPart               Allocated to stack - _bp +27
;rounding                  Allocated to registers r3 r5 r6 r7 
;decimalPart               Allocated to stack - _bp +31
;fpBI                      Allocated to registers r7 
;fpBD                      Allocated to stack - _bp +35
;minWidth                  Allocated to registers r6 
;i                         Allocated to registers r4 
;exp                       Allocated to stack - _bp +9
;sloc0                     Allocated to stack - _bp +44
;sloc1                     Allocated to stack - _bp +5
;sloc2                     Allocated to stack - _bp +9
;------------------------------------------------------------
;	printf_large.c:227: output_float (float f, unsigned char reqWidth,
;	-----------------------------------------
;	 function output_float
;	-----------------------------------------
_output_float:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	push	acc
	mov	a,sp
	add	a,#0x1F
	mov	sp,a
;	printf_large.c:232: unsigned char charsOutputted = 0;
	mov	a,_bp
	add	a,#0x1a
	mov	r0,a
	mov	@r0,#0x00
;	printf_large.c:247: bool negative = 0;
	clr	b4
;	printf_large.c:253: signed char exp = -128;
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	@r0,#0x80
;	printf_large.c:256: if (f<0)
	push	bits
	clr	a
	push	acc
	push	acc
	push	acc
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
	lcall	___fslt
	mov	r3,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	bits
	mov	a,r3
	jz	00102$
;	printf_large.c:258: negative=1;
	setb	b4
;	printf_large.c:259: f=-f;
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	mov	@r0,a
	inc	r0
	mov	a,@r0
	mov	@r0,a
	inc	r0
	mov	a,@r0
	mov	@r0,a
	inc	r0
	mov	a,@r0
	cpl	acc.7
	mov	@r0,a
00102$:
;	printf_large.c:262: if (f>0x00ffffff)
	push	bits
	mov	a,#0xFF
	push	acc
	push	acc
	mov	a,#0x7F
	push	acc
	mov	a,#0x4B
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
	lcall	___fsgt
	mov	r3,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	bits
	mov	a,r3
	jnz	00348$
	ljmp	00111$
00348$:
;	printf_large.c:266: for (exp = 0; f >= 10.0; exp++) f /=10.0;
	mov	r7,#0x00
00181$:
	push	ar7
	push	bits
	clr	a
	push	acc
	push	acc
	mov	a,#0x20
	push	acc
	mov	a,#0x41
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
	lcall	___fslt
	mov	r3,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	bits
	pop	ar7
	mov	a,r3
	jnz	00205$
	push	ar7
	push	bits
	clr	a
	push	acc
	push	acc
	mov	a,#0x20
	push	acc
	mov	a,#0x41
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
	lcall	___fsdiv
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
	pop	bits
	pop	ar7
	inc	r7
	sjmp	00181$
00205$:
00184$:
;	printf_large.c:267: for (       ; f < 1.0;   exp--) f *=10.0;
	push	ar7
	push	bits
	clr	a
	push	acc
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#0x3F
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
	lcall	___fslt
	mov	r3,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	bits
	pop	ar7
	mov	a,r3
	jz	00246$
	push	ar7
	push	bits
	mov	r0,_bp
	inc	r0
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
	mov	dptr,#0x0000
	mov	b,#0x20
	mov	a,#0x41
	lcall	___fsmul
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
	pop	bits
	pop	ar7
	dec	r7
	sjmp	00184$
00246$:
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	@r0,ar7
;	printf_large.c:269: if (negative)
	jnb	b4,00108$
;	printf_large.c:271: OUTPUT_CHAR ('-', p);
	push	bits
	mov	a,_bp
	add	a,#0xf5
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0xf8
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,#0x2D
	pop	ar2
	pop	ar1
	pop	ar0
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
	pop	bits
	mov	a,_bp
	add	a,#0x1a
	mov	r0,a
	mov	@r0,#0x01
	sjmp	00109$
00108$:
;	printf_large.c:275: if (sign)
	jnb	b2,00109$
;	printf_large.c:277: OUTPUT_CHAR ('+', p);
	push	bits
	mov	a,_bp
	add	a,#0xf5
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0xf8
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,#0x2B
	pop	ar2
	pop	ar1
	pop	ar0
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
	pop	bits
	mov	a,_bp
	add	a,#0x1a
	mov	r0,a
	mov	@r0,#0x01
00109$:
;	printf_large.c:280: reqWidth = 0;
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	@r0,#0x00
;	printf_large.c:281: left = 0;
	clr	b0
;	printf_large.c:282: zero = 0;
	clr	b1
;	printf_large.c:283: sign = 0;
	clr	b2
;	printf_large.c:284: space = 0;
	clr	b3
00111$:
;	printf_large.c:288: if (reqDecimals==-1)
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	cjne	@r0,#0xFF,00113$
;	printf_large.c:289: reqDecimals=DEFAULT_FLOAT_PRECISION;
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	@r0,#0x06
00113$:
;	printf_large.c:292: rounding = 0.5;
	mov	r3,#0x00
	mov	r5,#0x00
	mov	r6,#0x00
	mov	r7,#0x3F
;	printf_large.c:293: for (i=reqDecimals; i>0; i--)
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	ar4,@r0
	mov	ar2,r4
00187$:
	mov	a,r2
	jz	00114$
;	printf_large.c:295: rounding /= 10.0;
	push	ar2
	push	bits
	clr	a
	push	acc
	push	acc
	mov	a,#0x20
	push	acc
	mov	a,#0x41
	push	acc
	mov	dpl,r3
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fsdiv
	xch	a,r0
	mov	a,_bp
	add	a,#0x05
	xch	a,r0
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
	pop	bits
	pop	ar2
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	ar3,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
;	printf_large.c:293: for (i=reqDecimals; i>0; i--)
	dec	r2
	sjmp	00187$
00114$:
;	printf_large.c:297: f += rounding;
	push	bits
	push	ar3
	push	ar5
	push	ar6
	push	ar7
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	___fsadd
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
	pop	bits
;	printf_large.c:300: integerPart = f;
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	push	bits
	lcall	___fs2ulong
	mov	r3,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	pop	bits
	mov	a,_bp
	add	a,#0x1b
	mov	r0,a
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	printf_large.c:301: decimalPart = f - integerPart;
	mov	a,_bp
	add	a,#0x1b
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	push	bits
	lcall	___ulong2fs
	mov	r2,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	pop	bits
	push	bits
	push	ar2
	push	ar5
	push	ar6
	push	ar7
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	___fssub
	mov	r3,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	bits
	mov	a,_bp
	add	a,#0x1f
	mov	r0,a
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	printf_large.c:304: while (integerPart)
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,_bp
	add	a,#0x0A
	mov	@r0,a
	mov	r4,#0x00
;	printf_large.c:426: return charsOutputted;
;	printf_large.c:304: while (integerPart)
00115$:
	mov	a,_bp
	add	a,#0x1b
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00356$
	ljmp	00248$
00356$:
;	printf_large.c:306: fpBuffer[fpBI++]='0' + integerPart%10;
	mov	ar7,r4
	inc	r4
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,r7
	add	a,@r0
	mov	r1,a
	push	ar4
	push	ar1
	push	bits
	mov	a,#0x0A
	push	acc
	clr	a
	push	acc
	push	acc
	push	acc
	mov	a,_bp
	add	a,#0x1b
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	__modulong
	mov	r3,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	bits
	pop	ar1
	mov	a,#0x30
	add	a,r3
	mov	@r1,a
;	printf_large.c:307: integerPart /= 10;
	push	bits
	mov	a,#0x0A
	push	acc
	clr	a
	push	acc
	push	acc
	push	acc
	mov	a,_bp
	add	a,#0x1b
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	__divulong
	mov	r3,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	bits
	pop	ar4
	mov	a,_bp
	add	a,#0x1b
	mov	r0,a
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	ljmp	00115$
00248$:
;	printf_large.c:309: if (!fpBI)
	mov	a,r4
	mov	r7,a
	jnz	00119$
;	printf_large.c:312: fpBuffer[fpBI++]='0';
	mov	a,r4
	inc	a
	mov	r7,a
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,r4
	add	a,@r0
	mov	r0,a
	mov	@r0,#0x30
00119$:
;	printf_large.c:318: for (i=reqDecimals; i>0; i--)
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	ar4,@r0
	mov	a,_bp
	add	a,#0x23
	mov	r0,a
	mov	@r0,ar7
	mov	ar5,r4
00190$:
	mov	a,r5
	jnz	00189$
	mov	ar4,r5
	ljmp	00120$
00189$:
;	printf_large.c:320: decimalPart *= 10.0;
	push	ar7
	push	ar5
	push	bits
	mov	a,_bp
	add	a,#0x1f
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
	mov	dptr,#0x0000
	mov	b,#0x20
	mov	a,#0x41
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	bits
	mov	a,_bp
	add	a,#0x1f
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	printf_large.c:322: integerPart = decimalPart;
	mov	a,_bp
	add	a,#0x1f
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	push	bits
	lcall	___fs2ulong
	mov	r2,dpl
	mov	r3,dph
	mov	r6,b
	mov	r7,a
	pop	bits
	mov	a,_bp
	add	a,#0x1b
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	printf_large.c:323: fpBuffer[fpBD++] = '0' + integerPart;
	mov	a,_bp
	add	a,#0x23
	mov	r0,a
	mov	ar7,@r0
	mov	a,_bp
	add	a,#0x23
	mov	r0,a
	inc	@r0
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,r7
	add	a,@r0
	mov	r1,a
	mov	a,_bp
	add	a,#0x1b
	mov	r0,a
	mov	ar3,@r0
	mov	a,#0x30
	add	a,r3
	mov	@r1,a
;	printf_large.c:324: decimalPart -= integerPart;
	mov	a,_bp
	add	a,#0x1b
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	push	bits
	lcall	___ulong2fs
	mov	r2,dpl
	mov	r3,dph
	mov	r6,b
	mov	r7,a
	pop	bits
	push	bits
	push	ar2
	push	ar3
	push	ar6
	push	ar7
	mov	a,_bp
	add	a,#0x1f
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	___fssub
	mov	r2,dpl
	mov	r3,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	bits
	pop	ar5
	mov	a,_bp
	add	a,#0x1f
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	printf_large.c:318: for (i=reqDecimals; i>0; i--)
	dec	r5
	pop	ar7
	ljmp	00190$
00120$:
;	printf_large.c:327: minWidth=fpBI; // we need at least these
	mov	ar6,r7
;	printf_large.c:328: minWidth+=reqDecimals?reqDecimals+1:0; // maybe these
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	jz	00198$
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	inc	a
	mov	r5,a
	sjmp	00199$
00198$:
	mov	r5,#0x00
00199$:
	mov	ar3,r6
	mov	a,r5
	add	a,r3
	mov	r5,a
	mov	r6,a
;	printf_large.c:329: if (negative || sign || space)
	jb	b4,00121$
	jb	b2,00121$
	jnb	b3,00122$
00121$:
;	printf_large.c:330: minWidth++; // and maybe even this :)
	inc	r6
00122$:
;	printf_large.c:332: if (!left && reqWidth>i)
	jnb	b0,00363$
	ljmp	00159$
00363$:
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	clr	c
	mov	a,r4
	subb	a,@r0
	jc	00364$
	ljmp	00159$
00364$:
;	printf_large.c:334: if (zero)
	jb	b1,00365$
	ljmp	00228$
00365$:
;	printf_large.c:336: if (negative)
	jnb	b4,00131$
;	printf_large.c:338: OUTPUT_CHAR('-', p);
	push	ar7
	push	ar6
	push	bits
	mov	a,_bp
	add	a,#0xf5
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0xf8
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,#0x2D
	pop	ar2
	pop	ar1
	pop	ar0
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
	pop	bits
	pop	ar6
	pop	ar7
	mov	a,_bp
	add	a,#0x1a
	mov	r0,a
	inc	@r0
	ljmp	00226$
00131$:
;	printf_large.c:340: else if (sign)
	jnb	b2,00128$
;	printf_large.c:342: OUTPUT_CHAR('+', p);
	push	ar7
	push	ar6
	push	bits
	mov	a,_bp
	add	a,#0xf5
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0xf8
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,#0x2B
	pop	ar2
	pop	ar1
	pop	ar0
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
	pop	bits
	pop	ar6
	pop	ar7
	mov	a,_bp
	add	a,#0x1a
	mov	r0,a
	inc	@r0
	sjmp	00226$
00128$:
;	printf_large.c:344: else if (space)
	jnb	b3,00226$
;	printf_large.c:346: OUTPUT_CHAR(' ', p);
	push	ar7
	push	ar6
	push	bits
	mov	a,_bp
	add	a,#0xf5
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0xf8
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,#0x20
	pop	ar2
	pop	ar1
	pop	ar0
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
	pop	bits
	pop	ar6
	pop	ar7
	mov	a,_bp
	add	a,#0x1a
	mov	r0,a
	inc	@r0
;	printf_large.c:348: while (reqWidth-->minWidth)
00226$:
	mov	a,_bp
	add	a,#0x1a
	mov	r0,a
	mov	ar5,@r0
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	ar4,@r0
00133$:
	mov	ar3,r4
	dec	r4
	clr	c
	mov	a,r6
	subb	a,r3
	jc	00369$
	ljmp	00250$
00369$:
;	printf_large.c:350: OUTPUT_CHAR('0', p);
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	bits
	mov	a,_bp
	add	a,#0xf5
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0xf8
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,#0x30
	pop	ar2
	pop	ar1
	pop	ar0
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
	pop	bits
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	inc	r5
;	printf_large.c:355: while (reqWidth-->minWidth)
	sjmp	00133$
00228$:
	mov	a,_bp
	add	a,#0x1a
	mov	r0,a
	mov	ar3,@r0
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	ar2,@r0
00136$:
	push	ar7
	mov	ar7,r2
	dec	r2
	clr	c
	mov	a,r6
	subb	a,r7
	pop	ar7
	jnc	00251$
;	printf_large.c:357: OUTPUT_CHAR(' ', p);
	push	ar7
	push	ar6
	push	ar3
	push	ar2
	push	bits
	mov	a,_bp
	add	a,#0xf5
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0xf8
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,#0x20
	pop	ar2
	pop	ar1
	pop	ar0
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
	pop	bits
	pop	ar2
	pop	ar3
	pop	ar6
	pop	ar7
	inc	r3
	sjmp	00136$
00251$:
	mov	a,_bp
	add	a,#0x1a
	mov	r0,a
	mov	@r0,ar3
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	@r0,ar2
;	printf_large.c:359: if (negative)
	jnb	b4,00145$
;	printf_large.c:361: OUTPUT_CHAR('-', p);
	push	ar7
	push	ar6
	push	ar3
	push	bits
	mov	a,_bp
	add	a,#0xf5
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0xf8
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,#0x2D
	pop	ar2
	pop	ar1
	pop	ar0
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
	pop	bits
	pop	ar3
	pop	ar6
	pop	ar7
	mov	a,_bp
	add	a,#0x1a
	mov	r0,a
	mov	a,r3
	inc	a
	mov	@r0,a
	ljmp	00160$
00145$:
;	printf_large.c:363: else if (sign)
	jnb	b2,00142$
;	printf_large.c:365: OUTPUT_CHAR('+', p);
	push	ar7
	push	ar6
	push	ar3
	push	bits
	mov	a,_bp
	add	a,#0xf5
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0xf8
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,#0x2B
	pop	ar2
	pop	ar1
	pop	ar0
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
	pop	bits
	pop	ar3
	pop	ar6
	pop	ar7
	mov	a,_bp
	add	a,#0x1a
	mov	r0,a
	mov	a,r3
	inc	a
	mov	@r0,a
	ljmp	00160$
00142$:
;	printf_large.c:367: else if (space)
	jb	b3,00373$
	ljmp	00160$
00373$:
;	printf_large.c:369: OUTPUT_CHAR(' ', p);
	push	ar7
	push	ar6
	push	ar3
	push	bits
	mov	a,_bp
	add	a,#0xf5
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0xf8
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,#0x20
	pop	ar2
	pop	ar1
	pop	ar0
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
	pop	bits
	pop	ar3
	pop	ar6
	pop	ar7
	mov	a,_bp
	add	a,#0x1a
	mov	r0,a
	mov	a,r3
	inc	a
	mov	@r0,a
	ljmp	00160$
00159$:
;	printf_large.c:375: if (negative)
	jnb	b4,00156$
;	printf_large.c:377: OUTPUT_CHAR('-', p);
	push	ar7
	push	ar6
	push	bits
	mov	a,_bp
	add	a,#0xf5
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0xf8
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,#0x2D
	pop	ar2
	pop	ar1
	pop	ar0
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
	pop	bits
	pop	ar6
	pop	ar7
	mov	a,_bp
	add	a,#0x1a
	mov	r0,a
	inc	@r0
	ljmp	00160$
00156$:
;	printf_large.c:379: else if (sign)
	jnb	b2,00153$
;	printf_large.c:381: OUTPUT_CHAR('+', p);
	push	ar7
	push	ar6
	push	bits
	mov	a,_bp
	add	a,#0xf5
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0xf8
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,#0x2B
	pop	ar2
	pop	ar1
	pop	ar0
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
	pop	bits
	pop	ar6
	pop	ar7
	mov	a,_bp
	add	a,#0x1a
	mov	r0,a
	inc	@r0
	sjmp	00160$
00153$:
;	printf_large.c:383: else if (space)
	jnb	b3,00160$
;	printf_large.c:385: OUTPUT_CHAR(' ', p);
	push	ar7
	push	ar6
	push	bits
	mov	a,_bp
	add	a,#0xf5
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0xf8
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,#0x20
	pop	ar2
	pop	ar1
	pop	ar0
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
	pop	bits
	pop	ar6
	pop	ar7
	mov	a,_bp
	add	a,#0x1a
	mov	r0,a
	inc	@r0
;	printf_large.c:426: return charsOutputted;
;	printf_large.c:385: OUTPUT_CHAR(' ', p);
	sjmp	00160$
00250$:
	mov	a,_bp
	add	a,#0x1a
	mov	r0,a
	mov	@r0,ar5
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	@r0,ar4
00160$:
;	printf_large.c:390: i=fpBI-1;
	mov	a,r7
	dec	a
	mov	r5,a
;	printf_large.c:391: do {
	mov	a,_bp
	add	a,#0x1a
	mov	r0,a
	mov	ar4,@r0
00162$:
;	printf_large.c:392: OUTPUT_CHAR (fpBuffer[i], p);
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,r5
	add	a,@r0
	mov	r1,a
	mov	ar3,@r1
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	bits
	mov	a,_bp
	add	a,#0xf5
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0xf8
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r3
	pop	ar2
	pop	ar1
	pop	ar0
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
	pop	bits
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	inc	r4
;	printf_large.c:393: } while (i--);
	mov	ar3,r5
	dec	r5
	mov	a,r3
	jnz	00162$
;	printf_large.c:396: if (reqDecimals)
	mov	a,_bp
	add	a,#0x1a
	mov	r0,a
	mov	@r0,ar4
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	jnz	00378$
	ljmp	00169$
00378$:
;	printf_large.c:398: OUTPUT_CHAR ('.', p);
	push	ar7
	push	ar6
	push	ar4
	push	bits
	mov	a,_bp
	add	a,#0xf5
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0xf8
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,#0x2E
	pop	ar2
	pop	ar1
	pop	ar0
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
	pop	bits
	pop	ar4
	pop	ar6
	pop	ar7
	mov	a,_bp
	add	a,#0x1a
	mov	r0,a
	mov	a,r4
	inc	a
	mov	@r0,a
;	printf_large.c:400: while (reqDecimals--)
	mov	a,_bp
	add	a,#0x1a
	mov	r0,a
	mov	ar5,@r0
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	ar4,@r0
00165$:
	mov	ar3,r4
	dec	r4
	mov	a,r3
	jz	00253$
;	printf_large.c:402: OUTPUT_CHAR (fpBuffer[i++], p);
	mov	ar3,r7
	inc	r7
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,r3
	add	a,@r0
	mov	r1,a
	mov	ar3,@r1
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	bits
	mov	a,_bp
	add	a,#0xf5
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0xf8
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r3
	pop	ar2
	pop	ar1
	pop	ar0
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
	pop	bits
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	inc	r5
	sjmp	00165$
00253$:
	mov	a,_bp
	add	a,#0x1a
	mov	r0,a
	mov	@r0,ar5
00169$:
;	printf_large.c:406: if (left && reqWidth>minWidth)
	jnb	b0,00174$
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	clr	c
	mov	a,r6
	subb	a,@r0
	jnc	00174$
;	printf_large.c:408: while (reqWidth-->minWidth)
	mov	a,_bp
	add	a,#0x1a
	mov	r0,a
	mov	ar7,@r0
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	ar5,@r0
00170$:
	mov	ar4,r5
	dec	r5
	clr	c
	mov	a,r6
	subb	a,r4
	jnc	00254$
;	printf_large.c:410: OUTPUT_CHAR(' ', p);
	push	ar7
	push	ar6
	push	ar5
	mov	a,_bp
	add	a,#0xf5
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0xf8
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,#0x20
	pop	ar2
	pop	ar1
	pop	ar0
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
	pop	ar5
	pop	ar6
	pop	ar7
	inc	r7
	sjmp	00170$
00254$:
	mov	a,_bp
	add	a,#0x1a
	mov	r0,a
	mov	@r0,ar7
00174$:
;	printf_large.c:414: if (exp != -128)
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	cjne	@r0,#0x80,00383$
	ljmp	00179$
00383$:
;	printf_large.c:416: OUTPUT_CHAR ('e', p);
	mov	a,_bp
	add	a,#0xf5
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0xf8
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,#0x65
	pop	ar2
	pop	ar1
	pop	ar0
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
	mov	a,_bp
	add	a,#0x1a
	mov	r0,a
	inc	@r0
;	printf_large.c:417: if (exp<0)
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	a,@r0
	jnb	acc.7,00177$
;	printf_large.c:419: OUTPUT_CHAR ('-', p);
	mov	a,_bp
	add	a,#0xf5
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0xf8
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,#0x2D
	pop	ar2
	pop	ar1
	pop	ar0
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
	mov	a,_bp
	add	a,#0x1a
	mov	r0,a
	inc	@r0
;	printf_large.c:420: exp = -exp;
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	clr	c
	clr	a
	subb	a,@r0
	mov	@r0,a
00177$:
;	printf_large.c:422: OUTPUT_CHAR ('0'+exp/10, p);
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	clr	F0
	mov	b,#0x0a
	mov	a,@r0
	jnb	acc.7,00385$
	cpl	F0
	cpl	a
	inc	a
00385$:
	div	ab
	jnb	F0,00386$
	cpl	a
	inc	a
00386$:
	add	a,#0x30
	mov	r7,a
	mov	a,_bp
	add	a,#0xf5
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0xf8
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r7
	pop	ar2
	pop	ar1
	pop	ar0
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
	mov	a,_bp
	add	a,#0x1a
	mov	r0,a
	inc	@r0
;	printf_large.c:423: OUTPUT_CHAR ('0'+exp%10, p);
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	b,#0x0a
	mov	a,@r0
	clr	F0
	jnb	acc.7,00387$
	setb	F0
	cpl	a
	inc	a
00387$:
	div	ab
	mov	a,b
	jnb	F0,00388$
	cpl	a
	inc	a
00388$:
	add	a,#0x30
	mov	r7,a
	mov	a,_bp
	add	a,#0xf5
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0xf8
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r7
	pop	ar2
	pop	ar1
	pop	ar0
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
	mov	a,_bp
	add	a,#0x1a
	mov	r0,a
	inc	@r0
00179$:
;	printf_large.c:426: return charsOutputted;
	mov	a,_bp
	add	a,#0x1a
	mov	r0,a
	mov	dpl,@r0
	mov	sp,_bp
	pop	_bp
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function '_print_format'
;------------------------------------------------------------
;pvoid                     Allocated to stack - _bp -6
;format                    Allocated to stack - _bp -9
;ap                        Allocated to stack - _bp -10
;pfn                       Allocated to stack - _bp +1
;left_justify              Allocated to registers b0 
;zero_padding              Allocated to registers b1 
;prefix_sign               Allocated to registers b2 
;prefix_space              Allocated to registers b3 
;signed_argument           Allocated to registers b4 
;char_argument             Allocated to registers b5 
;long_argument             Allocated to registers b6 
;float_argument            Allocated to registers b7 
;lower_case                Allocated to stack - _bp +21
;value                     Allocated to stack - _bp +16
;charsOutputted            Allocated to stack - _bp +11
;lsd                       Allocated to registers b5 
;radix                     Allocated to stack - _bp +13
;width                     Allocated to stack - _bp +14
;decimals                  Allocated to stack - _bp +15
;length                    Allocated to registers r3 
;c                         Allocated to registers r4 
;memtype                   Allocated to registers r7 
;store                     Allocated to stack - _bp +22
;pstore                    Allocated to registers r2 
;sloc0                     Allocated to stack - _bp +4
;sloc1                     Allocated to stack - _bp +5
;sloc2                     Allocated to stack - _bp +38
;sloc3                     Allocated to stack - _bp +8
;sloc4                     Allocated to stack - _bp +9
;sloc5                     Allocated to stack - _bp +10
;sloc6                     Allocated to stack - _bp +11
;------------------------------------------------------------
;	printf_large.c:434: _print_format (pfn_outputchar pfn, void* pvoid, const char *format, va_list ap)
;	-----------------------------------------
;	 function _print_format
;	-----------------------------------------
__print_format:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x18
	mov	sp,a
;	printf_large.c:466: charsOutputted = 0;
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
;	printf_large.c:475: while( c=*format++ )
	mov	a,_bp
	add	a,#0x10
	mov	r1,a
	mov	a,_bp
	add	a,#0x16
	xch	a,r0
	mov	a,_bp
	add	a,#0x08
	xch	a,r0
	add	a,#0x05
	mov	@r0,a
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	a,_bp
	add	a,#0x10
	mov	@r0,a
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	push	ar1
	mov	a,_bp
	add	a,#0x04
	mov	r1,a
	mov	a,#0x04
	add	a,@r0
	mov	@r1,a
	pop	ar1
00240$:
	mov	a,_bp
	add	a,#0xf7
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	mov	a,_bp
	add	a,#0xf7
	mov	r0,a
	mov	a,#0x01
	add	a,r2
	mov	@r0,a
	clr	a
	addc	a,r6
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar7
	mov	a,r5
	mov	r4,a
	jnz	00491$
	ljmp	00242$
00491$:
;	printf_large.c:477: if ( c=='%' )
	cjne	r4,#0x25,00492$
	sjmp	00493$
00492$:
	ljmp	00238$
00493$:
;	printf_large.c:479: left_justify    = 0;
	clr	b0
;	printf_large.c:480: zero_padding    = 0;
	clr	b1
;	printf_large.c:481: prefix_sign     = 0;
	clr	b2
;	printf_large.c:482: prefix_space    = 0;
	clr	b3
;	printf_large.c:483: signed_argument = 0;
	clr	b4
;	printf_large.c:484: char_argument   = 0;
	clr	b5
;	printf_large.c:485: long_argument   = 0;
	clr	b6
;	printf_large.c:486: float_argument  = 0;
	clr	b7
;	printf_large.c:487: radix           = 0;
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	@r0,#0x00
;	printf_large.c:488: width           = 0;
	mov	a,_bp
	add	a,#0x0e
	mov	r0,a
	mov	@r0,#0x00
;	printf_large.c:489: decimals        = -1;
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	mov	@r0,#0xFF
;	printf_large.c:491: get_conversion_spec:
	mov	a,_bp
	add	a,#0xf7
	mov	r0,a
	mov	ar7,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar5,@r0
00101$:
;	printf_large.c:493: c = *format++;
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	mov	r7,dpl
	mov	r6,dph
	mov	a,_bp
	add	a,#0xf7
	mov	r0,a
	mov	@r0,ar7
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar5
;	printf_large.c:495: if (c=='%')
	cjne	r4,#0x25,00103$
;	printf_large.c:497: OUTPUT_CHAR(c, p);
	push	ar1
	mov	a,_bp
	add	a,#0xfa
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
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r4
	pop	ar2
	pop	ar1
	pop	ar0
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
	pop	ar1
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00496$
	inc	r0
	inc	@r0
00496$:
;	printf_large.c:498: continue;
	ljmp	00240$
00103$:
;	printf_large.c:501: if (isdigit(c))
	mov	ar3,r4
	cjne	r3,#0x30,00497$
00497$:
	jc	00110$
	mov	a,r3
	add	a,#0xff - 0x39
	jc	00110$
;	printf_large.c:503: if (decimals==-1)
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	cjne	@r0,#0xFF,00107$
;	printf_large.c:505: width = 10*width + c - '0';
	mov	a,_bp
	add	a,#0x0e
	mov	r0,a
	mov	a,@r0
	mov	b,#0x0A
	mul	ab
	add	a,r4
	mov	r2,a
	mov	a,_bp
	add	a,#0x0e
	mov	r0,a
	mov	a,r2
	add	a,#0xD0
	mov	@r0,a
;	printf_large.c:506: if (width == 0)
	mov	a,_bp
	add	a,#0x0e
	mov	r0,a
	mov	a,@r0
	jz	00502$
	ljmp	00101$
00502$:
;	printf_large.c:509: zero_padding = 1;
	setb	b1
	ljmp	00101$
00107$:
;	printf_large.c:514: decimals = 10*decimals + c - '0';
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	mov	a,@r0
	mov	b,#0x0A
	mul	ab
	add	a,r4
	mov	r2,a
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	mov	a,r2
	add	a,#0xD0
	mov	@r0,a
;	printf_large.c:516: goto get_conversion_spec;
	ljmp	00101$
00110$:
;	printf_large.c:519: if (c=='.')
	cjne	r4,#0x2E,00115$
;	printf_large.c:521: if (decimals==-1)
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	cjne	@r0,#0xFF,00505$
	sjmp	00506$
00505$:
	ljmp	00101$
00506$:
;	printf_large.c:522: decimals=0;
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	mov	@r0,#0x00
;	printf_large.c:525: goto get_conversion_spec;
	ljmp	00101$
00115$:
;	printf_large.c:528: if (islower(c))
	mov	ar3,r4
	cjne	r3,#0x61,00507$
00507$:
	jc	00117$
	mov	a,r3
	add	a,#0xff - 0x7A
	jc	00117$
;	printf_large.c:530: c = toupper(c);
	anl	ar4,#0xDF
;	printf_large.c:531: lower_case = 1;
	mov	a,_bp
	add	a,#0x15
	mov	r0,a
	mov	@r0,#0x01
	sjmp	00118$
00117$:
;	printf_large.c:534: lower_case = 0;
	mov	a,_bp
	add	a,#0x15
	mov	r0,a
	mov	@r0,#0x00
00118$:
;	printf_large.c:536: switch( c )
	cjne	r4,#0x20,00510$
	sjmp	00122$
00510$:
	cjne	r4,#0x2B,00511$
	sjmp	00121$
00511$:
	cjne	r4,#0x2D,00512$
	sjmp	00120$
00512$:
	cjne	r4,#0x42,00513$
	sjmp	00123$
00513$:
	cjne	r4,#0x43,00514$
	sjmp	00129$
00514$:
	cjne	r4,#0x44,00515$
	ljmp	00166$
00515$:
	cjne	r4,#0x46,00516$
	ljmp	00170$
00516$:
	cjne	r4,#0x48,00517$
	ljmp	00101$
00517$:
	cjne	r4,#0x49,00518$
	ljmp	00166$
00518$:
	cjne	r4,#0x4A,00519$
	ljmp	00101$
00519$:
	cjne	r4,#0x4C,00520$
	sjmp	00128$
00520$:
	cjne	r4,#0x4F,00521$
	ljmp	00167$
00521$:
	cjne	r4,#0x50,00522$
	ljmp	00152$
00522$:
	cjne	r4,#0x53,00523$
	ljmp	00133$
00523$:
	cjne	r4,#0x54,00524$
	ljmp	00101$
00524$:
	cjne	r4,#0x55,00525$
	ljmp	00168$
00525$:
	cjne	r4,#0x58,00526$
	ljmp	00169$
00526$:
	cjne	r4,#0x5A,00527$
	ljmp	00101$
00527$:
	ljmp	00171$
;	printf_large.c:538: case '-':
00120$:
;	printf_large.c:539: left_justify = 1;
	setb	b0
;	printf_large.c:540: goto get_conversion_spec;
	ljmp	00101$
;	printf_large.c:541: case '+':
00121$:
;	printf_large.c:542: prefix_sign = 1;
	setb	b2
;	printf_large.c:543: goto get_conversion_spec;
	ljmp	00101$
;	printf_large.c:544: case ' ':
00122$:
;	printf_large.c:545: prefix_space = 1;
	setb	b3
;	printf_large.c:546: goto get_conversion_spec;
	ljmp	00101$
;	printf_large.c:547: case 'B': /* byte */
00123$:
;	printf_large.c:548: char_argument = 1;
	setb	b5
;	printf_large.c:549: goto get_conversion_spec;
	ljmp	00101$
;	printf_large.c:556: case 'L': /* long */
00128$:
;	printf_large.c:557: long_argument = 1;
	setb	b6
;	printf_large.c:558: goto get_conversion_spec;
	ljmp	00101$
;	printf_large.c:560: case 'C':
00129$:
;	printf_large.c:561: if( char_argument )
	jnb	b5,00131$
;	printf_large.c:562: c = va_arg(ap,char);
	mov	a,_bp
	add	a,#0xf6
	mov	r0,a
	mov	a,@r0
	dec	a
	mov	r2,a
	mov	a,_bp
	add	a,#0xf6
	mov	r0,a
	mov	@r0,ar2
	mov	r0,ar2
	mov	ar4,@r0
	sjmp	00132$
00131$:
;	printf_large.c:564: c = va_arg(ap,int);
	mov	a,_bp
	add	a,#0xf6
	mov	r0,a
	mov	a,@r0
	add	a,#0xFE
	mov	r2,a
	mov	a,_bp
	add	a,#0xf6
	mov	r0,a
	mov	@r0,ar2
	mov	r0,ar2
	mov	ar2,@r0
	inc	r0
	mov	ar7,@r0
	mov	ar4,r2
;	printf_large.c:872: return charsOutputted;
;	printf_large.c:564: c = va_arg(ap,int);
00132$:
;	printf_large.c:565: OUTPUT_CHAR( c, p );
	push	ar1
	push	bits
	mov	a,_bp
	add	a,#0xfa
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
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r4
	pop	ar2
	pop	ar1
	pop	ar0
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
	pop	bits
	pop	ar1
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00529$
	inc	r0
	inc	@r0
00529$:
;	printf_large.c:566: break;
	ljmp	00172$
;	printf_large.c:568: case 'S':
00133$:
;	printf_large.c:569: PTR = va_arg(ap,ptr_t);
	mov	a,_bp
	add	a,#0x10
	mov	r7,a
	mov	a,_bp
	add	a,#0xf6
	mov	r0,a
	mov	a,@r0
	add	a,#0xFD
	mov	r2,a
	mov	a,_bp
	add	a,#0xf6
	mov	r0,a
	mov	@r0,ar2
	mov	r0,ar2
	mov	ar2,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	mov	r0,ar7
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
;	printf_large.c:582: length = strlen(PTR);
	mov	dpl,r2
	mov	dph,r5
	mov	b,r6
	push	ar7
	push	ar1
	push	bits
	mov	r0,#_strlen
	mov	r1,#(_strlen >> 8)
	mov	r2,#(_strlen >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	pop	bits
	pop	ar1
	pop	ar7
	mov	ar3,r5
;	printf_large.c:584: if ( decimals == -1 )
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	cjne	@r0,#0xFF,00135$
;	printf_large.c:586: decimals = length;
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	mov	@r0,ar3
00135$:
;	printf_large.c:588: if ( ( !left_justify ) && (length < width) )
	jnb	b0,00532$
	ljmp	00286$
00532$:
	mov	a,_bp
	add	a,#0x0e
	mov	r0,a
	clr	c
	mov	a,r3
	subb	a,@r0
	jc	00533$
	ljmp	00286$
00533$:
;	printf_large.c:590: width -= length;
	mov	a,_bp
	add	a,#0x0e
	mov	r0,a
	mov	a,@r0
	clr	c
	subb	a,r3
	mov	@r0,a
;	printf_large.c:591: while( width-- != 0 )
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	mov	a,_bp
	add	a,#0x0e
	mov	r0,a
	mov	ar4,@r0
00136$:
	mov	ar2,r4
	dec	r4
	mov	a,r2
	jz	00324$
;	printf_large.c:593: OUTPUT_CHAR( ' ', p );
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar1
	push	bits
	mov	a,_bp
	add	a,#0xfa
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
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,#0x20
	pop	ar2
	pop	ar1
	pop	ar0
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
	pop	bits
	pop	ar1
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	inc	r5
;	printf_large.c:597: while ( (c = *PTR)  && (decimals-- > 0))
	cjne	r5,#0x00,00136$
	inc	r6
	sjmp	00136$
00324$:
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	mov	a,_bp
	add	a,#0x0e
	mov	r0,a
	mov	@r0,ar4
00286$:
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	push	ar1
	mov	a,_bp
	add	a,#0x0a
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	a,_bp
	add	a,#0x05
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	pop	ar1
00143$:
	push	ar1
	mov	r0,ar7
	mov	ar2,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	mov	dpl,r2
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r2,a
	mov	r4,a
	pop	ar1
	mov	a,r2
	jnz	00536$
	ljmp	00325$
00536$:
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	ar6,@r0
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	dec	@r0
	clr	c
	mov	a,#(0x00 ^ 0x80)
	mov	b,r6
	xrl	b,#0x80
	subb	a,b
	jnc	00325$
;	printf_large.c:599: OUTPUT_CHAR( c, p );
	push	ar7
	push	ar3
	push	ar1
	push	bits
	mov	a,_bp
	add	a,#0xfa
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
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r4
	pop	ar2
	pop	ar1
	pop	ar0
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
	pop	bits
	pop	ar1
	pop	ar3
	pop	ar7
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00538$
	inc	r0
	inc	@r0
00538$:
;	printf_large.c:600: PTR++;
	mov	r0,ar7
	mov	ar2,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r2
	cjne	r2,#0x00,00539$
	inc	r5
00539$:
	mov	r0,ar7
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	ljmp	00143$
00325$:
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	push	ar1
	mov	a,_bp
	add	a,#0x0f
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,_bp
	add	a,#0x0b
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	pop	ar1
;	printf_large.c:603: if ( left_justify && (length < width))
	jb	b0,00540$
	ljmp	00172$
00540$:
	mov	a,_bp
	add	a,#0x0e
	mov	r0,a
	clr	c
	mov	a,r3
	subb	a,@r0
	jc	00541$
	ljmp	00172$
00541$:
;	printf_large.c:605: width -= length;
	mov	a,_bp
	add	a,#0x0e
	mov	r0,a
	mov	a,@r0
	clr	c
	subb	a,r3
	mov	@r0,a
;	printf_large.c:606: while( width-- != 0 )
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	a,_bp
	add	a,#0x0e
	mov	r0,a
	mov	ar5,@r0
00146$:
	mov	ar2,r5
	dec	r5
	mov	a,r2
	jnz	00542$
	ljmp	00326$
00542$:
;	printf_large.c:608: OUTPUT_CHAR( ' ', p );
	push	ar7
	push	ar6
	push	ar5
	push	ar1
	push	bits
	mov	a,_bp
	add	a,#0xfa
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
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,#0x20
	pop	ar2
	pop	ar1
	pop	ar0
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
	pop	bits
	pop	ar1
	pop	ar5
	pop	ar6
	pop	ar7
	inc	r6
;	printf_large.c:613: case 'P':
	cjne	r6,#0x00,00146$
	inc	r7
	sjmp	00146$
00152$:
;	printf_large.c:614: PTR = va_arg(ap,ptr_t);
	push	ar1
	mov	a,_bp
	add	a,#0x10
	mov	r0,a
	push	ar0
	mov	a,_bp
	add	a,#0xf6
	mov	r0,a
	mov	a,@r0
	add	a,#0xFD
	mov	r2,a
	mov	a,_bp
	add	a,#0xf6
	mov	r0,a
	mov	@r0,ar2
	mov	r0,ar2
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	pop	ar0
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	dec	r0
	dec	r0
;	printf_large.c:637: unsigned char memtype = value.byte[2];
	mov	a,_bp
	add	a,#0x10
	mov	r6,a
	add	a,#0x02
	mov	r1,a
	mov	ar7,@r1
;	printf_large.c:638: if (memtype >= 0x80)
	cjne	r7,#0x80,00544$
00544$:
	pop	ar1
	jc	00160$
;	printf_large.c:639: c = 'C';
	mov	r4,#0x43
	sjmp	00161$
00160$:
;	printf_large.c:640: else if (memtype >= 0x60)
	cjne	r7,#0x60,00546$
00546$:
	jc	00157$
;	printf_large.c:641: c = 'P';
	mov	r4,#0x50
	sjmp	00161$
00157$:
;	printf_large.c:642: else if (memtype >= 0x40)
	cjne	r7,#0x40,00548$
00548$:
	jc	00154$
;	printf_large.c:643: c = 'I';
	mov	r4,#0x49
	sjmp	00161$
00154$:
;	printf_large.c:645: c = 'X';
	mov	r4,#0x58
00161$:
;	printf_large.c:647: OUTPUT_CHAR(c, p);
	push	ar6
	push	ar4
	push	ar1
	push	bits
	mov	a,_bp
	add	a,#0xfa
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
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r4
	pop	ar2
	pop	ar1
	pop	ar0
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
	pop	bits
	pop	ar1
	pop	ar4
	pop	ar6
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00550$
	inc	r0
	inc	@r0
00550$:
;	printf_large.c:648: OUTPUT_CHAR(':', p);
	push	ar6
	push	ar4
	push	ar1
	push	bits
	mov	a,_bp
	add	a,#0xfa
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
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,#0x3A
	pop	ar2
	pop	ar1
	pop	ar0
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
	pop	bits
	pop	ar1
	pop	ar4
	pop	ar6
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00551$
	inc	r0
	inc	@r0
00551$:
;	printf_large.c:649: OUTPUT_CHAR('0', p);
	push	ar6
	push	ar4
	push	ar1
	push	bits
	mov	a,_bp
	add	a,#0xfa
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
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,#0x30
	pop	ar2
	pop	ar1
	pop	ar0
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
	pop	bits
	pop	ar1
	pop	ar4
	pop	ar6
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00552$
	inc	r0
	inc	@r0
00552$:
;	printf_large.c:650: OUTPUT_CHAR('x', p);
	push	ar6
	push	ar4
	push	ar1
	push	bits
	mov	a,_bp
	add	a,#0xfa
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
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,#0x78
	pop	ar2
	pop	ar1
	pop	ar0
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
	pop	bits
	pop	ar1
	pop	ar4
	pop	ar6
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00553$
	inc	r0
	inc	@r0
00553$:
;	printf_large.c:651: if ((c != 'I' /* idata */) &&
	cjne	r4,#0x49,00554$
	sjmp	00163$
00554$:
;	printf_large.c:652: (c != 'P' /* pdata */))
	cjne	r4,#0x50,00555$
	sjmp	00163$
00555$:
;	printf_large.c:654: OUTPUT_2DIGITS( value.byte[1] );
	mov	a,r6
	inc	a
	mov	r0,a
	mov	ar4,@r0
	push	ar1
	push	bits
	mov	a,_bp
	add	a,#0xfa
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
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0x15
	mov	r0,a
	mov	a,@r0
	add	a,#0xff
	mov	b[0],c
	mov	bits,b
	mov	dpl,r4
	mov	r0,#_output_2digits
	mov	r1,#(_output_2digits >> 8)
	mov	r2,#(_output_2digits >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	pop	bits
	pop	ar1
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	a,#0x02
	add	a,@r0
	mov	@r0,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	@r0,a
00163$:
;	printf_large.c:656: OUTPUT_2DIGITS( value.byte[0] );
	mov	ar4,@r1
	push	ar1
	push	bits
	mov	a,_bp
	add	a,#0xfa
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
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0x15
	mov	r0,a
	mov	a,@r0
	add	a,#0xff
	mov	b[0],c
	mov	bits,b
	mov	dpl,r4
	mov	r0,#_output_2digits
	mov	r1,#(_output_2digits >> 8)
	mov	r2,#(_output_2digits >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	pop	bits
	pop	ar1
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	a,#0x02
	add	a,@r0
	mov	@r0,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	@r0,a
;	printf_large.c:663: break;
	ljmp	00172$
;	printf_large.c:666: case 'I':
00166$:
;	printf_large.c:667: signed_argument = 1;
	setb	b4
;	printf_large.c:668: radix = 10;
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	@r0,#0x0A
;	printf_large.c:669: break;
;	printf_large.c:671: case 'O':
	sjmp	00172$
00167$:
;	printf_large.c:672: radix = 8;
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	@r0,#0x08
;	printf_large.c:673: break;
;	printf_large.c:675: case 'U':
	sjmp	00172$
00168$:
;	printf_large.c:676: radix = 10;
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	@r0,#0x0A
;	printf_large.c:677: break;
;	printf_large.c:679: case 'X':
	sjmp	00172$
00169$:
;	printf_large.c:680: radix = 16;
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	@r0,#0x10
;	printf_large.c:681: break;
;	printf_large.c:683: case 'F':
	sjmp	00172$
00170$:
;	printf_large.c:684: float_argument=1;
	setb	b7
;	printf_large.c:685: break;
;	printf_large.c:687: default:
	sjmp	00172$
00171$:
;	printf_large.c:689: OUTPUT_CHAR( c, p );
	push	ar1
	push	bits
	mov	a,_bp
	add	a,#0xfa
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
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r4
	pop	ar2
	pop	ar1
	pop	ar0
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
	pop	bits
	pop	ar1
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00556$
	inc	r0
	inc	@r0
00556$:
;	printf_large.c:872: return charsOutputted;
;	printf_large.c:691: }
	sjmp	00172$
00326$:
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	mov	a,_bp
	add	a,#0x0e
	mov	r0,a
	mov	@r0,ar5
00172$:
;	printf_large.c:693: if (float_argument)
	jb	b7,00557$
	ljmp	00235$
00557$:
;	printf_large.c:695: value.f = va_arg(ap, float);
	mov	a,_bp
	add	a,#0x10
	mov	r0,a
	push	ar0
	mov	a,_bp
	add	a,#0xf6
	mov	r0,a
	mov	a,@r0
	add	a,#0xFC
	mov	r7,a
	mov	a,_bp
	add	a,#0xf6
	mov	r0,a
	mov	@r0,ar7
	mov	r0,ar7
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	pop	ar0
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	dec	r0
	dec	r0
	dec	r0
;	printf_large.c:710: charsOutputted += OUTPUT_FLOAT(value.f, width, decimals, left_justify,
	mov	a,@r0
	inc	r0
	mov	a,@r0
	inc	r0
	mov	a,@r0
	inc	r0
	mov	a,@r0
	dec	r0
	dec	r0
	dec	r0
	push	ar1
	mov	a,_bp
	add	a,#0xfa
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
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0x0e
	mov	r0,a
	mov	a,@r0
	push	acc
	mov	c,b0
	mov	b[0],c
	mov	c,b1
	mov	b[1],c
	mov	c,b2
	mov	b[2],c
	mov	c,b3
	mov	b[3],c
	mov	bits,b
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	mov	r0,#_output_float
	mov	r1,#(_output_float >> 8)
	mov	r2,#(_output_float >> 16)
	lcall	__sdcc_banked_call
	mov	r7,dpl
	mov	a,sp
	add	a,#0xf8
	mov	sp,a
	pop	ar1
	mov	r6,#0x00
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	a,r7
	add	a,@r0
	mov	@r0,a
	mov	a,r6
	inc	r0
	addc	a,@r0
	mov	@r0,a
	ljmp	00240$
00235$:
;	printf_large.c:718: else if (radix != 0)
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	a,@r0
	jnz	00558$
	ljmp	00240$
00558$:
;	printf_large.c:723: unsigned char MEM_SPACE_BUF_PP *pstore = &store[5];
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	ar2,@r0
;	printf_large.c:726: if (char_argument)
	jnb	b5,00181$
;	printf_large.c:728: value.l = va_arg(ap, char);
	mov	a,_bp
	add	a,#0x10
	mov	r0,a
	push	ar0
	mov	a,_bp
	add	a,#0xf6
	mov	r0,a
	mov	a,@r0
	dec	a
	mov	r7,a
	mov	a,_bp
	add	a,#0xf6
	mov	r0,a
	mov	@r0,ar7
	mov	r0,ar7
	mov	ar7,@r0
	pop	ar0
	mov	a,r7
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	r5,a
	mov	r4,a
	mov	@r0,ar7
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar4
	dec	r0
	dec	r0
	dec	r0
;	printf_large.c:729: if (!signed_argument)
	jnb	b4,00560$
	ljmp	00182$
00560$:
;	printf_large.c:731: value.l &= 0xFF;
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	dec	r0
	dec	r0
	dec	r0
	mov	r5,#0x00
	mov	r6,#0x00
	mov	r7,#0x00
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	dec	r0
	dec	r0
	dec	r0
	ljmp	00182$
00181$:
;	printf_large.c:734: else if (long_argument)
	jnb	b6,00178$
;	printf_large.c:736: value.l = va_arg(ap, long);
	mov	a,_bp
	add	a,#0x10
	mov	r0,a
	push	ar0
	mov	a,_bp
	add	a,#0xf6
	mov	r0,a
	mov	a,@r0
	add	a,#0xFC
	mov	r7,a
	mov	a,_bp
	add	a,#0xf6
	mov	r0,a
	mov	@r0,ar7
	mov	r0,ar7
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	pop	ar0
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	dec	r0
	dec	r0
	dec	r0
	sjmp	00182$
00178$:
;	printf_large.c:740: value.l = va_arg(ap, int);
	mov	a,_bp
	add	a,#0x10
	mov	r0,a
	push	ar0
	mov	a,_bp
	add	a,#0xf6
	mov	r0,a
	mov	a,@r0
	add	a,#0xFE
	mov	r7,a
	mov	a,_bp
	add	a,#0xf6
	mov	r0,a
	mov	@r0,ar7
	mov	r0,ar7
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	pop	ar0
	mov	a,r7
	rlc	a
	subb	a,acc
	mov	r5,a
	mov	r4,a
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar4
	dec	r0
	dec	r0
	dec	r0
;	printf_large.c:741: if (!signed_argument)
	jb	b4,00182$
;	printf_large.c:743: value.l &= 0xFFFF;
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	dec	r0
	dec	r0
	dec	r0
	mov	r6,#0x00
	mov	r7,#0x00
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	dec	r0
	dec	r0
	dec	r0
00182$:
;	printf_large.c:747: if ( signed_argument )
	jnb	b4,00187$
;	printf_large.c:749: if (value.l < 0)
	mov	a,_bp
	add	a,#0x10
	mov	r0,a
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	dec	r0
	dec	r0
	dec	r0
	mov	a,r7
	jnb	acc.7,00184$
;	printf_large.c:750: value.l = -value.l;
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	dec	r0
	dec	r0
	dec	r0
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
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	dec	r0
	dec	r0
	dec	r0
	sjmp	00187$
00184$:
;	printf_large.c:752: signed_argument = 0;
	clr	b4
00187$:
;	printf_large.c:756: lsd = 1;
	setb	b5
;	printf_large.c:758: do {
	mov	ar0,r2
	mov	r7,#0x00
00191$:
;	printf_large.c:759: value.byte[4] = 0;
	mov	a,_bp
	add	a,#0x10
	add	a,#0x04
	push	ar0
	mov	r0,a
	mov	@r0,#0x00
;	printf_large.c:761: calculate_digit(&value, radix);
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	ar6,@r0
	pop	ar0
	push	ar7
	push	ar1
	push	ar0
	push	bits
	mov	b,ar0
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	a,@r0
	push	acc
	mov	dpl,r6
	mov	r0,#_calculate_digit
	mov	r1,#(_calculate_digit >> 8)
	mov	r2,#(_calculate_digit >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	pop	bits
	pop	ar0
	pop	ar1
	pop	ar7
;	printf_large.c:765: if (!lsd)
	jb	b5,00189$
;	printf_large.c:767: *pstore = (value.byte[4] << 4) | (value.byte[4] >> 4) | *pstore;
	push	ar0
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	ar0,@r0
	mov	ar6,@r0
	pop	ar0
	mov	a,r6
	swap	a
	mov	r6,a
	mov	a,@r0
	mov	r5,a
	orl	ar6,a
	mov	@r0,ar6
;	printf_large.c:768: pstore--;
	dec	r0
	sjmp	00190$
00189$:
;	printf_large.c:772: *pstore = value.byte[4];
	push	ar0
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	ar0,@r0
	mov	ar6,@r0
	pop	ar0
	mov	@r0,ar6
00190$:
;	printf_large.c:774: length++;
	inc	r7
;	printf_large.c:775: lsd = !lsd;
	cpl	b5
;	printf_large.c:776: } while( value.ul );
	push	ar0
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	ar0,@r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	dec	r0
	dec	r0
	dec	r0
	pop	ar0
	mov	a,r3
	orl	a,r4
	orl	a,r5
	orl	a,r6
	jz	00566$
	ljmp	00191$
00566$:
;	printf_large.c:778: if (width == 0)
	mov	ar2,r0
	mov	ar3,r7
	mov	a,_bp
	add	a,#0x0e
	mov	r0,a
	mov	a,@r0
	jnz	00195$
;	printf_large.c:783: width = 1;
	mov	a,_bp
	add	a,#0x0e
	mov	r0,a
	mov	@r0,#0x01
00195$:
;	printf_large.c:787: if (!zero_padding && !left_justify)
	jnb	b1,00568$
	ljmp	00200$
00568$:
	jnb	b0,00569$
	ljmp	00200$
00569$:
;	printf_large.c:789: while ( width > (unsigned char) (length+1) )
	mov	a,r3
	inc	a
	mov	r7,a
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	mov	a,_bp
	add	a,#0x0e
	mov	r0,a
	mov	ar4,@r0
00196$:
	clr	c
	mov	a,r7
	subb	a,r4
	jnc	00328$
;	printf_large.c:791: OUTPUT_CHAR( ' ', p );
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	bits
	mov	a,_bp
	add	a,#0xfa
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
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,#0x20
	pop	ar2
	pop	ar1
	pop	ar0
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
	pop	bits
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	inc	r5
	cjne	r5,#0x00,00571$
	inc	r6
00571$:
;	printf_large.c:792: width--;
	dec	r4
	sjmp	00196$
00328$:
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	mov	a,_bp
	add	a,#0x0e
	mov	r0,a
	mov	@r0,ar4
00200$:
;	printf_large.c:796: if (signed_argument) // this now means the original value was negative
	jnb	b4,00210$
;	printf_large.c:798: OUTPUT_CHAR( '-', p );
	push	ar3
	push	ar2
	push	ar1
	push	bits
	mov	a,_bp
	add	a,#0xfa
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
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,#0x2D
	pop	ar2
	pop	ar1
	pop	ar0
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
	pop	bits
	pop	ar1
	pop	ar2
	pop	ar3
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00573$
	inc	r0
	inc	@r0
00573$:
;	printf_large.c:800: width--;
	mov	a,_bp
	add	a,#0x0e
	mov	r0,a
	dec	@r0
	ljmp	00211$
00210$:
;	printf_large.c:802: else if (length != 0)
	mov	a,r3
	jnz	00574$
	ljmp	00211$
00574$:
;	printf_large.c:805: if (prefix_sign)
	jnb	b2,00205$
;	printf_large.c:807: OUTPUT_CHAR( '+', p );
	push	ar3
	push	ar2
	push	ar1
	push	bits
	mov	a,_bp
	add	a,#0xfa
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
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,#0x2B
	pop	ar2
	pop	ar1
	pop	ar0
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
	pop	bits
	pop	ar1
	pop	ar2
	pop	ar3
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00576$
	inc	r0
	inc	@r0
00576$:
;	printf_large.c:809: width--;
	mov	a,_bp
	add	a,#0x0e
	mov	r0,a
	dec	@r0
	sjmp	00211$
00205$:
;	printf_large.c:811: else if (prefix_space)
	jnb	b3,00211$
;	printf_large.c:813: OUTPUT_CHAR( ' ', p );
	push	ar3
	push	ar2
	push	ar1
	push	bits
	mov	a,_bp
	add	a,#0xfa
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
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,#0x20
	pop	ar2
	pop	ar1
	pop	ar0
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
	pop	bits
	pop	ar1
	pop	ar2
	pop	ar3
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00578$
	inc	r0
	inc	@r0
00578$:
;	printf_large.c:815: width--;
	mov	a,_bp
	add	a,#0x0e
	mov	r0,a
	dec	@r0
00211$:
;	printf_large.c:820: if (!left_justify)
	jb	b0,00219$
;	printf_large.c:822: while ( width-- > length )
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	a,_bp
	add	a,#0x0e
	mov	r0,a
	mov	ar5,@r0
00212$:
	mov	ar4,r5
	dec	r5
	clr	c
	mov	a,r3
	subb	a,r4
	jnc	00329$
;	printf_large.c:824: OUTPUT_CHAR( zero_padding ? '0' : ' ', p );
	jnb	b1,00245$
	mov	r4,#0x30
	sjmp	00246$
00245$:
	mov	r4,#0x20
00246$:
	push	ar7
	push	ar6
	push	ar5
	push	ar3
	push	ar2
	push	ar1
	push	bits
	mov	a,_bp
	add	a,#0xfa
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
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r4
	pop	ar2
	pop	ar1
	pop	ar0
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
	pop	bits
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar5
	pop	ar6
	pop	ar7
	inc	r6
	cjne	r6,#0x00,00212$
	inc	r7
	sjmp	00212$
00219$:
;	printf_large.c:830: if (width > length)
	mov	a,_bp
	add	a,#0x0e
	mov	r0,a
	clr	c
	mov	a,r3
	subb	a,@r0
	jnc	00216$
;	printf_large.c:831: width -= length;
	mov	a,_bp
	add	a,#0x0e
	mov	r0,a
	mov	a,@r0
	clr	c
	subb	a,r3
	mov	@r0,a
	sjmp	00321$
00216$:
;	printf_large.c:833: width = 0;
	mov	a,_bp
	add	a,#0x0e
	mov	r0,a
	mov	@r0,#0x00
;	printf_large.c:872: return charsOutputted;
;	printf_large.c:837: while( length-- )
	sjmp	00321$
00329$:
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	mov	a,_bp
	add	a,#0x0e
	mov	r0,a
	mov	@r0,ar5
00321$:
	mov	ar0,r2
	push	ar0
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	pop	ar0
	mov	ar5,r3
00224$:
	mov	ar4,r5
	dec	r5
	mov	a,r4
	jnz	00584$
	ljmp	00330$
00584$:
;	printf_large.c:839: lsd = !lsd;
	cpl	b5
;	printf_large.c:840: if (!lsd)
	jb	b5,00222$
;	printf_large.c:842: pstore++;
	inc	r0
;	printf_large.c:843: value.byte[4] = *pstore >> 4;
	mov	a,@r0
	swap	a
	anl	a,#0x0F
	mov	r4,a
	push	ar0
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	ar0,@r0
	mov	@r0,ar4
	pop	ar0
	sjmp	00223$
00222$:
;	printf_large.c:847: value.byte[4] = *pstore & 0x0F;
	mov	ar4,@r0
	mov	a,#0x0F
	anl	a,r4
	push	ar0
	xch	a,r0
	mov	a,_bp
	add	a,#0x04
	xch	a,r0
	mov	ar0,@r0
	mov	@r0,a
	pop	ar0
00223$:
;	printf_large.c:850: output_digit( value.byte[4], lower_case, output_char, p );
	push	ar0
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	ar0,@r0
	mov	ar4,@r0
	pop	ar0
	push	ar7
	push	ar6
	push	ar5
	push	ar1
	push	ar0
	push	bits
	mov	b,ar0
	mov	a,_bp
	add	a,#0xfa
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	r0,b
	mov	b,ar0
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	r0,b
	push	ar0
	mov	a,_bp
	add	a,#0x15
	mov	r0,a
	mov	a,@r0
	add	a,#0xff
	mov	b[0],c
	pop	ar0
	mov	bits,b
	mov	dpl,r4
	mov	r0,#_output_digit
	mov	r1,#(_output_digit >> 8)
	mov	r2,#(_output_digit >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	pop	bits
	pop	ar0
	pop	ar1
	pop	ar5
	pop	ar6
	pop	ar7
;	printf_large.c:851: charsOutputted++;
	inc	r6
	cjne	r6,#0x00,00586$
	inc	r7
00586$:
	ljmp	00224$
00330$:
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	printf_large.c:856: if (left_justify)
	jb	b0,00587$
	ljmp	00240$
00587$:
;	printf_large.c:858: while (width-- > 0)
	mov	a,_bp
	add	a,#0x0e
	mov	r0,a
	mov	ar5,@r0
00227$:
	mov	ar4,r5
	dec	r5
	mov	a,r4
	jnz	00588$
	ljmp	00240$
00588$:
;	printf_large.c:860: OUTPUT_CHAR(' ', p);
	push	ar7
	push	ar6
	push	ar5
	push	ar1
	mov	a,_bp
	add	a,#0xfa
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
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,#0x20
	pop	ar2
	pop	ar1
	pop	ar0
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
	pop	ar1
	pop	ar5
	pop	ar6
	pop	ar7
	inc	r6
	cjne	r6,#0x00,00589$
	inc	r7
00589$:
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	sjmp	00227$
00238$:
;	printf_large.c:868: OUTPUT_CHAR( c, p );
	push	ar1
	mov	a,_bp
	add	a,#0xfa
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
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r4
	pop	ar2
	pop	ar1
	pop	ar0
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
	pop	ar1
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00590$
	inc	r0
	inc	@r0
00590$:
	ljmp	00240$
00242$:
;	printf_large.c:872: return charsOutputted;
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	mov	sp,_bp
	pop	_bp
	ljmp	__sdcc_banked_ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
