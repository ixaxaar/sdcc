;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:29 2013
;--------------------------------------------------------
	.module sprintf
	.optsdcc -mtlcs90
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __print_format
	.globl _vsprintf
	.globl _sprintf
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
;../sprintf.c:34: put_char_to_string (char c, void* p) _REENTRANT
;	---------------------------------
; Function put_char_to_string
; ---------------------------------
_put_char_to_string:
	push	ix
	ld	ix,#0
	add	ix,sp
;../sprintf.c:36: char **buf = (char **)p;
	ld	hl, 5 (sp)
;../sprintf.c:37: *(*buf)++ = c;
	push	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	pop	hl
	ld	c, e
	ld	b, d
	inc	bc
	ld	(hl),c
	inc	hl
	ld	(hl),b
	ld	a,4 (ix)
	ld	(de),a
	pop	ix
	ret
;../sprintf.c:41: vsprintf (char *buf, const char *format, va_list ap)
;	---------------------------------
; Function vsprintf
; ---------------------------------
_vsprintf_start::
_vsprintf:
;../sprintf.c:44: i = _print_format (put_char_to_string, &buf, format, ap);
	ld	hl,#0x0002
	add	hl,sp
	ex	de,hl
	ld	hl, 6 (sp)
	push	hl
	ld	hl, 6 (sp)
	push	hl
	push	de
	ld	hl,#_put_char_to_string
	push	hl
	call	__print_format
	add	sp, #8
	ld	d,l
	ld	b,h
;../sprintf.c:45: *buf = 0;
	ld	hl, 2 (sp)
	ld	(hl),#0x00
;../sprintf.c:46: return i;
	ld	l, d
	ld	h, b
	ret
_vsprintf_end::
;../sprintf.c:50: sprintf (char *buf, const char *format, ...)
;	---------------------------------
; Function sprintf
; ---------------------------------
_sprintf_start::
_sprintf:
	push	ix
	ld	ix,#0
	add	ix,sp
	add	sp, #-2
;../sprintf.c:55: va_start (arg, format);
	ld	hl,#0x0008+1+1
	add	hl,sp
	ex	(sp), hl
;../sprintf.c:56: i = _print_format (put_char_to_string, &buf, format, arg);
	ld	hl,#0x0006
	add	hl,sp
	ld	iy, hl
	pop	hl
	push	hl
	push	hl
	ld	hl, 10 (sp)
	push	hl
	push	iy
	ld	hl,#_put_char_to_string
	push	hl
	call	__print_format
	add	sp, #8
;../sprintf.c:57: *buf = 0;
	ld	iy, 6 (sp)
	ld	0 (iy), #0x00
;../sprintf.c:60: return i;
	ld	sp, ix
	pop	ix
	ret
_sprintf_end::
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
