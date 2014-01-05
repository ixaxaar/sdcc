;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:29:01 2013
;--------------------------------------------------------
	.module _memmove
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _memmove
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
;	../_memmove.c: 40: void * memmove (
;	-----------------------------------------
;	 function memmove
;	-----------------------------------------
_memmove:
	sub	sp, #29
;	../_memmove.c: 46: void * ret = dst;
	ldw	y, (0x20, sp)
	ldw	(0x05, sp), y
;	../_memmove.c: 50: if ((uintptr_t)src < (uintptr_t)dst) {
	ldw	x, (0x22, sp)
	ldw	y, (0x20, sp)
	ldw	(0x16, sp), y
;	../_memmove.c: 54: d = ((char *)dst)+acount-1;
	ldw	y, (0x20, sp)
	ldw	(0x14, sp), y
;	../_memmove.c: 55: s = ((char *)src)+acount-1;
	ldw	y, (0x22, sp)
	ldw	(0x1c, sp), y
;	../_memmove.c: 56: while (acount--) {
	ldw	y, (0x24, sp)
;	../_memmove.c: 50: if ((uintptr_t)src < (uintptr_t)dst) {
	cpw	x, (0x16, sp)
	jrnc	00108$
;	../_memmove.c: 54: d = ((char *)dst)+acount-1;
	ldw	x, (0x14, sp)
	addw	x, (0x24, sp)
	decw	x
	ldw	(0x03, sp), x
	ld	a, (0x03, sp)
	push	a
	ld	a, (0x05, sp)
	ld	(0x1c, sp), a
	pop	a
;	../_memmove.c: 55: s = ((char *)src)+acount-1;
	ldw	x, (0x1c, sp)
	addw	x, (0x24, sp)
	decw	x
	ldw	(0x01, sp), x
	ldw	x, (0x01, sp)
	ldw	(0x18, sp), x
;	../_memmove.c: 56: while (acount--) {
	ldw	x, (0x18, sp)
	ldw	(0x12, sp), x
	ld	(0x10, sp), a
	ld	a, (0x1b, sp)
	ld	(0x11, sp), a
00101$:
	ldw	x, y
	decw	y
	tnzw	x
	jreq	00109$
;	../_memmove.c: 57: *d-- = *s--;
	ldw	x, (0x12, sp)
	ld	a, (x)
	ldw	x, (0x12, sp)
	decw	x
	ldw	(0x12, sp), x
	ldw	x, (0x10, sp)
	ld	(x), a
	ldw	x, (0x10, sp)
	decw	x
	ldw	(0x10, sp), x
	jra	00101$
00108$:
;	../_memmove.c: 64: d = dst;
	ld	a, (0x14, sp)
	push	a
	ld	a, (0x16, sp)
	ld	(0x05, sp), a
	pop	a
;	../_memmove.c: 65: s = src;
	ldw	x, (0x1c, sp)
	ldw	(0x01, sp), x
;	../_memmove.c: 66: while (acount--) {
	ldw	x, (0x01, sp)
	ldw	(0x0e, sp), x
	ld	(0x0c, sp), a
	ld	a, (0x04, sp)
	ld	(0x0d, sp), a
	ldw	(0x0a, sp), y
00104$:
	ldw	y, (0x0a, sp)
	ldw	(0x08, sp), y
	ldw	x, (0x0a, sp)
	decw	x
	ldw	(0x0a, sp), x
	ldw	x, (0x08, sp)
	jreq	00109$
;	../_memmove.c: 67: *d++ = *s++;
	ldw	x, (0x0e, sp)
	ld	a, (x)
	ld	(0x07, sp), a
	ldw	x, (0x0e, sp)
	incw	x
	ldw	(0x0e, sp), x
	ldw	x, (0x0c, sp)
	ld	a, (0x07, sp)
	ld	(x), a
	ldw	x, (0x0c, sp)
	incw	x
	ldw	(0x0c, sp), x
	jra	00104$
00109$:
;	../_memmove.c: 71: return(ret);
	ldw	x, (0x05, sp)
	addw	sp, #29
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
