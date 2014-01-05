;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:25 2013
;--------------------------------------------------------
	.module _strtok
	.optsdcc -mtlcs90
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strchr
	.globl _strtok
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
_strtok_s_1_22:
	.ds 2
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
;../_strtok.c:36: char * strtok (
;	---------------------------------
; Function strtok
; ---------------------------------
_strtok_start::
_strtok:
;../_strtok.c:43: if ( str )
	ld	iy,#2
	add	iy,sp
	ld	a,1 (iy)
	or	a,0 (iy)
	jr	Z,00102$
;../_strtok.c:44: s = str ;
	ld	a,0 (iy)
	ld	(#_strtok_s_1_22 + 0),a
	ld	hl, #2+1
	add	hl, sp
	ld	a, (hl)
	ld	(#_strtok_s_1_22 + 1),a
00102$:
;../_strtok.c:45: if ( !s )
	ld	a,(#_strtok_s_1_22 + 1)
	ld	hl,#_strtok_s_1_22 + 0
	or	a,(hl)
	jr	NZ,00108$
;../_strtok.c:46: return NULL;
	ld	hl,#0x0000
	ret
;../_strtok.c:48: while (*s) {
00108$:
	ld	hl,(_strtok_s_1_22)
	ld	a,(hl)
	or	a, a
	jr	Z,00110$
;../_strtok.c:49: if (strchr(control,*s))
	ld	l,a
	rla
	sbc	a, a
	ld	h,a
	push	hl
	ld	hl, 6 (sp)
	push	hl
	call	_strchr
	add	sp, #4
	ld	a,h
	or	a,l
	jr	Z,00110$
;../_strtok.c:50: s++;
	ld	hl, #_strtok_s_1_22+0
	inc	(hl)
	jr	NZ,00108$
	ld	hl, #_strtok_s_1_22+1
	inc	(hl)
	jp	00108$
;../_strtok.c:52: break;
00110$:
;../_strtok.c:55: s1 = s ;
	ld	de,(_strtok_s_1_22)
;../_strtok.c:57: while (*s) {
00113$:
;../_strtok.c:48: while (*s) {
	ld	hl,(_strtok_s_1_22)
	ld	a,(hl)
;../_strtok.c:57: while (*s) {
	or	a, a
	jp	Z,00115$
;../_strtok.c:58: if (strchr(control,*s)) {
	ld	l,a
	rla
	sbc	a, a
	ld	h,a
	push	de
	push	hl
	ld	hl, 8 (sp)
	push	hl
	call	_strchr
	add	sp, #4
	pop	de
	ld	a,h
	or	a,l
	jr	Z,00112$
;../_strtok.c:59: *s++ = '\0';
	ld	hl,(_strtok_s_1_22)
	ld	(hl),#0x00
	ld	hl, #_strtok_s_1_22+0
	inc	(hl)
	jr	NZ,00158$
	ld	hl, #_strtok_s_1_22+1
	inc	(hl)
00158$:
;../_strtok.c:60: return s1 ;
	ex	de,hl
	ret
00112$:
;../_strtok.c:62: s++ ;
	ld	hl, #_strtok_s_1_22+0
	inc	(hl)
	jp	NZ,00113$
	ld	hl, #_strtok_s_1_22+1
	inc	(hl)
	jp	00113$
00115$:
;../_strtok.c:65: s = NULL;
	ld	hl,#_strtok_s_1_22 + 0
	ld	(hl), #0x00
	ld	hl,#_strtok_s_1_22 + 1
	ld	(hl), #0x00
;../_strtok.c:67: if (*s1)
	ld	a,(de)
	or	a, a
	jr	Z,00117$
;../_strtok.c:68: return s1;
	ex	de,hl
	ret
00117$:
;../_strtok.c:70: return NULL;
	ld	hl,#0x0000
	ret
_strtok_end::
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
