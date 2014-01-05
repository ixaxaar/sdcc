;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:58 2013
;--------------------------------------------------------
	.module gets
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _putchar
	.globl _getchar
	.globl _gets
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
;	../gets.c: 32: gets (char *s)
;	-----------------------------------------
;	 function gets
;	-----------------------------------------
_gets:
	sub	sp, #4
;	../gets.c: 35: unsigned int count = 0;
	clrw	x
	ldw	(0x01, sp), x
;	../gets.c: 37: while (1)
00109$:
;	../gets.c: 39: c = getchar ();
	call	_getchar
;	../gets.c: 40: switch(c)
	cp	a, #0x08
	jreq	00101$
;	../gets.c: 57: *s = 0;
	ldw	x, (0x07, sp)
;	../gets.c: 40: switch(c)
	cp	a, #0x0a
	jreq	00105$
	cp	a, #0x0d
	jreq	00105$
	jra	00106$
;	../gets.c: 42: case '\b': /* backspace */
00101$:
;	../gets.c: 43: if (count)
	ldw	x, (0x01, sp)
	jreq	00109$
;	../gets.c: 45: putchar ('\b');
	push	#0x08
	call	_putchar
	pop	a
;	../gets.c: 46: putchar (' ');
	push	#0x20
	call	_putchar
	pop	a
;	../gets.c: 47: putchar ('\b');
	push	#0x08
	call	_putchar
	pop	a
;	../gets.c: 48: --s;
	ldw	x, (0x07, sp)
	decw	x
	ldw	(0x07, sp), x
;	../gets.c: 49: --count;
	ldw	x, (0x01, sp)
	decw	x
	ldw	(0x01, sp), x
;	../gets.c: 51: break;
	jra	00109$
;	../gets.c: 54: case '\r': /* CR or LF */
00105$:
;	../gets.c: 55: putchar ('\r');
	pushw	x
	push	#0x0d
	call	_putchar
	pop	a
	popw	x
;	../gets.c: 56: putchar ('\n');
	pushw	x
	push	#0x0a
	call	_putchar
	pop	a
	popw	x
;	../gets.c: 57: *s = 0;
	clr	(x)
;	../gets.c: 58: return s;
	jra	00111$
;	../gets.c: 60: default:
00106$:
;	../gets.c: 61: *s++ = c;
	ld	(x), a
	incw	x
	ldw	(0x07, sp), x
;	../gets.c: 62: ++count;
	ldw	x, (0x01, sp)
	incw	x
	ldw	(0x03, sp), x
	ldw	y, (0x03, sp)
	ldw	(0x01, sp), y
;	../gets.c: 63: putchar (c);
	push	a
	call	_putchar
	pop	a
;	../gets.c: 65: }
	jp	00109$
00111$:
	addw	sp, #4
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
