;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:51 2013
;--------------------------------------------------------
	.module strxfrm
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strlen
	.globl _strncpy
	.globl _strxfrm
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
;	../strxfrm.c: 31: size_t strxfrm(char *dest, const char *src, size_t n)
;	-----------------------------------------
;	 function strxfrm
;	-----------------------------------------
_strxfrm:
;	../strxfrm.c: 33: strncpy(dest, src, n);
	ldw	x, (0x07, sp)
	pushw	x
	ldw	x, (0x07, sp)
	pushw	x
	ldw	x, (0x07, sp)
	pushw	x
	call	_strncpy
	addw	sp, #6
;	../strxfrm.c: 34: return(strlen(src) + 1);
	ldw	x, (0x05, sp)
	pushw	x
	call	_strlen
	addw	sp, #2
	incw	x
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
