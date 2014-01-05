;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:58 2013
;--------------------------------------------------------
	.module puts
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _puts
	.globl _putchar
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
;	../puts.c: 31: int puts (char *s)
;	-----------------------------------------
;	 function puts
;	-----------------------------------------
_puts:
	sub	sp, #4
;	../puts.c: 34: while (*s){
	ldw	y, (0x07, sp)
	ldw	(0x03, sp), y
	clrw	x
00101$:
	ldw	y, (0x03, sp)
	ld	a, (y)
;	../puts.c: 36: i++;
	incw	x
	ldw	(0x01, sp), x
;	../puts.c: 34: while (*s){
	tnz	a
	jreq	00103$
;	../puts.c: 35: putchar(*s++);
	ldw	x, (0x03, sp)
	incw	x
	ldw	(0x03, sp), x
	push	a
	call	_putchar
	pop	a
;	../puts.c: 36: i++;
	ldw	x, (0x01, sp)
	jra	00101$
00103$:
;	../puts.c: 38: putchar('\n');
	push	#0x0a
	call	_putchar
	pop	a
;	../puts.c: 39: return i+1;
	ldw	x, (0x01, sp)
	addw	sp, #4
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
