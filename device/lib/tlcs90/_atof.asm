;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:17 2013
;--------------------------------------------------------
	.module _atof
	.optsdcc -mtlcs90
	
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
;../_atof.c:33: float atof(const char * s)
;	---------------------------------
; Function atof
; ---------------------------------
_atof_start::
_atof:
	push	ix
	ld	ix,#0
	add	ix,sp
	add	sp, #-25
;../_atof.c:40: while (isspace(*s)) s++;
	ld	hl, 29 (sp)
00101$:
	ld	d,(hl)
	push	hl
	push	de
	inc	sp
	call	_isspace
	inc	sp
	ld	b,l
	pop	hl
	ld	e, l
	ld	d, h
	inc	de
	ld	a,b
	or	a, a
	jr	Z,00148$
	ld	l, e
	ld	h, d
	jr	00101$
00148$:
	ld	29 (sp), hl
;../_atof.c:43: if (*s == '-')
	ld	h,(hl)
	ld	a,h
	sub	a, #0x2D
	jr	NZ,00107$
;../_atof.c:45: sign=1;
	ld	-25 (ix),#0x01
;../_atof.c:46: s++;
	ld	4 (ix),e
	ld	5 (ix),d
	jr	00108$
00107$:
;../_atof.c:50: sign=0;
	ld	-25 (ix),#0x00
;../_atof.c:51: if (*s == '+') s++;
	ld	a,h
	sub	a, #0x2B
	jr	NZ,00108$
	ld	4 (ix),e
	ld	5 (ix),d
00108$:
;../_atof.c:55: for (value=0.0; isdigit(*s); s++)
	ld	-20 (ix),#0x00
	ld	-19 (ix),#0x00
	ld	-18 (ix),#0x00
	ld	-17 (ix),#0x00
	ld	a,4 (ix)
	ld	-15 (ix),a
	ld	a,5 (ix)
	ld	-14 (ix),a
00124$:
	ld	hl, 10 (sp)
	ld	h,(hl)
	push	hl
	inc	sp
	call	_isdigit
	inc	sp
	ld	-16 (ix),l
	ld	hl, 10 (sp)
	ld	a,(hl)
	ld	-7 (ix),a
	ld	a,-15 (ix)
	add	a, #0x01
	ld	-9 (ix),a
	ld	a,-14 (ix)
	adc	a, #0x00
	ld	-8 (ix),a
	ld	a,-16 (ix)
	or	a, a
	jp	Z,00149$
;../_atof.c:57: value=10.0*value+(*s-'0');
	ld	hl, 7 (sp)
	push	hl
	ld	hl, 7 (sp)
	push	hl
	ld	hl,#0x4120
	push	hl
	ld	hl,#0x0000
	push	hl
	call	___fsmul
	add	sp, #8
	ld	-10 (ix),d
	ld	-11 (ix),e
	ld	-12 (ix),h
	ld	-13 (ix),l
	ld	a,-7 (ix)
	ld	-2 (ix),a
	ld	a,-7 (ix)
	rla
	sbc	a, a
	ld	-1 (ix),a
	ld	a,-2 (ix)
	add	a,#0xD0
	ld	-2 (ix),a
	ld	a,-1 (ix)
	adc	a,#0xFF
	ld	-1 (ix),a
	ld	hl, 23 (sp)
	push	hl
	call	___sint2fs
	add	sp, #2
	ld	-3 (ix),d
	ld	-4 (ix),e
	ld	-5 (ix),h
	ld	-6 (ix),l
	ld	hl, 21 (sp)
	push	hl
	ld	hl, 21 (sp)
	push	hl
	ld	hl, 18 (sp)
	push	hl
	ld	hl, 18 (sp)
	push	hl
	call	___fsadd
	add	sp, #8
	ld	-3 (ix),d
	ld	-4 (ix),e
	ld	-5 (ix),h
	ld	-6 (ix),l
	ld	hl, #5
	add	hl, sp
	ex	de, hl
	ld	hl, #19
	add	hl, sp
	ld	bc, #4
	ldir
;../_atof.c:55: for (value=0.0; isdigit(*s); s++)
	ld	a,-9 (ix)
	ld	-15 (ix),a
	ld	a,-8 (ix)
	ld	-14 (ix),a
	jp	00124$
00149$:
	ld	a,-15 (ix)
	ld	4 (ix),a
	ld	a,-14 (ix)
	ld	5 (ix),a
;../_atof.c:61: if (*s == '.')
	ld	a,-7 (ix)
	sub	a, #0x2E
	jp	NZ,00112$
;../_atof.c:64: for (fraction=0.1; isdigit(*s); s++)
	ld	-24 (ix),#0xCD
	ld	-23 (ix),#0xCC
	ld	-22 (ix),#0xCC
	ld	-21 (ix),#0x3D
	ld	a,-9 (ix)
	ld	-6 (ix),a
	ld	a,-8 (ix)
	ld	-5 (ix),a
00127$:
	ld	hl, 19 (sp)
	ld	h,(hl)
	push	hl
	inc	sp
	call	_isdigit
	inc	sp
	ld	a,l
	or	a, a
	jp	Z,00150$
;../_atof.c:66: value+=(*s-'0')*fraction;
	ld	hl, 19 (sp)
	ld	a,(hl)
	ld	h,a
	rla
	sbc	a, a
	ld	l,a
	ld	a,h
	add	a,#0xD0
	ld	e,a
	ld	a,l
	adc	a,#0xFF
	ld	d,a
	push	de
	call	___sint2fs
	add	sp, #2
	ld	c,l
	ld	b,h
	ld	hl, 3 (sp)
	push	hl
	ld	hl, 3 (sp)
	push	hl
	push	de
	push	bc
	call	___fsmul
	add	sp, #8
	ex	de, hl
	push	hl
	push	de
	ld	hl, 11 (sp)
	push	hl
	ld	hl, 11 (sp)
	push	hl
	call	___fsadd
	add	sp, #8
	ld	-20 (ix),l
	ld	-19 (ix),h
	ld	-18 (ix),e
	ld	-17 (ix),d
;../_atof.c:67: fraction*=0.1;
	ld	hl, 3 (sp)
	push	hl
	ld	hl, 3 (sp)
	push	hl
	ld	hl,#0x3DCC
	push	hl
	ld	hl,#0xCCCD
	push	hl
	call	___fsmul
	add	sp, #8
	ld	-24 (ix),l
	ld	-23 (ix),h
	ld	-22 (ix),e
	ld	-21 (ix),d
;../_atof.c:64: for (fraction=0.1; isdigit(*s); s++)
	inc	-6 (ix)
	jp	NZ,00127$
	inc	-5 (ix)
	jp	00127$
00150$:
	ld	a,-6 (ix)
	ld	4 (ix),a
	ld	a,-5 (ix)
	ld	5 (ix),a
00112$:
;../_atof.c:72: if (toupper(*s)=='E')
	ld	a,4 (ix)
	ld	-6 (ix),a
	ld	a,5 (ix)
	ld	-5 (ix),a
	ld	hl, 19 (sp)
	ld	h,(hl)
	push	hl
	inc	sp
	call	_islower
	inc	sp
	ld	a,l
	ld	hl, 19 (sp)
	ld	h,(hl)
	or	a, a
	jr	Z,00131$
	res	5, h
00131$:
	ld	a,h
	sub	a, #0x45
	jp	NZ,00120$
;../_atof.c:74: s++;
	ld	hl, 19 (sp)
	inc	hl
;../_atof.c:75: iexp=(signed char)atoi(s);
	push	hl
	call	_atoi
	add	sp, #2
	ld	b,l
;../_atof.c:77: while(iexp!=0)
00116$:
	ld	a,b
	or	a, a
	jp	Z,00120$
;../_atof.c:79: if(iexp<0)
	bit	7, b
	jr	Z,00114$
;../_atof.c:81: value*=0.1;
	push	bc
	ld	hl, 9 (sp)
	push	hl
	ld	hl, 9 (sp)
	push	hl
	ld	hl,#0x3DCC
	push	hl
	ld	hl,#0xCCCD
	push	hl
	call	___fsmul
	add	sp, #8
	pop	bc
	ld	-20 (ix),l
	ld	-19 (ix),h
	ld	-18 (ix),e
	ld	-17 (ix),d
;../_atof.c:82: iexp++;
	inc	b
	jp	00116$
00114$:
;../_atof.c:86: value*=10.0;
	push	bc
	ld	hl, 9 (sp)
	push	hl
	ld	hl, 9 (sp)
	push	hl
	ld	hl,#0x4120
	push	hl
	ld	hl,#0x0000
	push	hl
	call	___fsmul
	add	sp, #8
	pop	bc
	ld	-20 (ix),l
	ld	-19 (ix),h
	ld	-18 (ix),e
	ld	-17 (ix),d
;../_atof.c:87: iexp--;
	dec	b
	jp	00116$
00120$:
;../_atof.c:93: if(sign) value*=-1.0;
	bit	0,-25 (ix)
	jr	Z,00122$
	ld	a,-17 (ix)
	xor	a,#0x80
	ld	-17 (ix),a
00122$:
;../_atof.c:94: return (value);
	ld	l,-20 (ix)
	ld	h,-19 (ix)
	ld	e,-18 (ix)
	ld	d,-17 (ix)
	ld	sp, ix
	pop	ix
	ret
_atof_end::
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
