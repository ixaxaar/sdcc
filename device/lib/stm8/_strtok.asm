;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:52 2013
;--------------------------------------------------------
	.module _strtok
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strchr
	.globl _strtok
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
_strtok_s_1_22:
	.ds 2
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
;	../_strtok.c: 36: char * strtok (
;	-----------------------------------------
;	 function strtok
;	-----------------------------------------
_strtok:
;	../_strtok.c: 43: if ( str )
	ldw	x, (0x03, sp)
	jreq	00102$
;	../_strtok.c: 44: s = str ;
	ldw	x, (0x03, sp)
	ldw	_strtok_s_1_22+0, x
00102$:
;	../_strtok.c: 45: if ( !s )
	ldw	x, _strtok_s_1_22+0
	jrne	00108$
;	../_strtok.c: 46: return NULL;
	clrw	x
	jp	00119$
;	../_strtok.c: 48: while (*s) {
00108$:
	ldw	x, _strtok_s_1_22+0
	ld	a, (x)
	tnz	a
	jreq	00110$
;	../_strtok.c: 49: if (strchr(control,*s))
	ld	xl, a
	ld	a, xl
	rlc	a
	clr	a
	sbc	a, #0x00
	ld	xh, a
	pushw	x
	ldw	x, (0x07, sp)
	pushw	x
	call	_strchr
	addw	sp, #4
	tnzw	x
	jreq	00110$
;	../_strtok.c: 50: s++;
	ldw	x, _strtok_s_1_22+0
	incw	x
	ldw	_strtok_s_1_22+0, x
	jra	00108$
;	../_strtok.c: 52: break;
00110$:
;	../_strtok.c: 55: s1 = s ;
	ldw	y, _strtok_s_1_22+0
;	../_strtok.c: 57: while (*s) {
00113$:
;	../_strtok.c: 48: while (*s) {
	ldw	x, _strtok_s_1_22+0
	ld	a, (x)
;	../_strtok.c: 57: while (*s) {
	tnz	a
	jreq	00115$
;	../_strtok.c: 58: if (strchr(control,*s)) {
	ld	xl, a
	ld	a, xl
	rlc	a
	clr	a
	sbc	a, #0x00
	ld	xh, a
	pushw	y
	pushw	x
	ldw	x, (0x09, sp)
	pushw	x
	call	_strchr
	addw	sp, #4
	popw	y
	tnzw	x
	jreq	00112$
;	../_strtok.c: 59: *s++ = '\0';
	ldw	x, _strtok_s_1_22+0
	clr	(x)
	ldw	x, _strtok_s_1_22+0
	incw	x
	ldw	_strtok_s_1_22+0, x
;	../_strtok.c: 60: return s1 ;
	ldw	x, y
	jra	00119$
00112$:
;	../_strtok.c: 62: s++ ;
	ldw	x, _strtok_s_1_22+0
	incw	x
	ldw	_strtok_s_1_22+0, x
	jra	00113$
00115$:
;	../_strtok.c: 65: s = NULL;
	clr	_strtok_s_1_22+1
	clr	_strtok_s_1_22+0
;	../_strtok.c: 67: if (*s1)
	ld	a, (y)
	tnz	a
	jreq	00117$
;	../_strtok.c: 68: return s1;
	ldw	x, y
	jra	00119$
00117$:
;	../_strtok.c: 70: return NULL;
	clrw	x
00119$:
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
