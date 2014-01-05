;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:05 2013
;--------------------------------------------------------
	.module printf_large
	.optsdcc -mmcs51 --model-small
	
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
;output_char               Allocated to stack - _bp -4
;p                         Allocated to stack - _bp -7
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
	add	a,#0xf9
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	lcall	00115$
	sjmp	00116$
00115$:
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r7
	ret
00116$:
	dec	sp
	dec	sp
	dec	sp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'output_2digits'
;------------------------------------------------------------
;output_char               Allocated to stack - _bp -4
;p                         Allocated to stack - _bp -7
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
	add	a,#0xf9
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
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	c,b0
	mov	b[0],c
	mov	bits,b
	mov	dpl,r6
	lcall	_output_digit
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	bits
	pop	ar7
;	printf_large.c:152: output_digit( b&0x0F, lower_case, output_char, p );
	anl	ar7,#0x0F
	mov	a,_bp
	add	a,#0xf9
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
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	c,b0
	mov	b[0],c
	mov	bits,b
	mov	dpl,r7
	lcall	_output_digit
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'calculate_digit'
;------------------------------------------------------------
;radix                     Allocated to stack - _bp -3
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
	add	a,#0xfd
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
	add	a,#0xfd
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
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '_print_format'
;------------------------------------------------------------
;pvoid                     Allocated to stack - _bp -5
;format                    Allocated to stack - _bp -8
;ap                        Allocated to stack - _bp -9
;pfn                       Allocated to stack - _bp +1
;left_justify              Allocated to registers b0 
;zero_padding              Allocated to registers b1 
;prefix_sign               Allocated to registers b2 
;prefix_space              Allocated to registers b3 
;signed_argument           Allocated to registers b4 
;char_argument             Allocated to registers b5 
;long_argument             Allocated to registers b6 
;float_argument            Allocated to registers b7 
;lower_case                Allocated to stack - _bp +16
;value                     Allocated to stack - _bp +17
;charsOutputted            Allocated to stack - _bp +11
;lsd                       Allocated to registers b5 
;radix                     Allocated to stack - _bp +22
;width                     Allocated to stack - _bp +23
;decimals                  Allocated to registers r4 
;length                    Allocated to stack - _bp +24
;c                         Allocated to registers r5 
;memtype                   Allocated to registers r7 
;store                     Allocated to stack - _bp +25
;pstore                    Allocated to registers r3 
;sloc0                     Allocated to stack - _bp +3
;sloc1                     Allocated to stack - _bp +4
;sloc2                     Allocated to stack - _bp +7
;sloc3                     Allocated to stack - _bp +8
;sloc4                     Allocated to stack - _bp +9
;sloc5                     Allocated to stack - _bp +11
;sloc6                     Allocated to stack - _bp +13
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
	mov	a,sp
	add	a,#0x1C
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
	add	a,#0x03
	mov	r0,a
	mov	a,_bp
	add	a,#0x11
	mov	@r0,a
	mov	a,_bp
	add	a,#0x19
	xch	a,r0
	mov	a,_bp
	add	a,#0x08
	xch	a,r0
	add	a,#0x05
	mov	@r0,a
	mov	a,_bp
	add	a,#0x11
	mov	r0,a
	add	a,#0x04
	mov	r2,a
00243$:
	mov	a,_bp
	add	a,#0xf8
	mov	r1,a
	mov	ar6,@r1
	inc	r1
	mov	ar5,@r1
	inc	r1
	mov	ar4,@r1
	mov	dpl,r6
	mov	dph,r5
	mov	b,r4
	lcall	__gptrget
	mov	r7,a
	mov	a,_bp
	add	a,#0xf8
	mov	r1,a
	mov	a,#0x01
	add	a,r6
	mov	@r1,a
	clr	a
	addc	a,r5
	inc	r1
	mov	@r1,a
	inc	r1
	mov	@r1,ar4
	mov	a,r7
	mov	r5,a
	jnz	00500$
	ljmp	00245$
00500$:
;	printf_large.c:477: if ( c=='%' )
	cjne	r5,#0x25,00501$
	sjmp	00502$
00501$:
	ljmp	00241$
00502$:
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
	add	a,#0x16
	mov	r1,a
	mov	@r1,#0x00
;	printf_large.c:488: width           = 0;
	mov	a,_bp
	add	a,#0x17
	mov	r1,a
	mov	@r1,#0x00
;	printf_large.c:489: decimals        = -1;
	mov	r4,#0xFF
;	printf_large.c:491: get_conversion_spec:
	mov	a,_bp
	add	a,#0xf8
	mov	r1,a
	push	ar0
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,@r1
	mov	@r0,a
	inc	r1
	inc	r0
	mov	a,@r1
	mov	@r0,a
	inc	r1
	inc	r0
	mov	a,@r1
	mov	@r0,a
	pop	ar0
00101$:
;	printf_large.c:493: c = *format++;
	mov	a,_bp
	add	a,#0x04
	mov	r1,a
	mov	dpl,@r1
	inc	r1
	mov	dph,@r1
	inc	r1
	mov	b,@r1
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	dec	r1
	dec	r1
	mov	@r1,dpl
	inc	r1
	mov	@r1,dph
	mov	a,_bp
	add	a,#0x04
	mov	r1,a
	push	ar0
	mov	a,_bp
	add	a,#0xf8
	mov	r0,a
	mov	a,@r1
	mov	@r0,a
	inc	r1
	inc	r0
	mov	a,@r1
	mov	@r0,a
	inc	r1
	inc	r0
	mov	a,@r1
	mov	@r0,a
	pop	ar0
;	printf_large.c:495: if (c=='%')
	cjne	r5,#0x25,00103$
;	printf_large.c:497: OUTPUT_CHAR(c, p);
	push	ar2
	push	ar0
	mov	a,_bp
	add	a,#0xfb
	mov	r1,a
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	lcall	00505$
	sjmp	00506$
00505$:
	mov	r1,_bp
	inc	r1
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	mov	dpl,r5
	ret
00506$:
	dec	sp
	dec	sp
	dec	sp
	pop	ar0
	pop	ar2
	mov	a,_bp
	add	a,#0x0b
	mov	r1,a
	inc	@r1
	cjne	@r1,#0x00,00507$
	inc	r1
	inc	@r1
00507$:
;	printf_large.c:498: continue;
	ljmp	00243$
00103$:
;	printf_large.c:501: if (isdigit(c))
	mov	ar7,r5
	cjne	r7,#0x30,00508$
00508$:
	jc	00110$
	mov	a,r7
	add	a,#0xff - 0x39
	jc	00110$
;	printf_large.c:503: if (decimals==-1)
	cjne	r4,#0xFF,00107$
;	printf_large.c:505: width = 10*width + c - '0';
	mov	a,_bp
	add	a,#0x17
	mov	r1,a
	mov	a,@r1
	mov	b,#0x0A
	mul	ab
	add	a,r5
	mov	r3,a
	mov	a,_bp
	add	a,#0x17
	mov	r1,a
	mov	a,r3
	add	a,#0xD0
	mov	@r1,a
;	printf_large.c:506: if (width == 0)
	mov	a,_bp
	add	a,#0x17
	mov	r1,a
	mov	a,@r1
	jz	00513$
	ljmp	00101$
00513$:
;	printf_large.c:509: zero_padding = 1;
	setb	b1
	ljmp	00101$
00107$:
;	printf_large.c:514: decimals = 10*decimals + c - '0';
	mov	a,r4
	mov	b,#0x0A
	mul	ab
	add	a,r5
	mov	r3,a
	add	a,#0xD0
	mov	r4,a
;	printf_large.c:516: goto get_conversion_spec;
	ljmp	00101$
00110$:
;	printf_large.c:519: if (c=='.')
	cjne	r5,#0x2E,00115$
;	printf_large.c:521: if (decimals==-1)
	cjne	r4,#0xFF,00516$
	sjmp	00517$
00516$:
	ljmp	00101$
00517$:
;	printf_large.c:522: decimals=0;
	mov	r4,#0x00
;	printf_large.c:525: goto get_conversion_spec;
	ljmp	00101$
00115$:
;	printf_large.c:528: if (islower(c))
	mov	ar7,r5
	cjne	r7,#0x61,00518$
00518$:
	jc	00117$
	mov	a,r7
	add	a,#0xff - 0x7A
	jc	00117$
;	printf_large.c:530: c = toupper(c);
	anl	ar5,#0xDF
;	printf_large.c:531: lower_case = 1;
	mov	a,_bp
	add	a,#0x10
	mov	r1,a
	mov	@r1,#0x01
	sjmp	00118$
00117$:
;	printf_large.c:534: lower_case = 0;
	mov	a,_bp
	add	a,#0x10
	mov	r1,a
	mov	@r1,#0x00
00118$:
;	printf_large.c:536: switch( c )
	cjne	r5,#0x20,00521$
	sjmp	00122$
00521$:
	cjne	r5,#0x2B,00522$
	sjmp	00121$
00522$:
	cjne	r5,#0x2D,00523$
	sjmp	00120$
00523$:
	cjne	r5,#0x42,00524$
	sjmp	00123$
00524$:
	cjne	r5,#0x43,00525$
	sjmp	00129$
00525$:
	cjne	r5,#0x44,00526$
	ljmp	00166$
00526$:
	cjne	r5,#0x46,00527$
	ljmp	00170$
00527$:
	cjne	r5,#0x48,00528$
	ljmp	00101$
00528$:
	cjne	r5,#0x49,00529$
	ljmp	00166$
00529$:
	cjne	r5,#0x4A,00530$
	ljmp	00101$
00530$:
	cjne	r5,#0x4C,00531$
	sjmp	00128$
00531$:
	cjne	r5,#0x4F,00532$
	ljmp	00167$
00532$:
	cjne	r5,#0x50,00533$
	ljmp	00152$
00533$:
	cjne	r5,#0x53,00534$
	ljmp	00133$
00534$:
	cjne	r5,#0x54,00535$
	ljmp	00101$
00535$:
	cjne	r5,#0x55,00536$
	ljmp	00168$
00536$:
	cjne	r5,#0x58,00537$
	ljmp	00169$
00537$:
	cjne	r5,#0x5A,00538$
	ljmp	00101$
00538$:
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
	add	a,#0xf7
	mov	r1,a
	mov	a,@r1
	dec	a
	mov	r3,a
	mov	a,_bp
	add	a,#0xf7
	mov	r1,a
	mov	@r1,ar3
	mov	ar1,r3
	mov	ar5,@r1
	sjmp	00132$
00131$:
;	printf_large.c:564: c = va_arg(ap,int);
	mov	a,_bp
	add	a,#0xf7
	mov	r1,a
	mov	a,@r1
	add	a,#0xFE
	mov	r3,a
	mov	a,_bp
	add	a,#0xf7
	mov	r1,a
	mov	@r1,ar3
	mov	ar1,r3
	mov	ar3,@r1
	inc	r1
	mov	ar6,@r1
	dec	r1
	mov	ar5,r3
;	printf_large.c:872: return charsOutputted;
;	printf_large.c:564: c = va_arg(ap,int);
00132$:
;	printf_large.c:565: OUTPUT_CHAR( c, p );
	push	ar2
	push	ar0
	push	bits
	mov	a,_bp
	add	a,#0xfb
	mov	r1,a
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	lcall	00540$
	sjmp	00541$
00540$:
	mov	r1,_bp
	inc	r1
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	mov	dpl,r5
	ret
00541$:
	dec	sp
	dec	sp
	dec	sp
	pop	bits
	pop	ar0
	pop	ar2
	mov	a,_bp
	add	a,#0x0b
	mov	r1,a
	inc	@r1
	cjne	@r1,#0x00,00542$
	inc	r1
	inc	@r1
00542$:
;	printf_large.c:566: break;
	ljmp	00172$
;	printf_large.c:568: case 'S':
00133$:
;	printf_large.c:569: PTR = va_arg(ap,ptr_t);
	mov	a,_bp
	add	a,#0x11
	mov	r1,a
	push	ar0
	mov	a,_bp
	add	a,#0xf7
	mov	r0,a
	mov	a,@r0
	add	a,#0xFD
	mov	r6,a
	mov	a,_bp
	add	a,#0xf7
	mov	r0,a
	mov	@r0,ar6
	mov	r0,ar6
	mov	ar3,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	pop	ar0
	mov	@r1,ar3
	inc	r1
	mov	@r1,ar6
	inc	r1
	mov	@r1,ar7
	dec	r1
	dec	r1
;	printf_large.c:582: length = strlen(PTR);
	mov	dpl,r3
	mov	dph,r6
	mov	b,r7
	push	ar4
	push	ar2
	push	ar1
	push	ar0
	push	bits
	lcall	_strlen
	mov	r6,dpl
	mov	r7,dph
	pop	bits
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar4
	push	ar0
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	@r0,ar6
	pop	ar0
;	printf_large.c:584: if ( decimals == -1 )
	cjne	r4,#0xFF,00135$
;	printf_large.c:586: decimals = length;
	push	ar0
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	ar4,@r0
	pop	ar0
00135$:
;	printf_large.c:588: if ( ( !left_justify ) && (length < width) )
	jnb	b0,00545$
	ljmp	00289$
00545$:
	push	ar0
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	push	ar1
	mov	a,_bp
	add	a,#0x17
	mov	r1,a
	clr	c
	mov	a,@r0
	subb	a,@r1
	pop	ar1
	pop	ar0
	jc	00546$
	ljmp	00289$
00546$:
;	printf_large.c:590: width -= length;
	push	ar0
	mov	a,_bp
	add	a,#0x17
	mov	r0,a
	push	ar1
	mov	a,_bp
	add	a,#0x07
	mov	r1,a
	mov	a,@r0
	clr	c
	subb	a,@r1
	mov	@r0,a
	pop	ar1
;	printf_large.c:591: while( width-- != 0 )
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	a,_bp
	add	a,#0x17
	mov	r0,a
	mov	ar5,@r0
	pop	ar0
00136$:
	mov	ar3,r5
	dec	r5
	mov	a,r3
	jz	00329$
;	printf_large.c:593: OUTPUT_CHAR( ' ', p );
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar2
	push	ar1
	push	ar0
	push	bits
	mov	b,ar0
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
	mov	r0,b
	lcall	00548$
	sjmp	00549$
00548$:
	mov	b,ar0
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,#0x20
	ret
00549$:
	dec	sp
	dec	sp
	dec	sp
	pop	bits
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	inc	r6
;	printf_large.c:597: while ( (c = *PTR)  && (decimals-- > 0))
	cjne	r6,#0x00,00136$
	inc	r7
	sjmp	00136$
00329$:
	push	ar0
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	mov	a,_bp
	add	a,#0x17
	mov	r0,a
	mov	@r0,ar5
	pop	ar0
00289$:
	push	ar0
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	push	ar1
	mov	a,_bp
	add	a,#0x09
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	pop	ar1
	pop	ar0
00143$:
	mov	ar3,@r1
	inc	r1
	mov	ar6,@r1
	inc	r1
	mov	ar7,@r1
	dec	r1
	dec	r1
	mov	dpl,r3
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r3,a
	mov	r5,a
	jnz	00551$
	ljmp	00330$
00551$:
	mov	ar7,r4
	dec	r4
	clr	c
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00330$
;	printf_large.c:599: OUTPUT_CHAR( c, p );
	push	ar0
	push	ar4
	push	ar2
	push	ar1
	push	ar0
	push	bits
	mov	b,ar0
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
	mov	r0,b
	lcall	00553$
	sjmp	00554$
00553$:
	mov	b,ar0
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r5
	ret
00554$:
	dec	sp
	dec	sp
	dec	sp
	pop	bits
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar4
	push	ar0
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00555$
	inc	r0
	inc	@r0
00555$:
	pop	ar0
;	printf_large.c:600: PTR++;
	mov	ar3,@r1
	inc	r1
	mov	ar6,@r1
	inc	r1
	mov	ar7,@r1
	dec	r1
	dec	r1
	inc	r3
	cjne	r3,#0x00,00556$
	inc	r6
00556$:
	mov	@r1,ar3
	inc	r1
	mov	@r1,ar6
	inc	r1
	mov	@r1,ar7
	dec	r1
	dec	r1
	pop	ar0
	ljmp	00143$
00330$:
	mov	a,_bp
	add	a,#0x09
	mov	r1,a
	push	ar0
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	a,@r1
	mov	@r0,a
	inc	r1
	inc	r0
	mov	a,@r1
	mov	@r0,a
	pop	ar0
;	printf_large.c:603: if ( left_justify && (length < width))
	jb	b0,00557$
	ljmp	00172$
00557$:
	mov	a,_bp
	add	a,#0x07
	mov	r1,a
	push	ar0
	mov	a,_bp
	add	a,#0x17
	mov	r0,a
	clr	c
	mov	a,@r1
	subb	a,@r0
	pop	ar0
	jc	00558$
	ljmp	00172$
00558$:
;	printf_large.c:605: width -= length;
	mov	a,_bp
	add	a,#0x17
	mov	r1,a
	push	ar0
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	a,@r1
	clr	c
	subb	a,@r0
	mov	@r1,a
	pop	ar0
;	printf_large.c:606: while( width-- != 0 )
	mov	a,_bp
	add	a,#0x09
	mov	r1,a
	mov	ar6,@r1
	inc	r1
	mov	ar5,@r1
	mov	a,_bp
	add	a,#0x17
	mov	r1,a
	mov	ar3,@r1
00146$:
	mov	ar7,r3
	dec	r3
	mov	a,r7
	jnz	00559$
	ljmp	00331$
00559$:
;	printf_large.c:608: OUTPUT_CHAR( ' ', p );
	push	ar6
	push	ar5
	push	ar3
	push	ar2
	push	ar0
	push	bits
	mov	a,_bp
	add	a,#0xfb
	mov	r1,a
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	lcall	00560$
	sjmp	00561$
00560$:
	mov	r1,_bp
	inc	r1
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	mov	dpl,#0x20
	ret
00561$:
	dec	sp
	dec	sp
	dec	sp
	pop	bits
	pop	ar0
	pop	ar2
	pop	ar3
	pop	ar5
	pop	ar6
	inc	r6
;	printf_large.c:613: case 'P':
	cjne	r6,#0x00,00146$
	inc	r5
	sjmp	00146$
00152$:
;	printf_large.c:614: PTR = va_arg(ap,ptr_t);
	mov	a,_bp
	add	a,#0x11
	mov	r1,a
	push	ar0
	mov	a,_bp
	add	a,#0xf7
	mov	r0,a
	mov	a,@r0
	add	a,#0xFD
	mov	r7,a
	mov	a,_bp
	add	a,#0xf7
	mov	r0,a
	mov	@r0,ar7
	mov	r0,ar7
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	pop	ar0
	mov	@r1,ar5
	inc	r1
	mov	@r1,ar6
	inc	r1
	mov	@r1,ar7
	dec	r1
	dec	r1
;	printf_large.c:637: unsigned char memtype = value.byte[2];
	mov	a,_bp
	add	a,#0x11
	mov	r6,a
	add	a,#0x02
	mov	r1,a
	mov	ar7,@r1
;	printf_large.c:638: if (memtype >= 0x80)
	cjne	r7,#0x80,00563$
00563$:
	jc	00160$
;	printf_large.c:639: c = 'C';
	mov	r5,#0x43
	sjmp	00161$
00160$:
;	printf_large.c:640: else if (memtype >= 0x60)
	cjne	r7,#0x60,00565$
00565$:
	jc	00157$
;	printf_large.c:641: c = 'P';
	mov	r5,#0x50
	sjmp	00161$
00157$:
;	printf_large.c:642: else if (memtype >= 0x40)
	cjne	r7,#0x40,00567$
00567$:
	jc	00154$
;	printf_large.c:643: c = 'I';
	mov	r5,#0x49
	sjmp	00161$
00154$:
;	printf_large.c:645: c = 'X';
	mov	r5,#0x58
00161$:
;	printf_large.c:647: OUTPUT_CHAR(c, p);
	push	ar6
	push	ar5
	push	ar2
	push	ar0
	push	bits
	mov	a,_bp
	add	a,#0xfb
	mov	r1,a
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	lcall	00569$
	sjmp	00570$
00569$:
	mov	r1,_bp
	inc	r1
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	mov	dpl,r5
	ret
00570$:
	dec	sp
	dec	sp
	dec	sp
	pop	bits
	pop	ar0
	pop	ar2
	pop	ar5
	pop	ar6
	mov	a,_bp
	add	a,#0x0b
	mov	r1,a
	inc	@r1
	cjne	@r1,#0x00,00571$
	inc	r1
	inc	@r1
00571$:
;	printf_large.c:648: OUTPUT_CHAR(':', p);
	push	ar6
	push	ar5
	push	ar2
	push	ar0
	push	bits
	mov	a,_bp
	add	a,#0xfb
	mov	r1,a
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	lcall	00572$
	sjmp	00573$
00572$:
	mov	r1,_bp
	inc	r1
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	mov	dpl,#0x3A
	ret
00573$:
	dec	sp
	dec	sp
	dec	sp
	pop	bits
	pop	ar0
	pop	ar2
	pop	ar5
	pop	ar6
	mov	a,_bp
	add	a,#0x0b
	mov	r1,a
	inc	@r1
	cjne	@r1,#0x00,00574$
	inc	r1
	inc	@r1
00574$:
;	printf_large.c:649: OUTPUT_CHAR('0', p);
	push	ar6
	push	ar5
	push	ar2
	push	ar0
	push	bits
	mov	a,_bp
	add	a,#0xfb
	mov	r1,a
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	lcall	00575$
	sjmp	00576$
00575$:
	mov	r1,_bp
	inc	r1
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	mov	dpl,#0x30
	ret
00576$:
	dec	sp
	dec	sp
	dec	sp
	pop	bits
	pop	ar0
	pop	ar2
	pop	ar5
	pop	ar6
	mov	a,_bp
	add	a,#0x0b
	mov	r1,a
	inc	@r1
	cjne	@r1,#0x00,00577$
	inc	r1
	inc	@r1
00577$:
;	printf_large.c:650: OUTPUT_CHAR('x', p);
	push	ar6
	push	ar5
	push	ar2
	push	ar0
	push	bits
	mov	a,_bp
	add	a,#0xfb
	mov	r1,a
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	lcall	00578$
	sjmp	00579$
00578$:
	mov	r1,_bp
	inc	r1
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	mov	dpl,#0x78
	ret
00579$:
	dec	sp
	dec	sp
	dec	sp
	pop	bits
	pop	ar0
	pop	ar2
	pop	ar5
	pop	ar6
	mov	a,_bp
	add	a,#0x0b
	mov	r1,a
	inc	@r1
	cjne	@r1,#0x00,00580$
	inc	r1
	inc	@r1
00580$:
;	printf_large.c:651: if ((c != 'I' /* idata */) &&
	cjne	r5,#0x49,00581$
	sjmp	00163$
00581$:
;	printf_large.c:652: (c != 'P' /* pdata */))
	cjne	r5,#0x50,00582$
	sjmp	00163$
00582$:
;	printf_large.c:654: OUTPUT_2DIGITS( value.byte[1] );
	mov	a,r6
	inc	a
	mov	r1,a
	mov	ar7,@r1
	push	ar2
	push	ar0
	push	bits
	mov	a,_bp
	add	a,#0xfb
	mov	r1,a
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	mov	r1,_bp
	inc	r1
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	mov	a,_bp
	add	a,#0x10
	mov	r1,a
	mov	a,@r1
	add	a,#0xff
	mov	b[0],c
	mov	bits,b
	mov	dpl,r7
	lcall	_output_2digits
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	bits
	pop	ar0
	pop	ar2
	mov	a,_bp
	add	a,#0x0b
	mov	r1,a
	mov	a,#0x02
	add	a,@r1
	mov	@r1,a
	clr	a
	inc	r1
	addc	a,@r1
	mov	@r1,a
00163$:
;	printf_large.c:656: OUTPUT_2DIGITS( value.byte[0] );
	mov	a,_bp
	add	a,#0x03
	mov	r1,a
	mov	ar1,@r1
	mov	ar7,@r1
	push	ar2
	push	ar0
	push	bits
	mov	a,_bp
	add	a,#0xfb
	mov	r1,a
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	mov	r1,_bp
	inc	r1
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	mov	a,_bp
	add	a,#0x10
	mov	r1,a
	mov	a,@r1
	add	a,#0xff
	mov	b[0],c
	mov	bits,b
	mov	dpl,r7
	lcall	_output_2digits
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	bits
	pop	ar0
	pop	ar2
	mov	a,_bp
	add	a,#0x0b
	mov	r1,a
	mov	a,#0x02
	add	a,@r1
	mov	@r1,a
	clr	a
	inc	r1
	addc	a,@r1
	mov	@r1,a
;	printf_large.c:663: break;
;	printf_large.c:666: case 'I':
	sjmp	00172$
00166$:
;	printf_large.c:667: signed_argument = 1;
	setb	b4
;	printf_large.c:668: radix = 10;
	mov	a,_bp
	add	a,#0x16
	mov	r1,a
	mov	@r1,#0x0A
;	printf_large.c:669: break;
;	printf_large.c:671: case 'O':
	sjmp	00172$
00167$:
;	printf_large.c:672: radix = 8;
	mov	a,_bp
	add	a,#0x16
	mov	r1,a
	mov	@r1,#0x08
;	printf_large.c:673: break;
;	printf_large.c:675: case 'U':
	sjmp	00172$
00168$:
;	printf_large.c:676: radix = 10;
	mov	a,_bp
	add	a,#0x16
	mov	r1,a
	mov	@r1,#0x0A
;	printf_large.c:677: break;
;	printf_large.c:679: case 'X':
	sjmp	00172$
00169$:
;	printf_large.c:680: radix = 16;
	mov	a,_bp
	add	a,#0x16
	mov	r1,a
	mov	@r1,#0x10
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
	push	ar2
	push	ar0
	push	bits
	mov	a,_bp
	add	a,#0xfb
	mov	r1,a
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	lcall	00583$
	sjmp	00584$
00583$:
	mov	r1,_bp
	inc	r1
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	mov	dpl,r5
	ret
00584$:
	dec	sp
	dec	sp
	dec	sp
	pop	bits
	pop	ar0
	pop	ar2
	mov	a,_bp
	add	a,#0x0b
	mov	r1,a
	inc	@r1
	cjne	@r1,#0x00,00585$
	inc	r1
	inc	@r1
00585$:
;	printf_large.c:872: return charsOutputted;
;	printf_large.c:691: }
	sjmp	00172$
00331$:
	mov	a,_bp
	add	a,#0x0b
	mov	r1,a
	mov	@r1,ar6
	inc	r1
	mov	@r1,ar5
	mov	a,_bp
	add	a,#0x17
	mov	r1,a
	mov	@r1,ar3
00172$:
;	printf_large.c:693: if (float_argument)
	jb	b7,00586$
	ljmp	00238$
00586$:
;	printf_large.c:695: value.f = va_arg(ap, float);
	push	ar0
	mov	a,_bp
	add	a,#0x11
	mov	r1,a
	push	ar0
	mov	a,_bp
	add	a,#0xf7
	mov	r0,a
	mov	a,@r0
	add	a,#0xFC
	mov	r7,a
	mov	a,_bp
	add	a,#0xf7
	mov	r0,a
	mov	@r0,ar7
	mov	r0,ar7
	mov	ar3,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	@r1,ar3
	inc	r1
	mov	@r1,ar5
	inc	r1
	mov	@r1,ar6
	inc	r1
	mov	@r1,ar7
	dec	r1
	dec	r1
	dec	r1
;	printf_large.c:697: PTR="<NO FLOAT>";
	mov	a,_bp
	add	a,#0x11
	mov	r1,a
	mov	@r1,#__str_0
	inc	r1
	mov	@r1,#(__str_0 >> 8)
	inc	r1
	mov	@r1,#0x80
	dec	r1
	dec	r1
;	printf_large.c:698: while (c=*PTR++)
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	push	ar1
	mov	a,_bp
	add	a,#0x04
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	pop	ar1
	pop	ar0
;	printf_large.c:872: return charsOutputted;
	pop	ar0
;	printf_large.c:698: while (c=*PTR++)
00173$:
	push	ar0
	push	ar0
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	a,@r1
	mov	@r0,a
	inc	r1
	mov	a,@r1
	inc	r0
	mov	@r0,a
	inc	r1
	mov	a,@r1
	inc	r0
	mov	@r0,a
	dec	r1
	dec	r1
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	a,#0x01
	add	a,@r0
	mov	r3,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar7,@r0
	mov	@r1,ar3
	inc	r1
	mov	@r1,ar4
	inc	r1
	mov	@r1,ar7
	dec	r1
	dec	r1
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r7,a
	pop	ar0
	mov	ar5,r7
	pop	ar0
	mov	a,r7
	jnz	00587$
	ljmp	00243$
00587$:
;	printf_large.c:700: OUTPUT_CHAR (c, p);
	push	ar2
	push	ar1
	push	ar0
	mov	b,ar0
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
	mov	r0,b
	lcall	00588$
	sjmp	00589$
00588$:
	mov	b,ar0
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r5
	ret
00589$:
	dec	sp
	dec	sp
	dec	sp
	pop	ar0
	pop	ar1
	pop	ar2
	push	ar0
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00590$
	inc	r0
	inc	@r0
00590$:
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	push	ar1
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
	pop	ar0
	ljmp	00173$
00238$:
;	printf_large.c:718: else if (radix != 0)
	mov	a,_bp
	add	a,#0x16
	mov	r1,a
	mov	a,@r1
	jnz	00591$
	ljmp	00243$
00591$:
;	printf_large.c:723: unsigned char MEM_SPACE_BUF_PP *pstore = &store[5];
	mov	a,_bp
	add	a,#0x08
	mov	r1,a
	mov	ar3,@r1
;	printf_large.c:726: if (char_argument)
	jnb	b5,00184$
;	printf_large.c:728: value.l = va_arg(ap, char);
	mov	a,_bp
	add	a,#0x11
	mov	r1,a
	push	ar0
	mov	a,_bp
	add	a,#0xf7
	mov	r0,a
	mov	a,@r0
	dec	a
	mov	r7,a
	mov	a,_bp
	add	a,#0xf7
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
	mov	@r1,ar7
	inc	r1
	mov	@r1,ar6
	inc	r1
	mov	@r1,ar5
	inc	r1
	mov	@r1,ar4
	dec	r1
	dec	r1
	dec	r1
;	printf_large.c:729: if (!signed_argument)
	jnb	b4,00593$
	ljmp	00185$
00593$:
;	printf_large.c:731: value.l &= 0xFF;
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
	mov	r5,#0x00
	mov	r6,#0x00
	mov	r7,#0x00
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
	ljmp	00185$
00184$:
;	printf_large.c:734: else if (long_argument)
	jnb	b6,00181$
;	printf_large.c:736: value.l = va_arg(ap, long);
	mov	a,_bp
	add	a,#0x11
	mov	r1,a
	push	ar0
	mov	a,_bp
	add	a,#0xf7
	mov	r0,a
	mov	a,@r0
	add	a,#0xFC
	mov	r7,a
	mov	a,_bp
	add	a,#0xf7
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
	sjmp	00185$
00181$:
;	printf_large.c:740: value.l = va_arg(ap, int);
	mov	a,_bp
	add	a,#0x11
	mov	r1,a
	push	ar0
	mov	a,_bp
	add	a,#0xf7
	mov	r0,a
	mov	a,@r0
	add	a,#0xFE
	mov	r7,a
	mov	a,_bp
	add	a,#0xf7
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
	mov	@r1,ar6
	inc	r1
	mov	@r1,ar7
	inc	r1
	mov	@r1,ar5
	inc	r1
	mov	@r1,ar4
	dec	r1
	dec	r1
	dec	r1
;	printf_large.c:741: if (!signed_argument)
	jb	b4,00185$
;	printf_large.c:743: value.l &= 0xFFFF;
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
	mov	r6,#0x00
	mov	r7,#0x00
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
00185$:
;	printf_large.c:747: if ( signed_argument )
	jnb	b4,00190$
;	printf_large.c:749: if (value.l < 0)
	mov	a,_bp
	add	a,#0x11
	mov	r1,a
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
	mov	a,r7
	jnb	acc.7,00187$
;	printf_large.c:750: value.l = -value.l;
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
	sjmp	00190$
00187$:
;	printf_large.c:752: signed_argument = 0;
	clr	b4
00190$:
;	printf_large.c:756: lsd = 1;
	setb	b5
;	printf_large.c:758: do {
	mov	ar1,r3
	push	ar0
	mov	a,_bp
	add	a,#0x18
	mov	r0,a
	mov	@r0,#0x00
	pop	ar0
00194$:
;	printf_large.c:759: value.byte[4] = 0;
	mov	a,_bp
	add	a,#0x11
	add	a,#0x04
	push	ar0
	mov	r0,a
	mov	@r0,#0x00
	pop	ar0
;	printf_large.c:761: calculate_digit(&value, radix);
	mov	ar6,r0
	push	ar2
	push	ar1
	push	ar0
	push	bits
	mov	b,ar0
	mov	a,_bp
	add	a,#0x16
	mov	r0,a
	mov	a,@r0
	push	acc
	mov	dpl,r6
	lcall	_calculate_digit
	dec	sp
	pop	bits
	pop	ar0
	pop	ar1
	pop	ar2
;	printf_large.c:765: if (!lsd)
	jb	b5,00192$
;	printf_large.c:767: *pstore = (value.byte[4] << 4) | (value.byte[4] >> 4) | *pstore;
	push	ar0
	mov	r0,ar2
	mov	ar6,@r0
	pop	ar0
	mov	a,r6
	swap	a
	mov	r6,a
	mov	a,@r1
	mov	r5,a
	orl	ar6,a
	mov	@r1,ar6
;	printf_large.c:768: pstore--;
	dec	r1
	sjmp	00193$
00192$:
;	printf_large.c:772: *pstore = value.byte[4];
	push	ar0
	mov	r0,ar2
	mov	ar6,@r0
	pop	ar0
	mov	@r1,ar6
00193$:
;	printf_large.c:774: length++;
	push	ar0
	mov	a,_bp
	add	a,#0x18
	mov	r0,a
	inc	@r0
	pop	ar0
;	printf_large.c:775: lsd = !lsd;
	cpl	b5
;	printf_large.c:776: } while( value.ul );
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
	mov	a,r4
	orl	a,r5
	orl	a,r6
	orl	a,r7
	jnz	00194$
;	printf_large.c:778: if (width == 0)
	mov	ar3,r1
	mov	a,_bp
	add	a,#0x18
	mov	r1,a
	push	ar0
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	a,@r1
	mov	@r0,a
	pop	ar0
	mov	a,_bp
	add	a,#0x17
	mov	r1,a
	mov	a,@r1
	jnz	00198$
;	printf_large.c:783: width = 1;
	mov	a,_bp
	add	a,#0x17
	mov	r1,a
	mov	@r1,#0x01
00198$:
;	printf_large.c:787: if (!zero_padding && !left_justify)
	jnb	b1,00601$
	ljmp	00203$
00601$:
	jnb	b0,00602$
	ljmp	00203$
00602$:
;	printf_large.c:789: while ( width > (unsigned char) (length+1) )
	mov	a,_bp
	add	a,#0x07
	mov	r1,a
	mov	a,@r1
	inc	a
	mov	r7,a
	mov	a,_bp
	add	a,#0x0b
	mov	r1,a
	mov	ar5,@r1
	inc	r1
	mov	ar6,@r1
	mov	a,_bp
	add	a,#0x17
	mov	r1,a
	mov	ar4,@r1
00199$:
	clr	c
	mov	a,r7
	subb	a,r4
	jnc	00333$
;	printf_large.c:791: OUTPUT_CHAR( ' ', p );
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar0
	push	bits
	mov	a,_bp
	add	a,#0xfb
	mov	r1,a
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	lcall	00604$
	sjmp	00605$
00604$:
	mov	r1,_bp
	inc	r1
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	mov	dpl,#0x20
	ret
00605$:
	dec	sp
	dec	sp
	dec	sp
	pop	bits
	pop	ar0
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	inc	r5
	cjne	r5,#0x00,00606$
	inc	r6
00606$:
;	printf_large.c:792: width--;
	dec	r4
	sjmp	00199$
00333$:
	mov	a,_bp
	add	a,#0x0b
	mov	r1,a
	mov	@r1,ar5
	inc	r1
	mov	@r1,ar6
	mov	a,_bp
	add	a,#0x17
	mov	r1,a
	mov	@r1,ar4
00203$:
;	printf_large.c:796: if (signed_argument) // this now means the original value was negative
	jnb	b4,00213$
;	printf_large.c:798: OUTPUT_CHAR( '-', p );
	push	ar3
	push	ar2
	push	ar0
	push	bits
	mov	a,_bp
	add	a,#0xfb
	mov	r1,a
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	lcall	00608$
	sjmp	00609$
00608$:
	mov	r1,_bp
	inc	r1
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	mov	dpl,#0x2D
	ret
00609$:
	dec	sp
	dec	sp
	dec	sp
	pop	bits
	pop	ar0
	pop	ar2
	pop	ar3
	mov	a,_bp
	add	a,#0x0b
	mov	r1,a
	inc	@r1
	cjne	@r1,#0x00,00610$
	inc	r1
	inc	@r1
00610$:
;	printf_large.c:800: width--;
	mov	a,_bp
	add	a,#0x17
	mov	r1,a
	dec	@r1
	ljmp	00214$
00213$:
;	printf_large.c:802: else if (length != 0)
	mov	a,_bp
	add	a,#0x07
	mov	r1,a
	mov	a,@r1
	jnz	00611$
	ljmp	00214$
00611$:
;	printf_large.c:805: if (prefix_sign)
	jnb	b2,00208$
;	printf_large.c:807: OUTPUT_CHAR( '+', p );
	push	ar3
	push	ar2
	push	ar0
	push	bits
	mov	a,_bp
	add	a,#0xfb
	mov	r1,a
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	lcall	00613$
	sjmp	00614$
00613$:
	mov	r1,_bp
	inc	r1
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	mov	dpl,#0x2B
	ret
00614$:
	dec	sp
	dec	sp
	dec	sp
	pop	bits
	pop	ar0
	pop	ar2
	pop	ar3
	mov	a,_bp
	add	a,#0x0b
	mov	r1,a
	inc	@r1
	cjne	@r1,#0x00,00615$
	inc	r1
	inc	@r1
00615$:
;	printf_large.c:809: width--;
	mov	a,_bp
	add	a,#0x17
	mov	r1,a
	dec	@r1
	sjmp	00214$
00208$:
;	printf_large.c:811: else if (prefix_space)
	jnb	b3,00214$
;	printf_large.c:813: OUTPUT_CHAR( ' ', p );
	push	ar3
	push	ar2
	push	ar0
	push	bits
	mov	a,_bp
	add	a,#0xfb
	mov	r1,a
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	lcall	00617$
	sjmp	00618$
00617$:
	mov	r1,_bp
	inc	r1
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	mov	dpl,#0x20
	ret
00618$:
	dec	sp
	dec	sp
	dec	sp
	pop	bits
	pop	ar0
	pop	ar2
	pop	ar3
	mov	a,_bp
	add	a,#0x0b
	mov	r1,a
	inc	@r1
	cjne	@r1,#0x00,00619$
	inc	r1
	inc	@r1
00619$:
;	printf_large.c:815: width--;
	mov	a,_bp
	add	a,#0x17
	mov	r1,a
	dec	@r1
00214$:
;	printf_large.c:820: if (!left_justify)
	jb	b0,00222$
;	printf_large.c:822: while ( width-- > length )
	mov	a,_bp
	add	a,#0x0b
	mov	r1,a
	mov	ar6,@r1
	inc	r1
	mov	ar7,@r1
	mov	a,_bp
	add	a,#0x17
	mov	r1,a
	mov	ar5,@r1
00215$:
	mov	ar4,r5
	dec	r5
	mov	a,_bp
	add	a,#0x07
	mov	r1,a
	clr	c
	mov	a,@r1
	subb	a,r4
	jc	00621$
	ljmp	00334$
00621$:
;	printf_large.c:824: OUTPUT_CHAR( zero_padding ? '0' : ' ', p );
	jnb	b1,00248$
	mov	r4,#0x30
	sjmp	00249$
00248$:
	mov	r4,#0x20
00249$:
	push	ar7
	push	ar6
	push	ar5
	push	ar3
	push	ar2
	push	ar0
	push	bits
	mov	a,_bp
	add	a,#0xfb
	mov	r1,a
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	lcall	00623$
	sjmp	00624$
00623$:
	mov	r1,_bp
	inc	r1
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	mov	dpl,r4
	ret
00624$:
	dec	sp
	dec	sp
	dec	sp
	pop	bits
	pop	ar0
	pop	ar2
	pop	ar3
	pop	ar5
	pop	ar6
	pop	ar7
	inc	r6
	cjne	r6,#0x00,00215$
	inc	r7
	sjmp	00215$
00222$:
;	printf_large.c:830: if (width > length)
	mov	a,_bp
	add	a,#0x17
	mov	r1,a
	push	ar0
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	clr	c
	mov	a,@r0
	subb	a,@r1
	pop	ar0
	jnc	00219$
;	printf_large.c:831: width -= length;
	mov	a,_bp
	add	a,#0x17
	mov	r1,a
	push	ar0
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	a,@r1
	clr	c
	subb	a,@r0
	mov	@r1,a
	pop	ar0
	sjmp	00326$
00219$:
;	printf_large.c:833: width = 0;
	mov	a,_bp
	add	a,#0x17
	mov	r1,a
	mov	@r1,#0x00
;	printf_large.c:872: return charsOutputted;
;	printf_large.c:837: while( length-- )
	sjmp	00326$
00334$:
	mov	a,_bp
	add	a,#0x0b
	mov	r1,a
	mov	@r1,ar6
	inc	r1
	mov	@r1,ar7
	mov	a,_bp
	add	a,#0x17
	mov	r1,a
	mov	@r1,ar5
00326$:
	mov	ar1,r3
	push	ar0
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	ar5,@r0
	pop	ar0
00227$:
	mov	ar4,r5
	dec	r5
	mov	a,r4
	jnz	00627$
	ljmp	00335$
00627$:
;	printf_large.c:839: lsd = !lsd;
	cpl	b5
;	printf_large.c:840: if (!lsd)
	jb	b5,00225$
;	printf_large.c:842: pstore++;
	inc	r1
;	printf_large.c:843: value.byte[4] = *pstore >> 4;
	mov	a,@r1
	swap	a
	anl	a,#0x0F
	mov	r4,a
	push	ar0
	mov	r0,ar2
	mov	@r0,ar4
	pop	ar0
	sjmp	00226$
00225$:
;	printf_large.c:847: value.byte[4] = *pstore & 0x0F;
	mov	ar4,@r1
	mov	a,#0x0F
	anl	a,r4
	push	ar0
	mov	r0,ar2
	mov	@r0,a
	pop	ar0
00226$:
;	printf_large.c:850: output_digit( value.byte[4], lower_case, output_char, p );
	push	ar0
	mov	r0,ar2
	mov	ar4,@r0
	pop	ar0
	push	ar7
	push	ar6
	push	ar5
	push	ar2
	push	ar1
	push	ar0
	push	bits
	mov	b,ar0
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
	mov	r0,b
	mov	b,ar0
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	r0,b
	push	ar0
	mov	a,_bp
	add	a,#0x10
	mov	r0,a
	mov	a,@r0
	add	a,#0xff
	mov	b[0],c
	pop	ar0
	mov	bits,b
	mov	dpl,r4
	lcall	_output_digit
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	bits
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar5
	pop	ar6
	pop	ar7
;	printf_large.c:851: charsOutputted++;
	inc	r6
	cjne	r6,#0x00,00629$
	inc	r7
00629$:
	ljmp	00227$
00335$:
	mov	a,_bp
	add	a,#0x0b
	mov	r1,a
	mov	@r1,ar6
	inc	r1
	mov	@r1,ar7
;	printf_large.c:856: if (left_justify)
	jb	b0,00630$
	ljmp	00243$
00630$:
;	printf_large.c:858: while (width-- > 0)
	mov	a,_bp
	add	a,#0x17
	mov	r1,a
	mov	ar5,@r1
00230$:
	mov	ar4,r5
	dec	r5
	mov	a,r4
	jnz	00631$
	ljmp	00243$
00631$:
;	printf_large.c:860: OUTPUT_CHAR(' ', p);
	push	ar7
	push	ar6
	push	ar5
	push	ar2
	push	ar0
	mov	a,_bp
	add	a,#0xfb
	mov	r1,a
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	lcall	00632$
	sjmp	00633$
00632$:
	mov	r1,_bp
	inc	r1
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	mov	dpl,#0x20
	ret
00633$:
	dec	sp
	dec	sp
	dec	sp
	pop	ar0
	pop	ar2
	pop	ar5
	pop	ar6
	pop	ar7
	inc	r6
	cjne	r6,#0x00,00634$
	inc	r7
00634$:
	mov	a,_bp
	add	a,#0x0b
	mov	r1,a
	mov	@r1,ar6
	inc	r1
	mov	@r1,ar7
	sjmp	00230$
00241$:
;	printf_large.c:868: OUTPUT_CHAR( c, p );
	push	ar2
	push	ar0
	mov	a,_bp
	add	a,#0xfb
	mov	r1,a
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	lcall	00635$
	sjmp	00636$
00635$:
	mov	r1,_bp
	inc	r1
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	mov	dpl,r5
	ret
00636$:
	dec	sp
	dec	sp
	dec	sp
	pop	ar0
	pop	ar2
	mov	a,_bp
	add	a,#0x0b
	mov	r1,a
	inc	@r1
	cjne	@r1,#0x00,00637$
	inc	r1
	inc	@r1
00637$:
	ljmp	00243$
00245$:
;	printf_large.c:872: return charsOutputted;
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	mov	sp,_bp
	pop	_bp
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
__str_0:
	.ascii "<NO FLOAT>"
	.db 0x00
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
