;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:25 2013
;--------------------------------------------------------
	.module _realloc
	.optsdcc -mtlcs90
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __sdcc_find_memheader
	.globl _memmove
	.globl _memcpy
	.globl _free
	.globl _malloc
	.globl _realloc
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
;../_realloc.c:84: void __xdata * realloc (void * p, size_t size)
;	---------------------------------
; Function realloc
; ---------------------------------
_realloc_start::
_realloc:
	push	ix
	ld	ix,#0
	add	ix,sp
	add	sp, #-6
;../_realloc.c:142: }
	di
;../_realloc.c:92: pthis = _sdcc_find_memheader(p);
	ld	hl, 10 (sp)
	push	hl
	call	__sdcc_find_memheader
	add	sp, #2
	ld	c, l
	ld	b, h
;../_realloc.c:93: if (pthis)
	ld	a,b
	or	a,c
	jp	Z,00114$
;../_realloc.c:95: if (size > (0xFFFF-HEADER_SIZE))
	ld	a,#0xF9
	cp	a, 6 (ix)
	ld	a,#0xFF
	sbc	a, 7 (ix)
	jr	NC,00111$
;../_realloc.c:97: ret = (void __xdata *) NULL; //To prevent overflow in next line
	ld	de,#0x0000
	jp	00115$
00111$:
;../_realloc.c:101: size += HEADER_SIZE; //We need a memory for header too
	ld	a,6 (ix)
	add	a, #0x06
	ld	6 (ix),a
	ld	a,7 (ix)
	adc	a, #0x00
	ld	7 (ix),a
;../_realloc.c:103: if ((((unsigned int)pthis->next) - ((unsigned int)pthis)) >= size)
	ld	a,(bc)
	ld	-2 (ix),a
	inc	bc
	ld	a,(bc)
	ld	-1 (ix),a
	dec	bc
	ld	hl, 4 (sp)
	ld	e, c
	ld	d, b
	ld	a,l
	sub	a, e
	ld	e,a
	ld	a,h
	sbc	a, d
	ld	d,a
;../_realloc.c:105: pthis->len = size;
	ld	hl,#0x0004
	add	hl,bc
	ld	2 (sp), hl
;../_realloc.c:103: if ((((unsigned int)pthis->next) - ((unsigned int)pthis)) >= size)
	ld	a,e
	sub	a, 6 (ix)
	ld	a,d
	sbc	a, 7 (ix)
	jr	C,00108$
;../_realloc.c:105: pthis->len = size;
	ld	hl, 2 (sp)
	ld	a,6 (ix)
	ld	(hl),a
	inc	hl
	ld	a,7 (ix)
	ld	(hl),a
;../_realloc.c:106: ret = p;
	ex	de, hl
	ld	hl, 10 (sp)
	ex	de, hl
	jp	00115$
00108$:
;../_realloc.c:110: if ((_sdcc_prev_memheader) &&
	ld	a,(#__sdcc_prev_memheader + 1)
	ld	iy,#__sdcc_prev_memheader
	or	a,0 (iy)
	jp	Z,00104$
;../_realloc.c:111: ((((unsigned int)pthis->next) -
	ld	hl, 4 (sp)
	ld	d,l
	ld	e,h
;../_realloc.c:112: ((unsigned int)_sdcc_prev_memheader) -
	ld	hl,(__sdcc_prev_memheader)
	ld	a,d
	sub	a, l
	ld	-2 (ix),a
	ld	a,e
	sbc	a, h
	ld	-1 (ix),a
;../_realloc.c:113: _sdcc_prev_memheader->len) >= size))
	ld	hl,(__sdcc_prev_memheader)
	ex	(sp), hl
	ld	a,-6 (ix)
	add	a, #0x04
	ld	l,a
	ld	a,-5 (ix)
	adc	a, #0x00
	ld	h,a
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,-2 (ix)
	sub	a, e
	ld	h,a
	ld	a,-1 (ix)
	sbc	a, d
	ld	l,a
	ld	a,h
	sub	a, 6 (ix)
	ld	a,l
	sbc	a, 7 (ix)
	jp	C,00104$
;../_realloc.c:115: pnew = (MEMHEADER __xdata * )((char __xdata *)_sdcc_prev_memheader + _sdcc_prev_memheader->len);
	ld	hl,(__sdcc_prev_memheader)
	add	hl,de
	ex	de,hl
;../_realloc.c:116: _sdcc_prev_memheader->next = pnew;
	pop	hl
	push	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
;../_realloc.c:119: pthis->next->prev = pnew;
	ld	l, c
	ld	h, b
	ld	a, (hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	inc	hl
	inc	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
;../_realloc.c:122: memmove(pnew, pthis, pthis->len);
	ld	hl, 2 (sp)
	ld	a, (hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	push	de
	pop	iy
	push	de
	push	hl
	push	bc
	push	iy
	call	_memmove
	add	sp, #6
	pop	de
;../_realloc.c:123: pnew->len = size;
	ld	hl,#0x0004
	add	hl,de
	ld	a,6 (ix)
	ld	(hl),a
	inc	hl
	ld	a,7 (ix)
	ld	(hl),a
;../_realloc.c:124: ret = MEM(pnew);
	ld	hl,#0x0006
	add	hl,de
	ex	de,hl
	jp	00115$
00104$:
;../_realloc.c:128: ret = malloc(size - HEADER_SIZE);
	ld	a,6 (ix)
	add	a,#0xFA
	ld	l,a
	ld	a,7 (ix)
	adc	a,#0xFF
	ld	h,a
	push	bc
	push	hl
	call	_malloc
	add	sp, #2
	pop	bc
	ex	de,hl
;../_realloc.c:129: if (ret)
	ld	a,d
	or	a,e
	jp	Z,00115$
;../_realloc.c:131: memcpy(ret, MEM(pthis), pthis->len - HEADER_SIZE);
	ld	hl, 2 (sp)
	ld	a, (hl)
	inc	hl
	ld	h,(hl)
	add	a,#0xFA
	ld	l,a
	ld	a,h
	adc	a,#0xFF
	ld	h,a
	ld	iy,#0x0006
	add	iy, bc
	push	de
	push	hl
	push	iy
	push	de
	call	_memcpy
	add	sp, #6
	ld	hl, 12 (sp)
	push	hl
	call	_free
	add	sp, #2
	pop	de
	jr	00115$
00114$:
;../_realloc.c:140: ret = malloc(size);
	ld	hl, 12 (sp)
	push	hl
	call	_malloc
	add	sp, #2
	ex	de,hl
00115$:
	ei
;../_realloc.c:143: return ret;
	ex	de,hl
	ld	sp, ix
	pop	ix
	ret
_realloc_end::
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
