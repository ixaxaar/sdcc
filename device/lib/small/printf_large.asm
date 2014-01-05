;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:27:51 2013
;--------------------------------------------------------
	.module printf_large
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strlen
	.globl __print_format_PARM_4
	.globl __print_format_PARM_3
	.globl __print_format_PARM_2
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
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_output_char:
	.ds 2
_p:
	.ds 3
_value:
	.ds 5
_charsOutputted:
	.ds 2
__print_format_PARM_2:
	.ds 3
__print_format_PARM_3:
	.ds 3
__print_format_PARM_4:
	.ds 1
__print_format_radix_1_53:
	.ds 1
__print_format_width_1_53:
	.ds 1
__print_format_pstore_4_74:
	.ds 1
__print_format_sloc0_1_0:
	.ds 1
__print_format_sloc1_1_0:
	.ds 3
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
_calculate_digit_radix_1_48:
	.ds 1
_calculate_digit_ul_1_49:
	.ds 4
_calculate_digit_i_1_49:
	.ds 1
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
__print_format_store_4_74:
	.ds 6
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
_lower_case:
	.ds 1
__print_format_left_justify_1_53:
	.ds 1
__print_format_zero_padding_1_53:
	.ds 1
__print_format_prefix_sign_1_53:
	.ds 1
__print_format_prefix_space_1_53:
	.ds 1
__print_format_signed_argument_1_53:
	.ds 1
__print_format_char_argument_1_53:
	.ds 1
__print_format_long_argument_1_53:
	.ds 1
__print_format_float_argument_1_53:
	.ds 1
__print_format_lsd_1_53:
	.ds 1
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
;Allocation info for local variables in function '_output_char'
;------------------------------------------------------------
;c                         Allocated to registers r7 
;------------------------------------------------------------
;	printf_large.c:105: _output_char (unsigned char c)
;	-----------------------------------------
;	 function _output_char
;	-----------------------------------------
__output_char:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7,dpl
;	printf_large.c:107: output_char( c, p );
	push	_p
	push	(_p + 1)
	push	(_p + 2)
	lcall	00103$
	sjmp	00104$
00103$:
	push	_output_char
	push	(_output_char + 1)
	mov	dpl,r7
	ret
00104$:
	dec	sp
	dec	sp
	dec	sp
;	printf_large.c:108: charsOutputted++;
	inc	_charsOutputted
	clr	a
	cjne	a,_charsOutputted,00105$
	inc	(_charsOutputted + 1)
00105$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'output_digit'
;------------------------------------------------------------
;n                         Allocated to registers r7 
;c                         Allocated to registers r7 
;------------------------------------------------------------
;	printf_large.c:130: output_digit (unsigned char n)
;	-----------------------------------------
;	 function output_digit
;	-----------------------------------------
_output_digit:
	mov	r7,dpl
;	printf_large.c:132: register unsigned char c = n + (unsigned char)'0';
	mov	a,#0x30
	add	a,r7
;	printf_large.c:134: if (c > (unsigned char)'9')
	mov  r7,a
	add	a,#0xff - 0x39
	jnc	00104$
;	printf_large.c:136: c += (unsigned char)('A' - '0' - 10);
	mov	a,#0x07
	add	a,r7
	mov	r7,a
;	printf_large.c:137: if (lower_case)
	jnb	_lower_case,00104$
;	printf_large.c:138: c = tolower(c);
	orl	ar7,#0x20
00104$:
;	printf_large.c:140: _output_char( c );
	mov	dpl,r7
	ljmp	__output_char
;------------------------------------------------------------
;Allocation info for local variables in function 'output_2digits'
;------------------------------------------------------------
;b                         Allocated to registers r7 
;------------------------------------------------------------
;	printf_large.c:157: output_2digits (unsigned char b)
;	-----------------------------------------
;	 function output_2digits
;	-----------------------------------------
_output_2digits:
;	printf_large.c:159: output_digit( b>>4   );
	mov	a,dpl
	mov	r7,a
	swap	a
	anl	a,#0x0F
	mov	dpl,a
	push	ar7
	lcall	_output_digit
	pop	ar7
;	printf_large.c:160: output_digit( b&0x0F );
	mov	a,#0x0F
	anl	a,r7
	mov	dpl,a
	ljmp	_output_digit
;------------------------------------------------------------
;Allocation info for local variables in function 'calculate_digit'
;------------------------------------------------------------
;radix                     Allocated with name '_calculate_digit_radix_1_48'
;ul                        Allocated with name '_calculate_digit_ul_1_49'
;b4                        Allocated to registers r2 
;i                         Allocated with name '_calculate_digit_i_1_49'
;------------------------------------------------------------
;	printf_large.c:189: calculate_digit (unsigned char radix)
;	-----------------------------------------
;	 function calculate_digit
;	-----------------------------------------
_calculate_digit:
	mov	_calculate_digit_radix_1_48,dpl
;	printf_large.c:191: register unsigned long ul = value.ul;
	mov	_calculate_digit_ul_1_49,_value
	mov	(_calculate_digit_ul_1_49 + 1),(_value + 1)
	mov	(_calculate_digit_ul_1_49 + 2),(_value + 2)
	mov	(_calculate_digit_ul_1_49 + 3),(_value + 3)
;	printf_large.c:192: register unsigned char b4 = value.byte[4];
	mov	r2,(_value + 0x0004)
;	printf_large.c:195: do
	mov	_calculate_digit_i_1_49,#0x20
00103$:
;	printf_large.c:197: b4 = (b4 << 1);
	mov	a,r2
	add	a,r2
	mov	r2,a
;	printf_large.c:198: b4 |= (ul >> 31) & 0x01;
	mov	a,(_calculate_digit_ul_1_49 + 3)
	rl	a
	anl	a,#0x01
	mov	r7,a
	mov	ar6,r2
	orl	a,r6
	mov	r2,a
;	printf_large.c:199: ul <<= 1;
	mov	a,_calculate_digit_ul_1_49
	add	a,_calculate_digit_ul_1_49
	mov	_calculate_digit_ul_1_49,a
	mov	a,(_calculate_digit_ul_1_49 + 1)
	rlc	a
	mov	(_calculate_digit_ul_1_49 + 1),a
	mov	a,(_calculate_digit_ul_1_49 + 2)
	rlc	a
	mov	(_calculate_digit_ul_1_49 + 2),a
	mov	a,(_calculate_digit_ul_1_49 + 3)
	rlc	a
	mov	(_calculate_digit_ul_1_49 + 3),a
;	printf_large.c:201: if (radix <= b4 )
	clr	c
	mov	a,r2
	subb	a,_calculate_digit_radix_1_48
	jc	00104$
;	printf_large.c:203: b4 -= radix;
	mov	a,r2
	clr	c
	subb	a,_calculate_digit_radix_1_48
	mov	r2,a
;	printf_large.c:204: ul |= 1;
	orl	_calculate_digit_ul_1_49,#0x01
00104$:
;	printf_large.c:206: } while (--i);
	djnz	_calculate_digit_i_1_49,00103$
;	printf_large.c:207: value.ul = ul;
	mov	(_value + 0),_calculate_digit_ul_1_49
	mov	(_value + 1),(_calculate_digit_ul_1_49 + 1)
	mov	(_value + 2),(_calculate_digit_ul_1_49 + 2)
	mov	(_value + 3),(_calculate_digit_ul_1_49 + 3)
;	printf_large.c:208: value.byte[4] = b4;
	mov	(_value + 0x0004),r2
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '_print_format'
;------------------------------------------------------------
;pvoid                     Allocated with name '__print_format_PARM_2'
;format                    Allocated with name '__print_format_PARM_3'
;ap                        Allocated with name '__print_format_PARM_4'
;pfn                       Allocated to registers 
;radix                     Allocated with name '__print_format_radix_1_53'
;width                     Allocated with name '__print_format_width_1_53'
;decimals                  Allocated to registers r4 
;length                    Allocated to registers r5 
;c                         Allocated to registers r7 
;memtype                   Allocated to registers r4 
;pstore                    Allocated with name '__print_format_pstore_4_74'
;sloc0                     Allocated with name '__print_format_sloc0_1_0'
;sloc1                     Allocated with name '__print_format_sloc1_1_0'
;store                     Allocated with name '__print_format_store_4_74'
;------------------------------------------------------------
;	printf_large.c:434: _print_format (pfn_outputchar pfn, void* pvoid, const char *format, va_list ap)
;	-----------------------------------------
;	 function _print_format
;	-----------------------------------------
__print_format:
	mov	_output_char,dpl
	mov	(_output_char + 1),dph
;	printf_large.c:462: p = pvoid;
	mov	_p,__print_format_PARM_2
	mov	(_p + 1),(__print_format_PARM_2 + 1)
	mov	(_p + 2),(__print_format_PARM_2 + 2)
;	printf_large.c:466: charsOutputted = 0;
	clr	a
	mov	_charsOutputted,a
	mov	(_charsOutputted + 1),a
;	printf_large.c:475: while( c=*format++ )
00243$:
	mov	r5,__print_format_PARM_3
	mov	r6,(__print_format_PARM_3 + 1)
	mov	r7,(__print_format_PARM_3 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	mov	a,#0x01
	add	a,r5
	mov	__print_format_PARM_3,a
	clr	a
	addc	a,r6
	mov	(__print_format_PARM_3 + 1),a
	mov	(__print_format_PARM_3 + 2),r7
	mov	a,r4
	mov	r7,a
	jnz	00500$
	ljmp	00245$
00500$:
;	printf_large.c:477: if ( c=='%' )
	cjne	r7,#0x25,00501$
	sjmp	00502$
00501$:
	ljmp	00241$
00502$:
;	printf_large.c:479: left_justify    = 0;
	clr	__print_format_left_justify_1_53
;	printf_large.c:480: zero_padding    = 0;
	clr	__print_format_zero_padding_1_53
;	printf_large.c:481: prefix_sign     = 0;
	clr	__print_format_prefix_sign_1_53
;	printf_large.c:482: prefix_space    = 0;
	clr	__print_format_prefix_space_1_53
;	printf_large.c:483: signed_argument = 0;
	clr	__print_format_signed_argument_1_53
;	printf_large.c:484: char_argument   = 0;
	clr	__print_format_char_argument_1_53
;	printf_large.c:485: long_argument   = 0;
	clr	__print_format_long_argument_1_53
;	printf_large.c:486: float_argument  = 0;
	clr	__print_format_float_argument_1_53
;	printf_large.c:487: radix           = 0;
	mov	__print_format_radix_1_53,#0x00
;	printf_large.c:488: width           = 0;
	mov	__print_format_width_1_53,#0x00
;	printf_large.c:489: decimals        = -1;
	mov	r4,#0xFF
;	printf_large.c:491: get_conversion_spec:
	mov	r2,__print_format_PARM_3
	mov	r3,(__print_format_PARM_3 + 1)
	mov	r6,(__print_format_PARM_3 + 2)
00101$:
;	printf_large.c:493: c = *format++;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r6
	lcall	__gptrget
	mov	r7,a
	inc	dptr
	mov	r2,dpl
	mov	r3,dph
	mov	__print_format_PARM_3,r2
	mov	(__print_format_PARM_3 + 1),r3
	mov	(__print_format_PARM_3 + 2),r6
;	printf_large.c:495: if (c=='%')
	cjne	r7,#0x25,00103$
;	printf_large.c:497: OUTPUT_CHAR(c, p);
	mov	dpl,r7
	lcall	__output_char
;	printf_large.c:498: continue;
	sjmp	00243$
00103$:
;	printf_large.c:501: if (isdigit(c))
	mov	__print_format_sloc0_1_0,r7
	mov	a,#0x100 - 0x30
	add	a,__print_format_sloc0_1_0
	jnc	00110$
	mov	a,__print_format_sloc0_1_0
	add	a,#0xff - 0x39
	jc	00110$
;	printf_large.c:503: if (decimals==-1)
	cjne	r4,#0xFF,00107$
;	printf_large.c:505: width = 10*width + c - '0';
	mov	a,__print_format_width_1_53
	mov	b,#0x0A
	mul	ab
	mov	r5,a
	add	a,r7
	add	a,#0xD0
;	printf_large.c:506: if (width == 0)
	mov	__print_format_width_1_53,a
	jnz	00101$
;	printf_large.c:509: zero_padding = 1;
	setb	__print_format_zero_padding_1_53
	sjmp	00101$
00107$:
;	printf_large.c:514: decimals = 10*decimals + c - '0';
	mov	a,r4
	mov	b,#0x0A
	mul	ab
	add	a,r7
	add	a,#0xD0
	mov	r4,a
;	printf_large.c:516: goto get_conversion_spec;
	sjmp	00101$
00110$:
;	printf_large.c:519: if (c=='.')
	cjne	r7,#0x2E,00115$
;	printf_large.c:521: if (decimals==-1)
	cjne	r4,#0xFF,00101$
;	printf_large.c:522: decimals=0;
	mov	r4,#0x00
;	printf_large.c:525: goto get_conversion_spec;
	sjmp	00101$
00115$:
;	printf_large.c:528: if (islower(c))
	mov	ar5,r7
	cjne	r5,#0x61,00514$
00514$:
	jc	00117$
	mov	a,r5
	add	a,#0xff - 0x7A
	jc	00117$
;	printf_large.c:530: c = toupper(c);
	anl	ar7,#0xDF
;	printf_large.c:531: lower_case = 1;
	setb	_lower_case
	sjmp	00118$
00117$:
;	printf_large.c:534: lower_case = 0;
	clr	_lower_case
00118$:
;	printf_large.c:536: switch( c )
	cjne	r7,#0x20,00517$
	sjmp	00122$
00517$:
	cjne	r7,#0x2B,00518$
	sjmp	00121$
00518$:
	cjne	r7,#0x2D,00519$
	sjmp	00120$
00519$:
	cjne	r7,#0x42,00520$
	sjmp	00123$
00520$:
	cjne	r7,#0x43,00521$
	sjmp	00129$
00521$:
	cjne	r7,#0x44,00522$
	ljmp	00166$
00522$:
	cjne	r7,#0x46,00523$
	ljmp	00170$
00523$:
	cjne	r7,#0x48,00524$
	ljmp	00101$
00524$:
	cjne	r7,#0x49,00525$
	ljmp	00166$
00525$:
	cjne	r7,#0x4A,00526$
	ljmp	00101$
00526$:
	cjne	r7,#0x4C,00527$
	sjmp	00128$
00527$:
	cjne	r7,#0x4F,00528$
	ljmp	00167$
00528$:
	cjne	r7,#0x50,00529$
	ljmp	00152$
00529$:
	cjne	r7,#0x53,00530$
	sjmp	00133$
00530$:
	cjne	r7,#0x54,00531$
	ljmp	00101$
00531$:
	cjne	r7,#0x55,00532$
	ljmp	00168$
00532$:
	cjne	r7,#0x58,00533$
	ljmp	00169$
00533$:
	cjne	r7,#0x5A,00534$
	ljmp	00101$
00534$:
	ljmp	00171$
;	printf_large.c:538: case '-':
00120$:
;	printf_large.c:539: left_justify = 1;
	setb	__print_format_left_justify_1_53
;	printf_large.c:540: goto get_conversion_spec;
	ljmp	00101$
;	printf_large.c:541: case '+':
00121$:
;	printf_large.c:542: prefix_sign = 1;
	setb	__print_format_prefix_sign_1_53
;	printf_large.c:543: goto get_conversion_spec;
	ljmp	00101$
;	printf_large.c:544: case ' ':
00122$:
;	printf_large.c:545: prefix_space = 1;
	setb	__print_format_prefix_space_1_53
;	printf_large.c:546: goto get_conversion_spec;
	ljmp	00101$
;	printf_large.c:547: case 'B': /* byte */
00123$:
;	printf_large.c:548: char_argument = 1;
	setb	__print_format_char_argument_1_53
;	printf_large.c:549: goto get_conversion_spec;
	ljmp	00101$
;	printf_large.c:556: case 'L': /* long */
00128$:
;	printf_large.c:557: long_argument = 1;
	setb	__print_format_long_argument_1_53
;	printf_large.c:558: goto get_conversion_spec;
	ljmp	00101$
;	printf_large.c:560: case 'C':
00129$:
;	printf_large.c:561: if( char_argument )
	jnb	__print_format_char_argument_1_53,00131$
;	printf_large.c:562: c = va_arg(ap,char);
	mov	a,__print_format_PARM_4
	dec	a
	mov	r6,a
	mov	__print_format_PARM_4,r6
	mov	ar1,r6
	mov	ar7,@r1
	sjmp	00132$
00131$:
;	printf_large.c:564: c = va_arg(ap,int);
	mov	a,__print_format_PARM_4
	add	a,#0xFE
	mov	r6,a
	mov	__print_format_PARM_4,r6
	mov	ar1,r6
	mov	ar5,@r1
	inc	r1
	mov	ar6,@r1
	dec	r1
	mov	ar7,r5
00132$:
;	printf_large.c:565: OUTPUT_CHAR( c, p );
	mov	dpl,r7
	lcall	__output_char
;	printf_large.c:566: break;
	ljmp	00172$
;	printf_large.c:568: case 'S':
00133$:
;	printf_large.c:569: PTR = va_arg(ap,ptr_t);
	mov	a,__print_format_PARM_4
	add	a,#0xFD
	mov	r6,a
	mov	__print_format_PARM_4,r6
	mov	ar1,r6
	mov	ar3,@r1
	inc	r1
	mov	ar5,@r1
	inc	r1
	mov	ar6,@r1
	dec	r1
	dec	r1
	mov	(_value + 0),r3
	mov	(_value + 1),r5
	mov	(_value + 2),r6
;	printf_large.c:582: length = strlen(PTR);
	mov	dpl,r3
	mov	dph,r5
	mov	b,r6
	push	ar4
	lcall	_strlen
	mov	r5,dpl
	mov	r6,dph
	pop	ar4
;	printf_large.c:584: if ( decimals == -1 )
	cjne	r4,#0xFF,00135$
;	printf_large.c:586: decimals = length;
	mov	ar4,r5
00135$:
;	printf_large.c:588: if ( ( !left_justify ) && (length < width) )
	jb	__print_format_left_justify_1_53,00289$
	clr	c
	mov	a,r5
	subb	a,__print_format_width_1_53
	jnc	00289$
;	printf_large.c:590: width -= length;
	mov	a,__print_format_width_1_53
	clr	c
	subb	a,r5
	mov	__print_format_width_1_53,a
;	printf_large.c:591: while( width-- != 0 )
	mov	r6,__print_format_width_1_53
00136$:
	mov	ar3,r6
	dec	r6
	mov	a,r3
	jz	00329$
;	printf_large.c:593: OUTPUT_CHAR( ' ', p );
	mov	dpl,#0x20
	push	ar6
	push	ar5
	push	ar4
	lcall	__output_char
	pop	ar4
	pop	ar5
	pop	ar6
;	printf_large.c:597: while ( (c = *PTR)  && (decimals-- > 0))
	sjmp	00136$
00329$:
	mov	__print_format_width_1_53,r6
00289$:
	mov	ar6,r4
00143$:
	mov	dpl,_value
	mov	dph,(_value + 1)
	mov	b,(_value + 2)
	lcall	__gptrget
	mov	r4,a
	mov	r7,a
	jz	00145$
	mov	ar4,r6
	dec	r6
	clr	c
	mov	a,#(0x00 ^ 0x80)
	mov	b,r4
	xrl	b,#0x80
	subb	a,b
	jnc	00145$
;	printf_large.c:599: OUTPUT_CHAR( c, p );
	mov	dpl,r7
	push	ar6
	push	ar5
	lcall	__output_char
	pop	ar5
	pop	ar6
;	printf_large.c:600: PTR++;
	mov	r2,_value
	mov	r3,(_value + 1)
	mov	r4,(_value + 2)
	inc	r2
	cjne	r2,#0x00,00543$
	inc	r3
00543$:
	mov	(_value + 0),r2
	mov	(_value + 1),r3
	mov	(_value + 2),r4
	sjmp	00143$
00145$:
;	printf_large.c:603: if ( left_justify && (length < width))
	jb	__print_format_left_justify_1_53,00544$
	ljmp	00172$
00544$:
	clr	c
	mov	a,r5
	subb	a,__print_format_width_1_53
	jc	00545$
	ljmp	00172$
00545$:
;	printf_large.c:605: width -= length;
	mov	a,__print_format_width_1_53
	clr	c
	subb	a,r5
	mov	__print_format_width_1_53,a
;	printf_large.c:606: while( width-- != 0 )
	mov	r6,__print_format_width_1_53
00146$:
	mov	ar4,r6
	dec	r6
	mov	a,r4
	jnz	00546$
	ljmp	00331$
00546$:
;	printf_large.c:608: OUTPUT_CHAR( ' ', p );
	mov	dpl,#0x20
	push	ar6
	lcall	__output_char
	pop	ar6
;	printf_large.c:613: case 'P':
	sjmp	00146$
00152$:
;	printf_large.c:614: PTR = va_arg(ap,ptr_t);
	mov	a,__print_format_PARM_4
	add	a,#0xFD
	mov	r4,a
	mov	__print_format_PARM_4,r4
	mov	ar1,r4
	mov	ar2,@r1
	inc	r1
	mov	ar3,@r1
	inc	r1
	mov	ar4,@r1
	dec	r1
	dec	r1
	mov	(_value + 0),r2
	mov	(_value + 1),r3
	mov	(_value + 2),r4
;	printf_large.c:637: unsigned char memtype = value.byte[2];
	mov	r4,(_value + 0x0002)
;	printf_large.c:638: if (memtype >= 0x80)
	cjne	r4,#0x80,00547$
00547$:
	jc	00160$
;	printf_large.c:639: c = 'C';
	mov	r7,#0x43
	sjmp	00161$
00160$:
;	printf_large.c:640: else if (memtype >= 0x60)
	cjne	r4,#0x60,00549$
00549$:
	jc	00157$
;	printf_large.c:641: c = 'P';
	mov	r7,#0x50
	sjmp	00161$
00157$:
;	printf_large.c:642: else if (memtype >= 0x40)
	cjne	r4,#0x40,00551$
00551$:
	jc	00154$
;	printf_large.c:643: c = 'I';
	mov	r7,#0x49
	sjmp	00161$
00154$:
;	printf_large.c:645: c = 'X';
	mov	r7,#0x58
00161$:
;	printf_large.c:647: OUTPUT_CHAR(c, p);
	mov	dpl,r7
	push	ar7
	lcall	__output_char
;	printf_large.c:648: OUTPUT_CHAR(':', p);
	mov	dpl,#0x3A
	lcall	__output_char
;	printf_large.c:649: OUTPUT_CHAR('0', p);
	mov	dpl,#0x30
	lcall	__output_char
;	printf_large.c:650: OUTPUT_CHAR('x', p);
	mov	dpl,#0x78
	lcall	__output_char
	pop	ar7
;	printf_large.c:651: if ((c != 'I' /* idata */) &&
	cjne	r7,#0x49,00553$
	sjmp	00163$
00553$:
;	printf_large.c:652: (c != 'P' /* pdata */))
	cjne	r7,#0x50,00554$
	sjmp	00163$
00554$:
;	printf_large.c:654: OUTPUT_2DIGITS( value.byte[1] );
	mov	dpl,(_value + 0x0001)
	lcall	_output_2digits
00163$:
;	printf_large.c:656: OUTPUT_2DIGITS( value.byte[0] );
	mov	dpl,_value
	lcall	_output_2digits
;	printf_large.c:663: break;
;	printf_large.c:666: case 'I':
	sjmp	00172$
00166$:
;	printf_large.c:667: signed_argument = 1;
	setb	__print_format_signed_argument_1_53
;	printf_large.c:668: radix = 10;
	mov	__print_format_radix_1_53,#0x0A
;	printf_large.c:669: break;
;	printf_large.c:671: case 'O':
	sjmp	00172$
00167$:
;	printf_large.c:672: radix = 8;
	mov	__print_format_radix_1_53,#0x08
;	printf_large.c:673: break;
;	printf_large.c:675: case 'U':
	sjmp	00172$
00168$:
;	printf_large.c:676: radix = 10;
	mov	__print_format_radix_1_53,#0x0A
;	printf_large.c:677: break;
;	printf_large.c:679: case 'X':
	sjmp	00172$
00169$:
;	printf_large.c:680: radix = 16;
	mov	__print_format_radix_1_53,#0x10
;	printf_large.c:681: break;
;	printf_large.c:683: case 'F':
	sjmp	00172$
00170$:
;	printf_large.c:684: float_argument=1;
	setb	__print_format_float_argument_1_53
;	printf_large.c:685: break;
;	printf_large.c:687: default:
	sjmp	00172$
00171$:
;	printf_large.c:689: OUTPUT_CHAR( c, p );
	mov	dpl,r7
	lcall	__output_char
;	printf_large.c:872: return charsOutputted;
;	printf_large.c:691: }
	sjmp	00172$
00331$:
	mov	__print_format_width_1_53,r6
00172$:
;	printf_large.c:693: if (float_argument)
	jnb	__print_format_float_argument_1_53,00238$
;	printf_large.c:695: value.f = va_arg(ap, float);
	mov	a,__print_format_PARM_4
	add	a,#0xFC
	mov	r6,a
	mov	__print_format_PARM_4,r6
	mov	ar1,r6
	mov	ar2,@r1
	inc	r1
	mov	ar3,@r1
	inc	r1
	mov	ar4,@r1
	inc	r1
	mov	ar6,@r1
	dec	r1
	dec	r1
	dec	r1
	mov	(_value + 0),r2
	mov	(_value + 1),r3
	mov	(_value + 2),r4
	mov	(_value + 3),r6
;	printf_large.c:697: PTR="<NO FLOAT>";
	mov	(_value + 0),#__str_0
	mov	(_value + 1),#(__str_0 >> 8)
	mov	(_value + 2),#0x80
;	printf_large.c:698: while (c=*PTR++)
00173$:
	mov	__print_format_sloc1_1_0,_value
	mov	(__print_format_sloc1_1_0 + 1),(_value + 1)
	mov	(__print_format_sloc1_1_0 + 2),(_value + 2)
	mov	a,#0x01
	add	a,__print_format_sloc1_1_0
	mov	r2,a
	clr	a
	addc	a,(__print_format_sloc1_1_0 + 1)
	mov	r4,a
	mov	r6,(__print_format_sloc1_1_0 + 2)
	mov	(_value + 0),r2
	mov	(_value + 1),r4
	mov	(_value + 2),r6
	mov	dpl,__print_format_sloc1_1_0
	mov	dph,(__print_format_sloc1_1_0 + 1)
	mov	b,(__print_format_sloc1_1_0 + 2)
	lcall	__gptrget
	mov	r6,a
	mov	r7,a
	jnz	00556$
	ljmp	00243$
00556$:
;	printf_large.c:700: OUTPUT_CHAR (c, p);
	mov	dpl,r7
	lcall	__output_char
	sjmp	00173$
00238$:
;	printf_large.c:718: else if (radix != 0)
	mov	a,__print_format_radix_1_53
	jnz	00557$
	ljmp	00243$
00557$:
;	printf_large.c:723: unsigned char MEM_SPACE_BUF_PP *pstore = &store[5];
	mov	__print_format_pstore_4_74,#(__print_format_store_4_74 + 0x0005)
;	printf_large.c:726: if (char_argument)
	jnb	__print_format_char_argument_1_53,00184$
;	printf_large.c:728: value.l = va_arg(ap, char);
	mov	a,__print_format_PARM_4
	dec	a
	mov	r4,a
	mov	__print_format_PARM_4,r4
	mov	ar1,r4
	mov	a,@r1
	mov	r2,a
	rlc	a
	subb	a,acc
	mov	r3,a
	mov	r4,a
	mov	r6,a
	mov	(_value + 0),r2
	mov	(_value + 1),r3
	mov	(_value + 2),r4
	mov	(_value + 3),r6
;	printf_large.c:729: if (!signed_argument)
	jb	__print_format_signed_argument_1_53,00185$
;	printf_large.c:731: value.l &= 0xFF;
	mov	r2,_value
	mov	r3,#0x00
	mov	r4,#0x00
	mov	r6,#0x00
	mov	(_value + 0),r2
	mov	(_value + 1),r3
	mov	(_value + 2),r4
	mov	(_value + 3),r6
	sjmp	00185$
00184$:
;	printf_large.c:734: else if (long_argument)
	jnb	__print_format_long_argument_1_53,00181$
;	printf_large.c:736: value.l = va_arg(ap, long);
	mov	a,__print_format_PARM_4
	add	a,#0xFC
	mov	r6,a
	mov	__print_format_PARM_4,r6
	mov	ar1,r6
	mov	ar2,@r1
	inc	r1
	mov	ar3,@r1
	inc	r1
	mov	ar4,@r1
	inc	r1
	mov	ar6,@r1
	dec	r1
	dec	r1
	dec	r1
	mov	(_value + 0),r2
	mov	(_value + 1),r3
	mov	(_value + 2),r4
	mov	(_value + 3),r6
	sjmp	00185$
00181$:
;	printf_large.c:740: value.l = va_arg(ap, int);
	mov	a,__print_format_PARM_4
	add	a,#0xFE
	mov	r6,a
	mov	__print_format_PARM_4,r6
	mov	ar1,r6
	mov	ar4,@r1
	inc	r1
	mov	ar6,@r1
	dec	r1
	mov	a,r6
	rlc	a
	subb	a,acc
	mov	r3,a
	mov	r2,a
	mov	(_value + 0),r4
	mov	(_value + 1),r6
	mov	(_value + 2),r3
	mov	(_value + 3),r2
;	printf_large.c:741: if (!signed_argument)
	jb	__print_format_signed_argument_1_53,00185$
;	printf_large.c:743: value.l &= 0xFFFF;
	mov	r2,_value
	mov	r3,(_value + 1)
	mov	r4,#0x00
	mov	r6,#0x00
	mov	(_value + 0),r2
	mov	(_value + 1),r3
	mov	(_value + 2),r4
	mov	(_value + 3),r6
00185$:
;	printf_large.c:747: if ( signed_argument )
	jnb	__print_format_signed_argument_1_53,00190$
;	printf_large.c:749: if (value.l < 0)
	mov	a,(_value + 3)
	jnb	acc.7,00187$
;	printf_large.c:750: value.l = -value.l;
	clr	c
	clr	a
	subb	a,_value
	mov	r2,a
	clr	a
	subb	a,(_value + 1)
	mov	r3,a
	clr	a
	subb	a,(_value + 2)
	mov	r4,a
	clr	a
	subb	a,(_value + 3)
	mov	r6,a
	mov	(_value + 0),r2
	mov	(_value + 1),r3
	mov	(_value + 2),r4
	mov	(_value + 3),r6
	sjmp	00190$
00187$:
;	printf_large.c:752: signed_argument = 0;
	clr	__print_format_signed_argument_1_53
00190$:
;	printf_large.c:756: lsd = 1;
	setb	__print_format_lsd_1_53
;	printf_large.c:758: do {
	mov	r1,__print_format_pstore_4_74
	mov	r6,#0x00
00194$:
;	printf_large.c:759: value.byte[4] = 0;
	mov	(_value + 0x0004),#0x00
;	printf_large.c:763: calculate_digit(radix);
	mov	dpl,__print_format_radix_1_53
	push	ar6
	push	ar1
	lcall	_calculate_digit
	pop	ar1
	pop	ar6
;	printf_large.c:765: if (!lsd)
	jb	__print_format_lsd_1_53,00192$
;	printf_large.c:767: *pstore = (value.byte[4] << 4) | (value.byte[4] >> 4) | *pstore;
	mov	a,(_value + 0x0004)
	swap	a
	mov	r4,a
	mov	a,@r1
	mov	r3,a
	orl	a,r4
	mov	@r1,a
;	printf_large.c:768: pstore--;
	dec	r1
	sjmp	00193$
00192$:
;	printf_large.c:772: *pstore = value.byte[4];
	mov	@r1,(_value + 0x0004)
00193$:
;	printf_large.c:774: length++;
	inc	r6
;	printf_large.c:775: lsd = !lsd;
	cpl	__print_format_lsd_1_53
;	printf_large.c:776: } while( value.ul );
	mov	a,_value
	orl	a,(_value + 1)
	orl	a,(_value + 2)
	orl	a,(_value + 3)
	jnz	00194$
;	printf_large.c:778: if (width == 0)
	mov	__print_format_pstore_4_74,r1
	mov	ar5,r6
	mov	a,__print_format_width_1_53
	jnz	00198$
;	printf_large.c:783: width = 1;
	mov	__print_format_width_1_53,#0x01
00198$:
;	printf_large.c:787: if (!zero_padding && !left_justify)
	jb	__print_format_zero_padding_1_53,00203$
	jb	__print_format_left_justify_1_53,00203$
;	printf_large.c:789: while ( width > (unsigned char) (length+1) )
	mov	a,r5
	inc	a
	mov	r6,a
	mov	r4,__print_format_width_1_53
00199$:
	clr	c
	mov	a,r6
	subb	a,r4
	jnc	00333$
;	printf_large.c:791: OUTPUT_CHAR( ' ', p );
	mov	dpl,#0x20
	push	ar6
	push	ar5
	push	ar4
	lcall	__output_char
	pop	ar4
	pop	ar5
	pop	ar6
;	printf_large.c:792: width--;
	dec	r4
	sjmp	00199$
00333$:
	mov	__print_format_width_1_53,r4
00203$:
;	printf_large.c:796: if (signed_argument) // this now means the original value was negative
	jnb	__print_format_signed_argument_1_53,00213$
;	printf_large.c:798: OUTPUT_CHAR( '-', p );
	mov	dpl,#0x2D
	push	ar5
	lcall	__output_char
	pop	ar5
;	printf_large.c:800: width--;
	dec	__print_format_width_1_53
	sjmp	00214$
00213$:
;	printf_large.c:802: else if (length != 0)
	mov	a,r5
	jz	00214$
;	printf_large.c:805: if (prefix_sign)
	jnb	__print_format_prefix_sign_1_53,00208$
;	printf_large.c:807: OUTPUT_CHAR( '+', p );
	mov	dpl,#0x2B
	push	ar5
	lcall	__output_char
	pop	ar5
;	printf_large.c:809: width--;
	dec	__print_format_width_1_53
	sjmp	00214$
00208$:
;	printf_large.c:811: else if (prefix_space)
	jnb	__print_format_prefix_space_1_53,00214$
;	printf_large.c:813: OUTPUT_CHAR( ' ', p );
	mov	dpl,#0x20
	push	ar5
	lcall	__output_char
	pop	ar5
;	printf_large.c:815: width--;
	dec	__print_format_width_1_53
00214$:
;	printf_large.c:820: if (!left_justify)
	jb	__print_format_left_justify_1_53,00222$
;	printf_large.c:822: while ( width-- > length )
	mov	r6,__print_format_width_1_53
00215$:
	mov	ar4,r6
	dec	r6
	clr	c
	mov	a,r5
	subb	a,r4
	jnc	00334$
;	printf_large.c:824: OUTPUT_CHAR( zero_padding ? '0' : ' ', p );
	jnb	__print_format_zero_padding_1_53,00248$
	mov	r4,#0x30
	sjmp	00249$
00248$:
	mov	r4,#0x20
00249$:
	mov	dpl,r4
	push	ar6
	push	ar5
	lcall	__output_char
	pop	ar5
	pop	ar6
	sjmp	00215$
00222$:
;	printf_large.c:830: if (width > length)
	clr	c
	mov	a,r5
	subb	a,__print_format_width_1_53
	jnc	00219$
;	printf_large.c:831: width -= length;
	mov	a,__print_format_width_1_53
	clr	c
	subb	a,r5
	mov	__print_format_width_1_53,a
	sjmp	00326$
00219$:
;	printf_large.c:833: width = 0;
	mov	__print_format_width_1_53,#0x00
;	printf_large.c:872: return charsOutputted;
;	printf_large.c:837: while( length-- )
	sjmp	00326$
00334$:
	mov	__print_format_width_1_53,r6
00326$:
	mov	r1,__print_format_pstore_4_74
	mov	ar6,r5
00227$:
	mov	ar5,r6
	dec	r6
	mov	a,r5
	jz	00229$
;	printf_large.c:839: lsd = !lsd;
	cpl	__print_format_lsd_1_53
;	printf_large.c:840: if (!lsd)
	jb	__print_format_lsd_1_53,00225$
;	printf_large.c:842: pstore++;
	inc	r1
;	printf_large.c:843: value.byte[4] = *pstore >> 4;
	mov	a,@r1
	swap	a
	anl	a,#0x0F
	mov	r5,a
	mov	(_value + 0x0004),r5
	sjmp	00226$
00225$:
;	printf_large.c:847: value.byte[4] = *pstore & 0x0F;
	mov	ar5,@r1
	mov	a,#0x0F
	anl	a,r5
	mov	(_value + 0x0004),a
00226$:
;	printf_large.c:853: output_digit( value.byte[4] );
	mov	dpl,(_value + 0x0004)
	push	ar6
	push	ar1
	lcall	_output_digit
	pop	ar1
	pop	ar6
	sjmp	00227$
00229$:
;	printf_large.c:856: if (left_justify)
	jb	__print_format_left_justify_1_53,00580$
	ljmp	00243$
00580$:
;	printf_large.c:858: while (width-- > 0)
	mov	r6,__print_format_width_1_53
00230$:
	mov	ar5,r6
	dec	r6
	mov	a,r5
	jnz	00581$
	ljmp	00243$
00581$:
;	printf_large.c:860: OUTPUT_CHAR(' ', p);
	mov	dpl,#0x20
	push	ar6
	lcall	__output_char
	pop	ar6
	sjmp	00230$
00241$:
;	printf_large.c:868: OUTPUT_CHAR( c, p );
	mov	dpl,r7
	lcall	__output_char
	ljmp	00243$
00245$:
;	printf_large.c:872: return charsOutputted;
	mov	dpl,_charsOutputted
	mov	dph,(_charsOutputted + 1)
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
__str_0:
	.ascii "<NO FLOAT>"
	.db 0x00
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
