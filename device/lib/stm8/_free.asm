;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:53 2013
;--------------------------------------------------------
	.module _free
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __sdcc_find_memheader
	.globl __sdcc_prev_memheader
	.globl _free
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
__sdcc_prev_memheader::
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
;	../_free.c: 62: _sdcc_find_memheader(void * p)
;	-----------------------------------------
;	 function _sdcc_find_memheader
;	-----------------------------------------
__sdcc_find_memheader:
;	../_free.c: 65: if (!p)
	ldw	x, (0x03, sp)
	jrne	00102$
;	../_free.c: 66: return NULL;
	clrw	x
	jra	00103$
00102$:
;	../_free.c: 67: pthis = (MEMHEADER * )((char *)  p - HEADER_SIZE); //to start of header
	ldw	y, (0x03, sp)
	subw	y, #0x0006
;	../_free.c: 68: _sdcc_prev_memheader = pthis->prev;
	ldw	x, y
	ldw	x, (0x2, x)
	ldw	__sdcc_prev_memheader+0, x
;	../_free.c: 70: return (pthis);
	ldw	x, y
00103$:
	ret
;	../_free.c: 74: free (void *p)
;	-----------------------------------------
;	 function free
;	-----------------------------------------
_free:
	sub	sp, #2
;	../_free.c: 78: if ( p ) //For allocated pointers only!
	ldw	x, (0x05, sp)
	jreq	00108$
;	../_free.c: 95: }
	sim
;	../_free.c: 81: pthis = (MEMHEADER * )((char *)  p - HEADER_SIZE); //to start of header
	ldw	x, (0x05, sp)
	subw	x, #0x0006
	ldw	(0x01, sp), x
;	../_free.c: 82: if ( pthis->prev ) // For the regular header
	ldw	y, (0x01, sp)
	ldw	y, (0x2, y)
	tnzw	y
	jreq	00104$
;	../_free.c: 84: prev_header = pthis->prev;
;	../_free.c: 85: prev_header->next = pthis->next;
	ldw	x, (0x01, sp)
	ldw	x, (x)
	ldw	(y), x
;	../_free.c: 86: if (pthis->next)
	ldw	x, (0x01, sp)
	ldw	x, (x)
	tnzw	x
	jreq	00105$
;	../_free.c: 88: pthis->next->prev = prev_header;
	incw	x
	incw	x
	ldw	(x), y
	jra	00105$
00104$:
;	../_free.c: 93: pthis->len = 0; //For the first header
	ldw	x, (0x01, sp)
	addw	x, #0x0004
	clr	(0x1, x)
	clr	(x)
00105$:
	rim
00108$:
	addw	sp, #2
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
