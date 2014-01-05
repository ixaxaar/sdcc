;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:32 2013
;--------------------------------------------------------
	.module _atof
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _atoi
	.globl _isspace
	.globl _islower
	.globl _isdigit
	.globl _atof
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area INITIALIZED
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area DABS (ABS)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME
	.area GSINIT
	.area GSFINAL
	.area GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME
	.area HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CODE
;	../_atof.c: 33: float atof(const char * s)
;	-----------------------------------------
;	 function atof
;	-----------------------------------------
_atof:
	sub	sp, #37
;	../_atof.c: 40: while (isspace(*s)) s++;
	ldw	x, (0x28, sp)
00101$:
	ld	a, (x)
	pushw	x
	push	a
	call	_isspace
	addw	sp, #1
	popw	x
	ldw	y, x
	incw	y
	tnz	a
	jreq	00148$
	ldw	x, y
	jra	00101$
00148$:
	ldw	(0x28, sp), x
;	../_atof.c: 43: if (*s == '-')
	ld	a, (x)
	cp	a, #0x2d
	jrne	00107$
;	../_atof.c: 45: sign=1;
	ld	a, #0x01
	ld	(0x01, sp), a
;	../_atof.c: 46: s++;
	ldw	(0x28, sp), y
	jra	00108$
00107$:
;	../_atof.c: 50: sign=0;
	clr	(0x01, sp)
;	../_atof.c: 51: if (*s == '+') s++;
	cp	a, #0x2b
	jrne	00108$
	ldw	(0x28, sp), y
00108$:
;	../_atof.c: 55: for (value=0.0; isdigit(*s); s++)
	clrw	x
	ldw	(0x09, sp), x
	ldw	(0x07, sp), x
	ldw	y, (0x28, sp)
	ldw	(0x1e, sp), y
00124$:
	ldw	x, (0x1e, sp)
	ld	a, (x)
	push	a
	call	_isdigit
	addw	sp, #1
	ld	(0x0f, sp), a
	ldw	x, (0x1e, sp)
	ld	a, (x)
	ld	(0x18, sp), a
	ldw	x, (0x1e, sp)
	incw	x
	ldw	(0x1c, sp), x
	tnz	(0x0f, sp)
	jreq	00149$
;	../_atof.c: 57: value=10.0*value+(*s-'0');
	ldw	x, (0x09, sp)
	pushw	x
	ldw	x, (0x09, sp)
	pushw	x
	clrw	x
	pushw	x
	push	#0x20
	push	#0x41
	call	___fsmul
	addw	sp, #8
	ldw	(0x24, sp), x
	ldw	(0x22, sp), y
	ld	a, (0x18, sp)
	ld	xl, a
	ld	a, xl
	rlc	a
	clr	a
	sbc	a, #0x00
	ld	xh, a
	subw	x, #0x0030
	pushw	x
	call	___sint2fs
	addw	sp, #2
	pushw	x
	pushw	y
	ldw	x, (0x28, sp)
	pushw	x
	ldw	x, (0x28, sp)
	pushw	x
	call	___fsadd
	addw	sp, #8
	ldw	(0x09, sp), x
	ldw	(0x07, sp), y
;	../_atof.c: 55: for (value=0.0; isdigit(*s); s++)
	ldw	y, (0x1c, sp)
	ldw	(0x1e, sp), y
	jra	00124$
00149$:
	ldw	y, (0x1e, sp)
	ldw	(0x28, sp), y
;	../_atof.c: 61: if (*s == '.')
	ld	a, (0x18, sp)
	cp	a, #0x2e
	jreq	00206$
	jp	00112$
00206$:
;	../_atof.c: 64: for (fraction=0.1; isdigit(*s); s++)
	ldw	x, #0xcccd
	ldw	(0x05, sp), x
	ldw	x, #0x3dcc
	ldw	(0x03, sp), x
	ldw	y, (0x1c, sp)
	ldw	(0x20, sp), y
00127$:
	ldw	x, (0x20, sp)
	ld	a, (x)
	push	a
	call	_isdigit
	addw	sp, #1
	tnz	a
	jreq	00150$
;	../_atof.c: 66: value+=(*s-'0')*fraction;
	ldw	x, (0x20, sp)
	ld	a, (x)
	ld	xl, a
	ld	a, xl
	rlc	a
	clr	a
	sbc	a, #0x00
	ld	xh, a
	subw	x, #0x0030
	pushw	x
	call	___sint2fs
	addw	sp, #2
	ldw	(0x14, sp), x
	ldw	x, (0x05, sp)
	pushw	x
	ldw	x, (0x05, sp)
	pushw	x
	ldw	x, (0x18, sp)
	pushw	x
	pushw	y
	call	___fsmul
	addw	sp, #8
	pushw	x
	pushw	y
	ldw	x, (0x0d, sp)
	pushw	x
	ldw	x, (0x0d, sp)
	pushw	x
	call	___fsadd
	addw	sp, #8
	ldw	(0x09, sp), x
	ldw	(0x07, sp), y
;	../_atof.c: 67: fraction*=0.1;
	ldw	x, (0x05, sp)
	pushw	x
	ldw	x, (0x05, sp)
	pushw	x
	push	#0xcd
	push	#0xcc
	push	#0xcc
	push	#0x3d
	call	___fsmul
	addw	sp, #8
	ldw	(0x05, sp), x
	ldw	(0x03, sp), y
;	../_atof.c: 64: for (fraction=0.1; isdigit(*s); s++)
	ldw	x, (0x20, sp)
	incw	x
	ldw	(0x20, sp), x
	jra	00127$
00150$:
	ldw	y, (0x20, sp)
	ldw	(0x28, sp), y
00112$:
;	../_atof.c: 72: if (toupper(*s)=='E')
	ldw	y, (0x28, sp)
	ldw	(0x10, sp), y
	ldw	x, (0x10, sp)
	ld	a, (x)
	push	a
	call	_islower
	addw	sp, #1
	ld	(0x1b, sp), a
	ldw	x, (0x10, sp)
	ld	a, (x)
	tnz	(0x1b, sp)
	jreq	00131$
	and	a, #0xdf
00131$:
	cp	a, #0x45
	jrne	00120$
;	../_atof.c: 74: s++;
	ldw	x, (0x10, sp)
	incw	x
;	../_atof.c: 75: iexp=(signed char)atoi(s);
	pushw	x
	call	_atoi
	addw	sp, #2
	ldw	(0x19, sp), x
	ld	a, (0x1a, sp)
	ld	(0x02, sp), a
;	../_atof.c: 77: while(iexp!=0)
00116$:
	tnz	(0x02, sp)
	jreq	00120$
;	../_atof.c: 79: if(iexp<0)
	ld	a, (0x02, sp)
	cp	a, #0x00
	jrsge	00114$
;	../_atof.c: 81: value*=0.1;
	ldw	x, (0x09, sp)
	pushw	x
	ldw	x, (0x09, sp)
	pushw	x
	push	#0xcd
	push	#0xcc
	push	#0xcc
	push	#0x3d
	call	___fsmul
	addw	sp, #8
	ldw	(0x09, sp), x
	ldw	(0x07, sp), y
;	../_atof.c: 82: iexp++;
	ld	a, (0x02, sp)
	inc	a
	ld	(0x17, sp), a
	ld	a, (0x17, sp)
	ld	(0x02, sp), a
	jra	00116$
00114$:
;	../_atof.c: 86: value*=10.0;
	ldw	x, (0x09, sp)
	pushw	x
	ldw	x, (0x09, sp)
	pushw	x
	clrw	x
	pushw	x
	push	#0x20
	push	#0x41
	call	___fsmul
	addw	sp, #8
	ldw	(0x09, sp), x
	ldw	(0x07, sp), y
;	../_atof.c: 87: iexp--;
	ld	a, (0x02, sp)
	dec	a
	ld	(0x16, sp), a
	ld	a, (0x16, sp)
	ld	(0x02, sp), a
	jra	00116$
00120$:
;	../_atof.c: 93: if(sign) value*=-1.0;
	tnz	(0x01, sp)
	jreq	00122$
	ldw	y, (0x08, sp)
	push	a
	ld	a, (0x0b, sp)
	ld	(0x0f, sp), a
	pop	a
	ld	a, (0x07, sp)
	xor	a, #0x80
	ldw	(0x08, sp), y
	ld	(0x07, sp), a
	ld	a, (0x0e, sp)
	ld	(0x0a, sp), a
00122$:
;	../_atof.c: 94: return (value);
	ldw	x, (0x09, sp)
	ldw	y, (0x07, sp)
	addw	sp, #37
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
