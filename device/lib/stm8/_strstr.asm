;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:52 2013
;--------------------------------------------------------
	.module _strstr
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strstr
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
;	../_strstr.c: 31: char * strstr (
;	-----------------------------------------
;	 function strstr
;	-----------------------------------------
_strstr:
	sub	sp, #15
;	../_strstr.c: 36: const char * cp = str1;
	ldw	y, (0x12, sp)
	ldw	(0x05, sp), y
;	../_strstr.c: 40: if ( !*str2 )
	ldw	y, (0x14, sp)
	ldw	(0x01, sp), y
	ldw	x, (0x01, sp)
	ld	a, (x)
	tnz	a
	jrne	00122$
;	../_strstr.c: 41: return str1;
	ldw	x, (0x05, sp)
	jp	00113$
;	../_strstr.c: 43: while (*cp)
00122$:
	ldw	y, (0x05, sp)
	ldw	(0x03, sp), y
00110$:
	ldw	x, (0x03, sp)
	ld	a, (x)
	tnz	a
	jreq	00112$
;	../_strstr.c: 46: s2 = str2;
	ld	a, (0x01, sp)
	push	a
	ld	a, (0x03, sp)
	ld	(0x10, sp), a
	pop	a
;	../_strstr.c: 48: while ( *s1 && *s2 && !(*s1-*s2) )
	ldw	y, (0x03, sp)
	ldw	(0x0a, sp), y
	ld	(0x07, sp), a
	ld	a, (0x0f, sp)
	ld	(0x08, sp), a
00105$:
	ldw	x, (0x0a, sp)
	ld	a, (x)
	ldw	x, (0x07, sp)
	push	a
	ld	a, (x)
	ld	(0x0a, sp), a
	pop	a
	tnz	a
	jreq	00107$
	tnz	(0x09, sp)
	jreq	00107$
	ld	xl, a
	ld	a, xl
	rlc	a
	clr	a
	sbc	a, #0x00
	ld	xh, a
	ld	a, (0x09, sp)
	ld	(0x0d, sp), a
	ld	a, (0x0d, sp)
	rlc	a
	clr	a
	sbc	a, #0x00
	ld	(0x0c, sp), a
	subw	x, (0x0c, sp)
	tnzw	x
	jrne	00107$
;	../_strstr.c: 49: s1++, s2++;
	ldw	x, (0x0a, sp)
	incw	x
	ldw	(0x0a, sp), x
	ldw	x, (0x07, sp)
	incw	x
	ldw	(0x07, sp), x
	jra	00105$
00107$:
;	../_strstr.c: 51: if (!*s2)
	tnz	(0x09, sp)
	jrne	00109$
;	../_strstr.c: 52: return( (char*)cp );
	ldw	x, (0x05, sp)
	jra	00113$
00109$:
;	../_strstr.c: 54: cp++;
	ldw	x, (0x03, sp)
	incw	x
	ldw	(0x03, sp), x
	ldw	y, (0x03, sp)
	ldw	(0x05, sp), y
	jp	00110$
00112$:
;	../_strstr.c: 57: return (NULL) ;
	clrw	x
00113$:
	addw	sp, #15
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
