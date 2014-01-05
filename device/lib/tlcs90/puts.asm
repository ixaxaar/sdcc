;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:28 2013
;--------------------------------------------------------
	.module puts
	.optsdcc -mtlcs90
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _puts
	.globl _putchar
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
;../puts.c:31: int puts (char *s)
;	---------------------------------
; Function puts
; ---------------------------------
_puts_start::
_puts:
	push	ix
;../puts.c:34: while (*s){
	ld	hl, 4 (sp)
	ld	bc,#0x0000
00101$:
	ld	d,(hl)
;../puts.c:36: i++;
	inc	bc
;../puts.c:34: while (*s){
	ld	a,d
	or	a, a
	jr	Z,00103$
;../puts.c:35: putchar(*s++);
	inc	hl
	push	hl
	push	bc
	push	de
	inc	sp
	call	_putchar
	inc	sp
	pop	bc
	pop	hl
;../puts.c:36: i++;
	jr	00101$
00103$:
;../puts.c:38: putchar('\n');
	push	bc
	ld	a,#0x0A
	push	af
	inc	sp
	call	_putchar
	inc	sp
;../puts.c:39: return i+1;
	pop	hl
	pop	ix
	ret
_puts_end::
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
