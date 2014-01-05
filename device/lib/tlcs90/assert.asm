;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:28 2013
;--------------------------------------------------------
	.module assert
	.optsdcc -mtlcs90
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __assert
	.globl _printf
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
;../assert.c:32: void _assert(char *expr, const char *filename, unsigned int linenumber)
;	---------------------------------
; Function _assert
; ---------------------------------
__assert_start::
__assert:
;../assert.c:34: printf("Assert(%s) failed at line %u in file %s.\n",
	ld	de,#__str_0
	ld	hl, 4 (sp)
	push	hl
	ld	hl, 8 (sp)
	push	hl
	ld	hl, 6 (sp)
	push	hl
	push	de
	call	_printf
	add	sp, #8
;../assert.c:36: while(1);
00102$:
	jr	00102$
__assert_end::
__str_0:
	.ascii "Assert(%s) failed at line %u in file %s."
	.db 0x0A
	.db 0x00
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
