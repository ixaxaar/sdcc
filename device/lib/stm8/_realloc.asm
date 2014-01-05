;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:53 2013
;--------------------------------------------------------
	.module _realloc
	
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
;	../_realloc.c: 84: void __xdata * realloc (void * p, size_t size)
;	-----------------------------------------
;	 function realloc
;	-----------------------------------------
_realloc:
	sub	sp, #22
;	../_realloc.c: 142: }
	sim
;	../_realloc.c: 92: pthis = _sdcc_find_memheader(p);
	ldw	x, (0x19, sp)
	pushw	x
	call	__sdcc_find_memheader
	addw	sp, #2
	ldw	(0x05, sp), x
;	../_realloc.c: 93: if (pthis)
	ldw	x, (0x05, sp)
	jrne	00142$
	jp	00114$
00142$:
;	../_realloc.c: 95: if (size > (0xFFFF-HEADER_SIZE))
	ldw	x, (0x1b, sp)
	cpw	x, #0xfff9
	jrule	00111$
;	../_realloc.c: 97: ret = (void __xdata *) NULL; //To prevent overflow in next line
	clrw	x
	ldw	(0x01, sp), x
	jp	00115$
00111$:
;	../_realloc.c: 101: size += HEADER_SIZE; //We need a memory for header too
	ldw	x, (0x1b, sp)
	addw	x, #0x0006
	ldw	(0x1b, sp), x
;	../_realloc.c: 103: if ((((unsigned int)pthis->next) - ((unsigned int)pthis)) >= size)
	ldw	x, (0x05, sp)
	ldw	x, (x)
	ldw	(0x15, sp), x
	ldw	y, (0x15, sp)
	ldw	x, (0x05, sp)
	ldw	(0x13, sp), x
	subw	y, (0x13, sp)
;	../_realloc.c: 105: pthis->len = size;
	ldw	x, (0x05, sp)
	addw	x, #0x0004
	ldw	(0x11, sp), x
;	../_realloc.c: 103: if ((((unsigned int)pthis->next) - ((unsigned int)pthis)) >= size)
	ldw	x, y
	cpw	x, (0x1b, sp)
	jrc	00108$
;	../_realloc.c: 105: pthis->len = size;
	ldw	x, (0x11, sp)
	ldw	y, (0x1b, sp)
	ldw	(x), y
;	../_realloc.c: 106: ret = p;
	ldw	y, (0x19, sp)
	ldw	(0x01, sp), y
	jp	00115$
00108$:
;	../_realloc.c: 110: if ((_sdcc_prev_memheader) &&
	ldw	x, __sdcc_prev_memheader+0
	jreq	00104$
;	../_realloc.c: 111: ((((unsigned int)pthis->next) -
	ldw	y, (0x15, sp)
;	../_realloc.c: 112: ((unsigned int)_sdcc_prev_memheader) -
	ldw	x, __sdcc_prev_memheader+0
	ldw	(0x0f, sp), x
	subw	y, (0x0f, sp)
;	../_realloc.c: 113: _sdcc_prev_memheader->len) >= size))
	ldw	x, __sdcc_prev_memheader+0
	ldw	(0x0d, sp), x
	ldw	x, (0x0d, sp)
	ldw	x, (0x4, x)
	ldw	(0x0b, sp), x
	subw	y, (0x0b, sp)
	ldw	x, y
	cpw	x, (0x1b, sp)
	jrc	00104$
;	../_realloc.c: 115: pnew = (MEMHEADER __xdata * )((char __xdata *)_sdcc_prev_memheader + _sdcc_prev_memheader->len);
	ldw	x, __sdcc_prev_memheader+0
	addw	x, (0x0b, sp)
	ldw	(0x03, sp), x
;	../_realloc.c: 116: _sdcc_prev_memheader->next = pnew;
	ldw	x, (0x0d, sp)
	ldw	y, (0x03, sp)
	ldw	(x), y
;	../_realloc.c: 119: pthis->next->prev = pnew;
	ldw	x, (0x05, sp)
	ldw	x, (x)
	incw	x
	incw	x
	ldw	y, (0x03, sp)
	ldw	(x), y
;	../_realloc.c: 122: memmove(pnew, pthis, pthis->len);
	ldw	x, (0x11, sp)
	ldw	x, (x)
	ld	a, (0x05, sp)
	ld	(0x09, sp), a
	ld	a, (0x06, sp)
	ldw	y, (0x03, sp)
	ldw	(0x07, sp), y
	pushw	x
	push	a
	ld	a, (0x0c, sp)
	push	a
	ldw	x, (0x0b, sp)
	pushw	x
	call	_memmove
	addw	sp, #6
;	../_realloc.c: 123: pnew->len = size;
	ldw	x, (0x03, sp)
	ldw	y, (0x1b, sp)
	ldw	(0x0004, x), y
;	../_realloc.c: 124: ret = MEM(pnew);
	ldw	x, (0x03, sp)
	addw	x, #0x0006
	ldw	(0x01, sp), x
	jra	00115$
00104$:
;	../_realloc.c: 128: ret = malloc(size - HEADER_SIZE);
	ldw	x, (0x1b, sp)
	subw	x, #0x0006
	pushw	x
	call	_malloc
	addw	sp, #2
	ldw	(0x01, sp), x
;	../_realloc.c: 129: if (ret)
	ldw	x, (0x01, sp)
	jreq	00115$
;	../_realloc.c: 131: memcpy(ret, MEM(pthis), pthis->len - HEADER_SIZE);
	ldw	x, (0x11, sp)
	ldw	x, (x)
	subw	x, #0x0006
	ldw	y, (0x05, sp)
	addw	y, #0x0006
	pushw	x
	pushw	y
	ldw	x, (0x05, sp)
	pushw	x
	call	_memcpy
	addw	sp, #6
;	../_realloc.c: 132: free(p);
	ldw	x, (0x19, sp)
	pushw	x
	call	_free
	addw	sp, #2
	jra	00115$
00114$:
;	../_realloc.c: 140: ret = malloc(size);
	ldw	x, (0x1b, sp)
	pushw	x
	call	_malloc
	addw	sp, #2
	ldw	(0x01, sp), x
00115$:
	rim
;	../_realloc.c: 143: return ret;
	ldw	x, (0x01, sp)
	addw	sp, #22
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
