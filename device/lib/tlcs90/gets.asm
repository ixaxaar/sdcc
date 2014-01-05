;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:28 2013
;--------------------------------------------------------
	.module gets
	.optsdcc -mtlcs90
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _putchar
	.globl _getchar
	.globl _gets
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
;../gets.c:32: gets (char *s)
;	---------------------------------
; Function gets
; ---------------------------------
_gets_start::
_gets:
	add	sp, #-2
;../gets.c:35: unsigned int count = 0;
	ld	hl,#0x0000
	ex	(sp), hl
;../gets.c:37: while (1)
00109$:
;../gets.c:39: c = getchar ();
	call	_getchar
	ld	b,l
;../gets.c:40: switch(c)
	ld	a,b
	sub	a, #0x08
	jr	Z,00101$
;../gets.c:57: *s = 0;
	ex	de, hl
	ld	hl, 4 (sp)
	ex	de, hl
;../gets.c:40: switch(c)
	ld	a,b
	cp	a,#0x0A
	jp	Z,00105$
	sub	a, #0x0D
	jp	Z,00105$
	jp	00106$
;../gets.c:42: case '\b': /* backspace */
00101$:
;../gets.c:43: if (count)
	ld	hl, #0+1
	add	hl, sp
	ld	a, (hl)
	dec	hl
	or	a,(hl)
	jr	Z,00109$
;../gets.c:45: putchar ('\b');
	ld	a,#0x08
	push	af
	inc	sp
	call	_putchar
	inc	sp
;../gets.c:46: putchar (' ');
	ld	a,#0x20
	push	af
	inc	sp
	call	_putchar
	inc	sp
;../gets.c:47: putchar ('\b');
	ld	a,#0x08
	push	af
	inc	sp
	call	_putchar
	inc	sp
;../gets.c:48: --s;
	dec	4 (sp)
	ld	hl, 4 (sp)
;../gets.c:49: --count;
	pop	hl
	push	hl
	dec	hl
	ex	(sp), hl
;../gets.c:51: break;
	jp	00109$
;../gets.c:54: case '\r': /* CR or LF */
00105$:
;../gets.c:55: putchar ('\r');
	push	de
	ld	a,#0x0D
	push	af
	inc	sp
	call	_putchar
	inc	sp
	ld	a,#0x0A
	push	af
	inc	sp
	call	_putchar
	inc	sp
	pop	de
;../gets.c:57: *s = 0;
	xor	a, a
	ld	(de),a
;../gets.c:58: return s;
	ex	de,hl
	jr	00111$
;../gets.c:60: default:
00106$:
;../gets.c:61: *s++ = c;
	ld	a,b
	ld	(de),a
	inc	de
	ld	iy,#4
	add	iy,sp
	ld	0 (iy),e
	ld	1 (iy),d
;../gets.c:62: ++count;
	ld	iy,#0
	add	iy,sp
	inc	0 (iy)
	jr	NZ,00136$
	inc	1 (iy)
00136$:
;../gets.c:63: putchar (c);
	push	bc
	inc	sp
	call	_putchar
	inc	sp
;../gets.c:65: }
	jp	00109$
00111$:
	add	sp, #2
	ret
_gets_end::
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
