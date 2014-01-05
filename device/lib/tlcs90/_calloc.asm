;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:25 2013
;--------------------------------------------------------
	.module _calloc
	.optsdcc -mtlcs90
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _memset
	.globl _malloc
	.globl _calloc
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
;../_calloc.c:70: void __xdata * calloc (size_t nmemb, size_t size)
;	---------------------------------
; Function calloc
; ---------------------------------
_calloc_start::
_calloc:
	push	ix
;../_calloc.c:74: ptr = malloc(nmemb * size);
	ld	hl, 6 (sp)
	push	hl
	ld	hl, 6 (sp)
	push	hl
	call	__mulint_rrx_s
	add	sp, #4
	ex	de,hl
	push	de
	push	de
	call	_malloc
	add	sp, #2
	pop	de
;../_calloc.c:75: if (ptr)
	ld	a,h
	or	a,l
	jr	Z,00102$
;../_calloc.c:77: memset(ptr, 0, nmemb * size);
	push	hl
	push	de
	ld	bc,#0x0000
	push	bc
	push	hl
	call	_memset
	add	sp, #6
	pop	hl
00102$:
;../_calloc.c:79: return ptr;
	pop	ix
	ret
_calloc_end::
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
