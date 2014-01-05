;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:28 2013
;--------------------------------------------------------
	.module printf_large
	.optsdcc -mtlcs90
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strlen
	.globl __print_format
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area _DABS (ABS)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area _HOME
	.area _GSINIT
	.area _GSFINAL
	.area _GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
;../printf_large.c:116: output_digit (unsigned char n, bool lower_case, pfn_outputchar output_char, void* p)
;	---------------------------------
; Function output_digit
; ---------------------------------
_output_digit:
;../printf_large.c:118: register unsigned char c = n + (unsigned char)'0';
	ld	hl, #2+0
	add	hl, sp
	ld	a, (hl)
	add	a, #0x30
	ld	d,a
;../printf_large.c:120: if (c > (unsigned char)'9')
	ld	a,#0x39
	sub	a, d
	jr	NC,00104$
;../printf_large.c:122: c += (unsigned char)('A' - '0' - 10);
	ld	a,d
	add	a, #0x07
	ld	d,a
;../printf_large.c:123: if (lower_case)
	ld	hl, #3+0
	add	hl, sp
	bit	0, (hl)
	jr	Z,00104$
;../printf_large.c:124: c += (unsigned char)('a' - 'A');
	ld	a,d
	add	a, #0x20
	ld	d,a
00104$:
;../printf_large.c:126: output_char( c, p );
	ld	hl, 6 (sp)
	push	hl
	push	de
	inc	sp
	ld	hl, 7 (sp)
	call	__sdcc_call_hl
	add	sp, #3
	ret
;../printf_large.c:149: output_2digits (unsigned char b, bool lower_case, pfn_outputchar output_char, void* p)
;	---------------------------------
; Function output_2digits
; ---------------------------------
_output_2digits:
	push	ix
	ld	ix,#0
	add	ix,sp
;../printf_large.c:151: output_digit( b>>4,   lower_case, output_char, p );
	ld	a,4 (ix)
	rlca
	rlca
	rlca
	rlca
	and	a,#0x0F
	ld	d,a
	ld	hl, 8 (sp)
	push	hl
	ld	hl, 8 (sp)
	push	hl
	ld	a,5 (ix)
	push	af
	inc	sp
	push	de
	inc	sp
	call	_output_digit
	add	sp, #6
;../printf_large.c:152: output_digit( b&0x0F, lower_case, output_char, p );
	ld	a,4 (ix)
	and	a, #0x0F
	ld	d,a
	ld	hl, 8 (sp)
	push	hl
	ld	hl, 8 (sp)
	push	hl
	ld	a,5 (ix)
	push	af
	inc	sp
	push	de
	inc	sp
	call	_output_digit
	add	sp, #6
	pop	ix
	ret
;../printf_large.c:168: calculate_digit (value_t _AUTOMEM * value, unsigned char radix)
;	---------------------------------
; Function calculate_digit
; ---------------------------------
_calculate_digit:
	push	ix
	ld	ix,#0
	add	ix,sp
	add	sp, #-6
;../printf_large.c:170: unsigned long ul = value->ul;
	ex	de, hl
	ld	hl, 10 (sp)
	ex	de, hl
	push	de
	ld	hl, #0x0004
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
	pop	de
;../printf_large.c:171: unsigned char _AUTOMEM * pb4 = &value->byte[4];
	ld	hl,#0x0004
	add	hl,de
	ex	(sp), hl
;../printf_large.c:174: do
	ld	b,#0x20
00103$:
;../printf_large.c:176: *pb4 = (*pb4 << 1) | ((ul >> 31) & 0x01);
	pop	hl
	push	hl
	ld	a,(hl)
	add	a, a
	ld	c,a
	ld	a,-1 (ix)
	rlc	a
	and	a,#0x01
	or	a, c
	pop	hl
	push	hl
	ld	(hl),a
;../printf_large.c:177: ul <<= 1;
	push	af
	pop	af
	sla	-4 (ix)
	rl	-3 (ix)
	rl	-2 (ix)
	rl	-1 (ix)
;../printf_large.c:179: if (radix <= *pb4 )
	pop	hl
	push	hl
	ld	h,(hl)
	ld	a,h
	sub	a, 6 (ix)
	jr	C,00104$
;../printf_large.c:181: *pb4 -= radix;
	ld	a,h
	sub	a, 6 (ix)
	pop	hl
	push	hl
	ld	(hl),a
;../printf_large.c:182: ul |= 1;
	set	0, -4 (ix)
00104$:
;../printf_large.c:184: } while (--i);
	dec	b
	ld	a,b
	or	a, a
	jp	NZ,00103$
;../printf_large.c:185: value->ul = ul;
	ld	hl, #0x0002
	add	hl, sp
	ld	bc, #0x0004
	ldir
	ld	sp, ix
	pop	ix
	ret
;../printf_large.c:434: _print_format (pfn_outputchar pfn, void* pvoid, const char *format, va_list ap)
;	---------------------------------
; Function _print_format
; ---------------------------------
__print_format_start::
__print_format:
	push	ix
	ld	ix,#0
	add	ix,sp
	add	sp, #-48
;../printf_large.c:466: charsOutputted = 0;
	ld	hl,#0x0000
	ld	46 (sp), hl
;../printf_large.c:475: while( c=*format++ )
	ld	hl,#0x0009
	add	hl,sp
	ld	32 (sp), hl
	ld	hl,#0x0005
	add	hl,sp
	ld	30 (sp), hl
	ld	hl,#0x0009
	add	hl,sp
	ld	27 (sp), hl
	ld	a,-21 (ix)
	add	a, #0x04
	ld	-23 (ix),a
	ld	a,-20 (ix)
	adc	a, #0x00
	ld	-22 (ix),a
00231$:
	ld	hl, 56 (sp)
	ld	e,(hl)
	inc	hl
	ld	56 (sp), hl
	ld	a,e
;../printf_large.c:477: if ( c=='%' )
	ld	d,a
	or	a,a
	jp	Z,00233$
	sub	a, #0x25
	jp	NZ,00229$
;../printf_large.c:479: left_justify    = 0;
	ld	-33 (ix),#0x00
;../printf_large.c:480: zero_padding    = 0;
	ld	-24 (ix),#0x00
;../printf_large.c:481: prefix_sign     = 0;
	ld	-25 (ix),#0x00
;../printf_large.c:482: prefix_space    = 0;
	ld	-31 (ix),#0x00
;../printf_large.c:483: signed_argument = 0;
	ld	-40 (ix),#0x00
;../printf_large.c:484: char_argument   = 0;
	ld	-41 (ix),#0x00
;../printf_large.c:485: long_argument   = 0;
	ld	-26 (ix),#0x00
;../printf_large.c:486: float_argument  = 0;
	ld	-27 (ix),#0x00
;../printf_large.c:487: radix           = 0;
	ld	-42 (ix),#0x00
;../printf_large.c:488: width           = 0;
	ld	-14 (ix),#0x00
;../printf_large.c:489: decimals        = -1;
	ld	-28 (ix),#0xFF
;../printf_large.c:491: get_conversion_spec:
	ld	a,8 (ix)
	ld	-6 (ix),a
	ld	a,9 (ix)
	ld	-5 (ix),a
00101$:
;../printf_large.c:493: c = *format++;
	ld	hl, 42 (sp)
	ld	a,(hl)
	ld	-4 (ix),a
	inc	-6 (ix)
	jr	NZ,00552$
	inc	-5 (ix)
00552$:
	ld	a,-6 (ix)
	ld	8 (ix),a
	ld	a,-5 (ix)
	ld	9 (ix),a
;../printf_large.c:495: if (c=='%')
	ld	a,-4 (ix)
	sub	a, #0x25
	jr	NZ,00103$
;../printf_large.c:497: OUTPUT_CHAR(c, p);
	ld	hl, 54 (sp)
	push	hl
	ld	a,-4 (ix)
	push	af
	inc	sp
	ld	hl, 55 (sp)
	call	__sdcc_call_hl
	add	sp, #3
	inc	-2 (ix)
	jp	NZ,00231$
	inc	-1 (ix)
;../printf_large.c:498: continue;
	jp	00231$
00103$:
;../printf_large.c:501: if (isdigit(c))
	ld	h,-4 (ix)
	ld	a,h
	sub	a, #0x30
	jp	C,00110$
	ld	a,#0x39
	sub	a, h
	jp	C,00110$
;../printf_large.c:503: if (decimals==-1)
	ld	a,-28 (ix)
	inc	a
	jr	NZ,00107$
;../printf_large.c:505: width = 10*width + c - '0';
	ld	l,-14 (ix)
	ld	c,l
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	ld	a,l
	add	a, -4 (ix)
	add	a,#0xD0
;../printf_large.c:506: if (width == 0)
	ld	-14 (ix), a
	or	a, a
	jp	NZ,00101$
;../printf_large.c:509: zero_padding = 1;
	ld	-24 (ix),#0x01
	jp	00101$
00107$:
;../printf_large.c:514: decimals = 10*decimals + c - '0';
	ld	l,-28 (ix)
	ld	c,l
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	ld	a,l
	add	a, -4 (ix)
	add	a,#0xD0
	ld	-28 (ix),a
;../printf_large.c:516: goto get_conversion_spec;
	jp	00101$
00110$:
;../printf_large.c:519: if (c=='.')
	ld	a,-4 (ix)
	sub	a, #0x2E
	jr	NZ,00115$
;../printf_large.c:521: if (decimals==-1)
	ld	a,-28 (ix)
	inc	a
	jp	NZ,00101$
;../printf_large.c:522: decimals=0;
	ld	-28 (ix),#0x00
;../printf_large.c:525: goto get_conversion_spec;
	jp	00101$
00115$:
;../printf_large.c:528: if (islower(c))
	ld	h,-4 (ix)
	ld	a,h
	sub	a, #0x61
	jr	C,00117$
	ld	a,#0x7A
	sub	a, h
	jr	C,00117$
;../printf_large.c:530: c = toupper(c);
	res	5, -4 (ix)
;../printf_large.c:531: lower_case = 1;
	ld	-34 (ix),#0x01
	jr	00118$
00117$:
;../printf_large.c:534: lower_case = 0;
	ld	-34 (ix),#0x00
00118$:
;../printf_large.c:536: switch( c )
	ld	a,-4 (ix)
	sub	a, #0x20
	jp	Z,00122$
	ld	a,-4 (ix)
	sub	a, #0x2B
	jp	Z,00121$
	ld	a,-4 (ix)
	sub	a, #0x2D
	jp	Z,00120$
	ld	a,-4 (ix)
	sub	a, #0x42
	jp	Z,00123$
	ld	a,-4 (ix)
	sub	a, #0x43
	jp	Z,00129$
	ld	a,-4 (ix)
	sub	a, #0x44
	jp	Z,00154$
	ld	a,-4 (ix)
	sub	a, #0x46
	jp	Z,00158$
	ld	a,-4 (ix)
	sub	a, #0x48
	jp	Z,00101$
	ld	a,-4 (ix)
	sub	a, #0x49
	jp	Z,00154$
	ld	a,-4 (ix)
	sub	a, #0x4A
	jp	Z,00101$
	ld	a,-4 (ix)
	sub	a, #0x4C
	jp	Z,00128$
	ld	a,-4 (ix)
	sub	a, #0x4F
	jp	Z,00155$
	ld	a,-4 (ix)
	sub	a, #0x50
	jp	Z,00152$
	ld	a,-4 (ix)
	sub	a, #0x53
	jp	Z,00133$
	ld	a,-4 (ix)
	sub	a, #0x54
	jp	Z,00101$
	ld	a,-4 (ix)
	sub	a, #0x55
	jp	Z,00156$
	ld	a,-4 (ix)
	sub	a, #0x58
	jp	Z,00157$
	ld	a,-4 (ix)
	sub	a, #0x5A
	jp	Z,00101$
	jp	00159$
;../printf_large.c:538: case '-':
00120$:
;../printf_large.c:539: left_justify = 1;
	ld	-33 (ix),#0x01
;../printf_large.c:540: goto get_conversion_spec;
	jp	00101$
;../printf_large.c:541: case '+':
00121$:
;../printf_large.c:542: prefix_sign = 1;
	ld	-25 (ix),#0x01
;../printf_large.c:543: goto get_conversion_spec;
	jp	00101$
;../printf_large.c:544: case ' ':
00122$:
;../printf_large.c:545: prefix_space = 1;
	ld	-31 (ix),#0x01
;../printf_large.c:546: goto get_conversion_spec;
	jp	00101$
;../printf_large.c:547: case 'B': /* byte */
00123$:
;../printf_large.c:548: char_argument = 1;
	ld	-41 (ix),#0x01
;../printf_large.c:549: goto get_conversion_spec;
	jp	00101$
;../printf_large.c:556: case 'L': /* long */
00128$:
;../printf_large.c:557: long_argument = 1;
	ld	-26 (ix),#0x01
;../printf_large.c:558: goto get_conversion_spec;
	jp	00101$
;../printf_large.c:560: case 'C':
00129$:
;../printf_large.c:561: if( char_argument )
	bit	0,-41 (ix)
	jr	Z,00131$
;../printf_large.c:562: c = va_arg(ap,char);
	ld	a,10 (ix)
	add	a, #0x01
	ld	-6 (ix),a
	ld	a,11 (ix)
	adc	a, #0x00
	ld	-5 (ix),a
	ld	a,-6 (ix)
	ld	10 (ix),a
	ld	a,-5 (ix)
	ld	11 (ix),a
	dec	42 (sp)
	ld	hl, 42 (sp)
	ld	hl, 42 (sp)
	ld	a,(hl)
	ld	-30 (ix),a
	jp	00132$
00131$:
;../printf_large.c:564: c = va_arg(ap,int);
	ld	a,10 (ix)
	add	a, #0x02
	ld	-6 (ix),a
	ld	a,11 (ix)
	adc	a, #0x00
	ld	-5 (ix),a
	ld	a,-6 (ix)
	ld	10 (ix),a
	ld	a,-5 (ix)
	ld	11 (ix),a
	ld	hl, 42 (sp)
	dec	hl
	dec	hl
	ld	42 (sp), hl
	ld	hl, 42 (sp)
	ld	a,(hl)
	ld	-6 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-5 (ix),a
	ld	a,-6 (ix)
	ld	-30 (ix),a
00132$:
;../printf_large.c:565: OUTPUT_CHAR( c, p );
	ld	hl, 54 (sp)
	push	hl
	ld	a,-30 (ix)
	push	af
	inc	sp
	ld	hl, 55 (sp)
	call	__sdcc_call_hl
	add	sp, #3
	inc	-2 (ix)
	jp	NZ,00160$
	inc	-1 (ix)
;../printf_large.c:566: break;
	jp	00160$
;../printf_large.c:568: case 'S':
00133$:
;../printf_large.c:569: PTR = va_arg(ap,ptr_t);
	ld	hl,#0x0009
	add	hl,sp
	ld	42 (sp), hl
	ld	hl, 58 (sp)
	inc	hl
	inc	hl
	ld	58 (sp), hl
	dec	hl
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl, 42 (sp)
	ld	(hl),e
	inc	hl
	ld	(hl),d
;../printf_large.c:582: length = strlen(PTR);
	push	de
	call	_strlen
	add	sp, #2
	ld	-3 (ix),l
;../printf_large.c:584: if ( decimals == -1 )
	ld	a,-28 (ix)
	inc	a
	jr	NZ,00135$
;../printf_large.c:586: decimals = length;
	ld	a,-3 (ix)
	ld	-28 (ix),a
00135$:
;../printf_large.c:588: if ( ( !left_justify ) && (length < width) )
	bit	0,-33 (ix)
	jp	NZ,00277$
	ld	a,-3 (ix)
	sub	a, -14 (ix)
	jp	NC,00277$
;../printf_large.c:590: width -= length;
	ld	a,-14 (ix)
	sub	a, -3 (ix)
	ld	d,a
;../printf_large.c:591: while( width-- != 0 )
	ld	c,-2 (ix)
	ld	b,-1 (ix)
00136$:
	ld	h,d
	dec	d
	ld	a,h
	or	a, a
	jr	Z,00312$
;../printf_large.c:593: OUTPUT_CHAR( ' ', p );
	push	bc
	push	de
	ld	hl, 58 (sp)
	push	hl
	ld	a,#0x20
	push	af
	inc	sp
	ld	hl, 59 (sp)
	call	__sdcc_call_hl
	add	sp, #3
	pop	de
	pop	bc
	inc	bc
	jr	00136$
;../printf_large.c:597: while ( (c = *PTR)  && (decimals-- > 0))
00312$:
	ld	-2 (ix),c
	ld	-1 (ix),b
	ld	-14 (ix),d
00277$:
	ld	a,-28 (ix)
	ld	-19 (ix),a
	ld	a,-2 (ix)
	ld	-13 (ix),a
	ld	a,-1 (ix)
	ld	-12 (ix),a
00143$:
	ld	hl, 42 (sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ld	-11 (ix),a
	or	a, a
	jp	Z,00313$
	ld	l,-19 (ix)
	dec	-19 (ix)
	xor	a, a
	sub	a, l
	jp	PO, 00583$
	xor	a, #0x80
00583$:
	jp	P,00313$
;../printf_large.c:599: OUTPUT_CHAR( c, p );
	ld	hl, 54 (sp)
	push	hl
	ld	a,-11 (ix)
	push	af
	inc	sp
	ld	hl, 55 (sp)
	call	__sdcc_call_hl
	add	sp, #3
	inc	-13 (ix)
	jr	NZ,00584$
	inc	-12 (ix)
00584$:
;../printf_large.c:600: PTR++;
	ld	hl, 42 (sp)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	inc	bc
	ld	d,c
	ld	hl, 42 (sp)
	ld	(hl),d
	inc	hl
	ld	(hl),b
	jp	00143$
00313$:
	ld	a,-13 (ix)
	ld	-2 (ix),a
	ld	a,-12 (ix)
	ld	-1 (ix),a
;../printf_large.c:603: if ( left_justify && (length < width))
	bit	0,-33 (ix)
	jp	Z,00160$
	ld	a,-3 (ix)
	sub	a, -14 (ix)
	jp	NC,00160$
;../printf_large.c:605: width -= length;
	ld	a,-14 (ix)
	sub	a, -3 (ix)
	ld	c,a
;../printf_large.c:606: while( width-- != 0 )
	ex	de, hl
	ld	hl, 35 (sp)
	ex	de, hl
00146$:
	ld	h,c
	dec	c
	ld	a,h
	or	a, a
	jp	Z,00314$
;../printf_large.c:608: OUTPUT_CHAR( ' ', p );
	push	bc
	push	de
	ld	hl, 58 (sp)
	push	hl
	ld	a,#0x20
	push	af
	inc	sp
	ld	hl, 59 (sp)
	call	__sdcc_call_hl
	add	sp, #3
	pop	de
	pop	bc
	inc	de
	jr	00146$
;../printf_large.c:613: case 'P':
00152$:
;../printf_large.c:614: PTR = va_arg(ap,ptr_t);
	ld	hl,#0x0009
	add	hl,sp
	ex	de,hl
	ld	hl, 58 (sp)
	inc	hl
	inc	hl
	ld	58 (sp), hl
	dec	hl
	dec	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	a,c
	ld	(de),a
	inc	de
	ld	a,b
	ld	(de),a
;../printf_large.c:658: OUTPUT_CHAR('0', p);
	ld	hl, 54 (sp)
	push	hl
	ld	a,#0x30
	push	af
	inc	sp
	ld	hl, 55 (sp)
	call	__sdcc_call_hl
	add	sp, #3
	ex	de, hl
	ld	hl, 46 (sp)
	ex	de, hl
	inc	de
;../printf_large.c:659: OUTPUT_CHAR('x', p);
	push	de
	ld	hl, 56 (sp)
	push	hl
	ld	a,#0x78
	push	af
	inc	sp
	ld	hl, 57 (sp)
	call	__sdcc_call_hl
	add	sp, #3
	pop	de
	inc	de
;../printf_large.c:660: OUTPUT_2DIGITS( value.byte[1] );
	ld	hl,#0x000A
	add	hl,sp
	ld	b,(hl)
	push	de
	ld	hl, 56 (sp)
	push	hl
	ld	hl, 56 (sp)
	push	hl
	ld	a,-34 (ix)
	push	af
	inc	sp
	push	bc
	inc	sp
	call	_output_2digits
	add	sp, #6
	pop	de
	inc	de
	inc	de
;../printf_large.c:661: OUTPUT_2DIGITS( value.byte[0] );
	ld	hl, 32 (sp)
	ld	b,(hl)
	push	de
	ld	hl, 56 (sp)
	push	hl
	ld	hl, 56 (sp)
	push	hl
	ld	a,-34 (ix)
	push	af
	inc	sp
	push	bc
	inc	sp
	call	_output_2digits
	add	sp, #6
	pop	de
	inc	de
	inc	de
	ld	-2 (ix),e
	ld	-1 (ix),d
;../printf_large.c:663: break;
	jp	00160$
;../printf_large.c:666: case 'I':
00154$:
;../printf_large.c:667: signed_argument = 1;
	ld	-40 (ix),#0x01
;../printf_large.c:668: radix = 10;
	ld	-42 (ix),#0x0A
;../printf_large.c:669: break;
	jp	00160$
;../printf_large.c:671: case 'O':
00155$:
;../printf_large.c:672: radix = 8;
	ld	-42 (ix),#0x08
;../printf_large.c:673: break;
	jp	00160$
;../printf_large.c:675: case 'U':
00156$:
;../printf_large.c:676: radix = 10;
	ld	-42 (ix),#0x0A
;../printf_large.c:677: break;
	jr	00160$
;../printf_large.c:679: case 'X':
00157$:
;../printf_large.c:680: radix = 16;
	ld	-42 (ix),#0x10
;../printf_large.c:681: break;
	jr	00160$
;../printf_large.c:683: case 'F':
00158$:
;../printf_large.c:684: float_argument=1;
	ld	-27 (ix),#0x01
;../printf_large.c:685: break;
	jr	00160$
;../printf_large.c:687: default:
00159$:
;../printf_large.c:689: OUTPUT_CHAR( c, p );
	ld	hl, 54 (sp)
	push	hl
	ld	a,-4 (ix)
	push	af
	inc	sp
	ld	hl, 55 (sp)
	call	__sdcc_call_hl
	add	sp, #3
	inc	-2 (ix)
	jr	NZ,00160$
	inc	-1 (ix)
;../printf_large.c:872: return charsOutputted;
	jr	00160$
;../printf_large.c:691: }
00314$:
	ld	-2 (ix),e
	ld	-1 (ix),d
	ld	-14 (ix),c
00160$:
;../printf_large.c:693: if (float_argument)
	bit	0,-27 (ix)
	jp	Z,00226$
;../printf_large.c:695: value.f = va_arg(ap, float);
	ld	hl,#0x0009
	add	hl,sp
	ld	35 (sp), hl
	ld	a,10 (ix)
	add	a, #0x04
	ld	-6 (ix),a
	ld	a,11 (ix)
	adc	a, #0x00
	ld	-5 (ix),a
	ld	a,-6 (ix)
	ld	10 (ix),a
	ld	a,-5 (ix)
	ld	11 (ix),a
	ld	a,-6 (ix)
	add	a,#0xFC
	ld	-6 (ix),a
	ld	a,-5 (ix)
	adc	a,#0xFF
	ld	-5 (ix),a
	ex	de, hl
	ld	hl, 42 (sp)
	ex	de, hl
	ld	hl, #0x0026
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
	ex	de, hl
	ld	hl, 35 (sp)
	ex	de, hl
	ld	hl, #0x0026
	add	hl, sp
	ld	bc, #0x0004
	ldir
;../printf_large.c:697: PTR="<NO FLOAT>";
	ld	hl,#0x0009
	add	hl,sp
	ld	38 (sp), hl
	ld	hl, 38 (sp)
	ld	(hl),#<(__str_0)
	inc	hl
	ld	(hl),#>(__str_0)
;../printf_large.c:698: while (c=*PTR++)
	ex	de, hl
	ld	hl, 46 (sp)
	ex	de, hl
00161$:
	ld	hl, 38 (sp)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,#0x0001
	add	hl,bc
	ld	35 (sp), hl
	ld	hl, 38 (sp)
	ld	a,-13 (ix)
	ld	(hl),a
	inc	hl
	ld	a,-12 (ix)
	ld	(hl),a
	ld	a,(bc)
	ld	b,a
	or	a, a
	jp	Z,00231$
;../printf_large.c:700: OUTPUT_CHAR (c, p);
	push	de
	ld	hl, 56 (sp)
	push	hl
	push	bc
	inc	sp
	ld	hl, 57 (sp)
	call	__sdcc_call_hl
	add	sp, #3
	pop	de
	inc	de
	ld	-2 (ix),e
	ld	-1 (ix),d
	jp	00161$
00226$:
;../printf_large.c:718: else if (radix != 0)
	ld	a,-42 (ix)
	or	a, a
	jp	Z,00231$
;../printf_large.c:723: unsigned char MEM_SPACE_BUF_PP *pstore = &store[5];
	ld	a,-18 (ix)
	ld	-10 (ix),a
	ld	a,-17 (ix)
	ld	-9 (ix),a
;../printf_large.c:726: if (char_argument)
	bit	0,-41 (ix)
	jp	Z,00172$
;../printf_large.c:728: value.l = va_arg(ap, char);
	ld	hl,#0x0009
	add	hl,sp
	ld	35 (sp), hl
	inc	58 (sp)
	ld	hl, 58 (sp)
	dec	hl
	ld	a,(hl)
	ld	e,a
	rla
	sbc	a, a
	ld	d,a
	ld	c,a
	ld	b,a
	ld	hl, 35 (sp)
	ld	(hl),e
	inc	hl
	ld	(hl),d
	inc	hl
	ld	(hl),c
	inc	hl
	ld	(hl),b
;../printf_large.c:729: if (!signed_argument)
	bit	0,-40 (ix)
	jp	NZ,00173$
;../printf_large.c:731: value.l &= 0xFF;
	ld	hl, 35 (sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	hl
	ld	b,(hl)
	inc	hl
	ld	h,(hl)
	ld	d,#0x00
	ld	bc,#0x0000
	ld	hl, 35 (sp)
	ld	(hl),e
	inc	hl
	ld	(hl),d
	inc	hl
	ld	(hl),c
	inc	hl
	ld	(hl),b
	jp	00173$
00172$:
;../printf_large.c:734: else if (long_argument)
	bit	0,-26 (ix)
	jp	Z,00169$
;../printf_large.c:736: value.l = va_arg(ap, long);
	ld	hl,#0x0009
	add	hl,sp
	ld	35 (sp), hl
	ld	a,10 (ix)
	add	a, #0x04
	ld	l,a
	ld	a,11 (ix)
	adc	a, #0x00
	ld	h,a
	ld	58 (sp), hl
	ld	a,l
	add	a,#0xFC
	ld	l,a
	ld	a,h
	adc	a,#0xFF
	ld	h,a
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl, 35 (sp)
	ld	(hl),e
	inc	hl
	ld	(hl),d
	inc	hl
	ld	(hl),c
	inc	hl
	ld	(hl),b
	jp	00173$
00169$:
;../printf_large.c:740: value.l = va_arg(ap, int);
	ld	hl,#0x0009
	add	hl,sp
	ld	35 (sp), hl
	ld	hl, 58 (sp)
	inc	hl
	inc	hl
	ld	58 (sp), hl
	dec	hl
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,d
	rla
	sbc	a, a
	ld	c,a
	ld	b,a
	ld	hl, 35 (sp)
	ld	(hl),e
	inc	hl
	ld	(hl),d
	inc	hl
	ld	(hl),c
	inc	hl
	ld	(hl),b
;../printf_large.c:741: if (!signed_argument)
	bit	0,-40 (ix)
	jr	NZ,00173$
;../printf_large.c:743: value.l &= 0xFFFF;
	ld	hl, 35 (sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	hl
	ld	b,(hl)
	inc	hl
	ld	h,(hl)
	ld	bc,#0x0000
	ld	hl, 35 (sp)
	ld	(hl),e
	inc	hl
	ld	(hl),d
	inc	hl
	ld	(hl),c
	inc	hl
	ld	(hl),b
00173$:
;../printf_large.c:747: if ( signed_argument )
	bit	0,-40 (ix)
	jp	Z,00178$
;../printf_large.c:749: if (value.l < 0)
	ld	hl,#0x0009
	add	hl,sp
	push	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	hl
	ld	b,(hl)
	inc	hl
	ld	c,(hl)
	pop	hl
	bit	7, c
	jp	Z,00175$
;../printf_large.c:750: value.l = -value.l;
	push	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	pop	hl
	xor	a, a
	sub	a, e
	ld	e,a
	ld	a, #0x00
	sbc	a, d
	ld	d,a
	ld	a, #0x00
	sbc	a, c
	ld	c,a
	ld	a, #0x00
	sbc	a, b
	ld	b,a
	ld	(hl),e
	inc	hl
	ld	(hl),d
	inc	hl
	ld	(hl),c
	inc	hl
	ld	(hl),b
	jr	00178$
00175$:
;../printf_large.c:752: signed_argument = 0;
	ld	-40 (ix),#0x00
00178$:
;../printf_large.c:756: lsd = 1;
	ld	-32 (ix),#0x01
;../printf_large.c:758: do {
	ex	de, hl
	ld	hl, 38 (sp)
	ex	de, hl
	ld	-29 (ix),#0x00
00182$:
;../printf_large.c:759: value.byte[4] = 0;
	ld	hl,#0x000D
	add	hl,sp
	ld	(hl),#0x00
;../printf_large.c:761: calculate_digit(&value, radix);
	ld	iy, 27 (sp)
	push	de
	ld	a,-42 (ix)
	push	af
	inc	sp
	push	iy
	call	_calculate_digit
	add	sp, #3
	pop	de
;../printf_large.c:765: if (!lsd)
	bit	0,-32 (ix)
	jp	NZ,00180$
;../printf_large.c:767: *pstore = (value.byte[4] << 4) | (value.byte[4] >> 4) | *pstore;
	ld	hl, 25 (sp)
	ld	a,(hl)
	rlca
	rlca
	rlca
	rlca
	and	a,#0xF0
	ld	b,a
	ld	hl, 25 (sp)
	ld	a,(hl)
	rlca
	rlca
	rlca
	rlca
	and	a,#0x0F
	or	a, b
	ld	b,a
	ld	a,(de)
	or	a, b
	ld	(de),a
;../printf_large.c:768: pstore--;
	dec	de
	jr	00181$
00180$:
;../printf_large.c:772: *pstore = value.byte[4];
	ld	hl, 25 (sp)
	ld	a,(hl)
	ld	(de),a
00181$:
;../printf_large.c:774: length++;
	inc	-29 (ix)
;../printf_large.c:775: lsd = !lsd;
	ld	a,-32 (ix)
	xor	a, #0x01
	ld	-32 (ix),a
;../printf_large.c:776: } while( value.ul );
	push	de
	ex	de, hl
	ld	hl, 29 (sp)
	ex	de, hl
	ld	hl, #0x0028
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
	pop	de
	ld	a,-7 (ix)
	or	a, -8 (ix)
	or	a, -9 (ix)
	or	a,-10 (ix)
	jp	NZ,00182$
;../printf_large.c:778: if (width == 0)
	ld	-10 (ix),e
	ld	-9 (ix),d
	ld	a,-29 (ix)
	ld	-11 (ix),a
	ld	a,-14 (ix)
	or	a, a
	jr	NZ,00186$
;../printf_large.c:783: width = 1;
	ld	-14 (ix),#0x01
00186$:
;../printf_large.c:787: if (!zero_padding && !left_justify)
	bit	0,-24 (ix)
	jp	NZ,00191$
	bit	0,-33 (ix)
	jp	NZ,00191$
;../printf_large.c:789: while ( width > (unsigned char) (length+1) )
	ld	a,-11 (ix)
	inc	a
	ld	-13 (ix),a
	ld	a,-2 (ix)
	ld	-6 (ix),a
	ld	a,-1 (ix)
	ld	-5 (ix),a
	ld	d,-14 (ix)
00187$:
	ld	a,-13 (ix)
	sub	a, d
	jr	NC,00316$
;../printf_large.c:791: OUTPUT_CHAR( ' ', p );
	push	de
	ld	hl, 56 (sp)
	push	hl
	ld	a,#0x20
	push	af
	inc	sp
	ld	hl, 57 (sp)
	call	__sdcc_call_hl
	add	sp, #3
	pop	de
	inc	-6 (ix)
	jr	NZ,00586$
	inc	-5 (ix)
00586$:
;../printf_large.c:792: width--;
	dec	d
	jr	00187$
00316$:
	ld	a,-6 (ix)
	ld	-2 (ix),a
	ld	a,-5 (ix)
	ld	-1 (ix),a
	ld	-14 (ix),d
00191$:
;../printf_large.c:796: if (signed_argument) // this now means the original value was negative
	bit	0,-40 (ix)
	jr	Z,00201$
;../printf_large.c:798: OUTPUT_CHAR( '-', p );
	ld	hl, 54 (sp)
	push	hl
	ld	a,#0x2D
	push	af
	inc	sp
	ld	hl, 55 (sp)
	call	__sdcc_call_hl
	add	sp, #3
	inc	-2 (ix)
	jr	NZ,00587$
	inc	-1 (ix)
00587$:
;../printf_large.c:800: width--;
	dec	-14 (ix)
	jp	00202$
00201$:
;../printf_large.c:802: else if (length != 0)
	ld	a,-11 (ix)
	or	a, a
	jp	Z,00202$
;../printf_large.c:805: if (prefix_sign)
	bit	0,-25 (ix)
	jr	Z,00196$
;../printf_large.c:807: OUTPUT_CHAR( '+', p );
	ld	hl, 54 (sp)
	push	hl
	ld	a,#0x2B
	push	af
	inc	sp
	ld	hl, 55 (sp)
	call	__sdcc_call_hl
	add	sp, #3
	inc	-2 (ix)
	jr	NZ,00588$
	inc	-1 (ix)
00588$:
;../printf_large.c:809: width--;
	dec	-14 (ix)
	jr	00202$
00196$:
;../printf_large.c:811: else if (prefix_space)
	bit	0,-31 (ix)
	jr	Z,00202$
;../printf_large.c:813: OUTPUT_CHAR( ' ', p );
	ld	hl, 54 (sp)
	push	hl
	ld	a,#0x20
	push	af
	inc	sp
	ld	hl, 55 (sp)
	call	__sdcc_call_hl
	add	sp, #3
	inc	-2 (ix)
	jr	NZ,00589$
	inc	-1 (ix)
00589$:
;../printf_large.c:815: width--;
	dec	-14 (ix)
00202$:
;../printf_large.c:820: if (!left_justify)
	bit	0,-33 (ix)
	jp	NZ,00210$
;../printf_large.c:822: while ( width-- > length )
	ld	a,-2 (ix)
	ld	-13 (ix),a
	ld	a,-1 (ix)
	ld	-12 (ix),a
	ld	a,-14 (ix)
	ld	-19 (ix),a
00203$:
	ld	h,-19 (ix)
	dec	-19 (ix)
	ld	a,-11 (ix)
	sub	a, h
	jp	NC,00317$
;../printf_large.c:824: OUTPUT_CHAR( zero_padding ? '0' : ' ', p );
	bit	0,-24 (ix)
	jr	Z,00236$
	ld	-3 (ix),#0x30
	jr	00237$
00236$:
	ld	-3 (ix),#0x20
00237$:
	ld	hl, 54 (sp)
	push	hl
	ld	a,-3 (ix)
	push	af
	inc	sp
	ld	hl, 55 (sp)
	call	__sdcc_call_hl
	add	sp, #3
	inc	-13 (ix)
	jr	NZ,00203$
	inc	-12 (ix)
	jp	00203$
00210$:
;../printf_large.c:830: if (width > length)
	ld	a,-11 (ix)
	sub	a, -14 (ix)
	jr	NC,00207$
;../printf_large.c:831: width -= length;
	ld	a,-14 (ix)
	sub	a, -11 (ix)
	ld	c,a
	jr	00309$
00207$:
;../printf_large.c:833: width = 0;
	ld	c,#0x00
;../printf_large.c:872: return charsOutputted;
	jr	00309$
;../printf_large.c:837: while( length-- )
00317$:
	ld	a,-13 (ix)
	ld	-2 (ix),a
	ld	a,-12 (ix)
	ld	-1 (ix),a
	ld	c,-19 (ix)
00309$:
	ex	de, hl
	ld	hl, 38 (sp)
	ex	de, hl
	ld	a,-2 (ix)
	ld	-10 (ix),a
	ld	a,-1 (ix)
	ld	-9 (ix),a
00215$:
	ld	h,-11 (ix)
	dec	-11 (ix)
	ld	a,h
	or	a, a
	jp	Z,00318$
;../printf_large.c:839: lsd = !lsd;
	ld	a,-32 (ix)
	xor	a, #0x01
	ld	-32 (ix),a
;../printf_large.c:840: if (!lsd)
	bit	0,-32 (ix)
	jr	NZ,00213$
;../printf_large.c:842: pstore++;
	inc	de
;../printf_large.c:843: value.byte[4] = *pstore >> 4;
	ld	a,(de)
	rlca
	rlca
	rlca
	rlca
	and	a,#0x0F
	ld	hl, 25 (sp)
	ld	(hl),a
	jr	00214$
00213$:
;../printf_large.c:847: value.byte[4] = *pstore & 0x0F;
	ld	a,(de)
	and	a, #0x0F
	ld	hl, 25 (sp)
	ld	(hl),a
00214$:
;../printf_large.c:850: output_digit( value.byte[4], lower_case, output_char, p );
	ld	hl, 25 (sp)
	ld	b,(hl)
	push	bc
	push	de
	ld	hl, 58 (sp)
	push	hl
	ld	hl, 58 (sp)
	push	hl
	ld	a,-34 (ix)
	push	af
	inc	sp
	push	bc
	inc	sp
	call	_output_digit
	add	sp, #6
	pop	de
	pop	bc
;../printf_large.c:851: charsOutputted++;
	inc	-10 (ix)
	jp	NZ,00215$
	inc	-9 (ix)
	jp	00215$
00318$:
	ld	a,-10 (ix)
	ld	-2 (ix),a
	ld	a,-9 (ix)
	ld	-1 (ix),a
;../printf_large.c:856: if (left_justify)
	bit	0,-33 (ix)
	jp	Z,00231$
;../printf_large.c:858: while (width-- > 0)
	ex	de, hl
	ld	hl, 38 (sp)
	ex	de, hl
00218$:
	ld	h,c
	dec	c
	ld	a,h
	or	a, a
	jp	Z,00231$
;../printf_large.c:860: OUTPUT_CHAR(' ', p);
	push	bc
	push	de
	ld	hl, 58 (sp)
	push	hl
	ld	a,#0x20
	push	af
	inc	sp
	ld	hl, 59 (sp)
	call	__sdcc_call_hl
	add	sp, #3
	pop	de
	pop	bc
	inc	de
	ld	-2 (ix),e
	ld	-1 (ix),d
	jr	00218$
00229$:
;../printf_large.c:868: OUTPUT_CHAR( c, p );
	ld	hl, 54 (sp)
	push	hl
	push	de
	inc	sp
	ld	hl, 55 (sp)
	call	__sdcc_call_hl
	add	sp, #3
	inc	-2 (ix)
	jp	NZ,00231$
	inc	-1 (ix)
	jp	00231$
00233$:
;../printf_large.c:872: return charsOutputted;
	ld	hl, 46 (sp)
	ld	sp, ix
	pop	ix
	ret
__print_format_end::
__str_0:
	.ascii "<NO FLOAT>"
	.db 0x00
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
