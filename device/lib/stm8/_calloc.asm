;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:52 2013
;--------------------------------------------------------
	.module _calloc
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _memset
	.globl _malloc
	.globl _calloc
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
;	../_calloc.c: 70: void __xdata * calloc (size_t nmemb, size_t size)
;	-----------------------------------------
;	 function calloc
;	-----------------------------------------
_calloc:
	sub	sp, #2
;	../_calloc.c: 74: ptr = malloc(nmemb * size);
	ldw	x, (0x07, sp)
	pushw	x
	ldw	x, (0x07, sp)
	pushw	x
	call	__mulint
	addw	sp, #4
	ldw	(0x01, sp), x
	ldw	x, (0x01, sp)
	pushw	x
	call	_malloc
	addw	sp, #2
;	../_calloc.c: 75: if (ptr)
	tnzw	x
	jreq	00102$
;	../_calloc.c: 77: memset(ptr, 0, nmemb * size);
	pushw	x
	ldw	y, (0x03, sp)
	pushw	y
	push	#0x00
	push	#0x00
	pushw	x
	call	_memset
	addw	sp, #6
	popw	x
00102$:
;	../_calloc.c: 79: return ptr;
	addw	sp, #2
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
