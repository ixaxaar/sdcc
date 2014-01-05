;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:37 2013
;--------------------------------------------------------
	.module _fsmul
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___fsmul
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
;	../_fsmul.c: 241: float __fsmul (float a1, float a2) {
;	-----------------------------------------
;	 function __fsmul
;	-----------------------------------------
___fsmul:
	sub	sp, #136
;	../_fsmul.c: 247: fl1.f = a1;
	ldw	x, sp
	addw	x, #12
	ldw	y, (0x8d, sp)
	ldw	(0x2, x), y
	ldw	y, (0x8b, sp)
	ldw	(x), y
;	../_fsmul.c: 248: fl2.f = a2;
	ldw	x, sp
	addw	x, #8
	ldw	y, (0x91, sp)
	ldw	(0x2, x), y
	ldw	y, (0x8f, sp)
	ldw	(x), y
;	../_fsmul.c: 250: if (!fl1.l || !fl2.l)
	ldw	x, sp
	addw	x, #12
	ld	a, (0x3, x)
	ld	(0x68, sp), a
	ld	a, (0x2, x)
	ld	(0x67, sp), a
	ldw	x, (x)
	ldw	(0x65, sp), x
	ldw	x, (0x67, sp)
	jrne	00143$
	ldw	x, (0x65, sp)
	jreq	00101$
00143$:
	ldw	x, sp
	addw	x, #8
	ld	a, (0x3, x)
	ld	(0x80, sp), a
	ld	a, (0x2, x)
	ld	(0x7f, sp), a
	ldw	x, (x)
	ldw	y, (0x7f, sp)
	jrne	00102$
	tnzw	x
	jrne	00102$
00101$:
;	../_fsmul.c: 251: return (0);
	clrw	x
	clrw	y
	jp	00113$
00102$:
;	../_fsmul.c: 254: sign = SIGN (fl1.l) ^ SIGN (fl2.l);
	ldw	x, sp
	addw	x, #12
	ld	a, (0x3, x)
	ld	(0x70, sp), a
	ldw	x, (x)
	ld	a, xh
	sll	a
	clr	a
	rlc	a
	ld	(0x18, sp), a
	ldw	x, sp
	addw	x, #8
	ld	a, (0x3, x)
	ld	(0x84, sp), a
	ld	a, (0x2, x)
	ld	(0x83, sp), a
	ldw	x, (x)
	ld	a, xh
	sll	a
	clr	a
	rlc	a
	xor	a, (0x18, sp)
	ld	(0x01, sp), a
;	../_fsmul.c: 255: exp = EXP (fl1.l) - EXCESS;
	ldw	x, sp
	addw	x, #12
	ld	a, (0x3, x)
	ld	yl, a
	ld	a, (0x2, x)
	ld	yh, a
	ldw	x, (x)
	ld	a, #0x17
	tnz	a
	jreq	00147$
00146$:
	srlw	x
	rrcw	y
	dec	a
	jrne	00146$
00147$:
	clr	a
	ld	yh, a
	clr	a
	ld	xl, a
	clr	a
	subw	y, #0x007e
	push	a
	ld	a, xl
	sbc	a, #0x00
	ld	xh, a
	ld	a, (1, sp)
	sbc	a, #0x00
	ld	xl, a
	pop	a
	ldw	(0x02, sp), y
;	../_fsmul.c: 256: exp += EXP (fl2.l);
	ldw	x, sp
	addw	x, #8
	ld	a, (0x3, x)
	ld	yl, a
	ld	a, (0x2, x)
	ld	yh, a
	ldw	x, (x)
	ld	a, #0x17
	tnz	a
	jreq	00149$
00148$:
	srlw	x
	rrcw	y
	dec	a
	jrne	00148$
00149$:
	clr	a
	ld	yh, a
	clr	(0x1a, sp)
	clr	(0x19, sp)
	ldw	x, (0x02, sp)
	ldw	(0x27, sp), x
	clrw	x
	tnz	(0x27, sp)
	jrpl	00150$
	decw	x
00150$:
	addw	y, (0x27, sp)
	ld	a, xl
	adc	a, (0x1a, sp)
	ld	xl, a
	ld	a, xh
	adc	a, (0x19, sp)
	ldw	(0x02, sp), y
;	../_fsmul.c: 258: fl1.l = MANT (fl1.l);
	ldw	x, sp
	addw	x, #12
	ldw	(0x31, sp), x
	ldw	x, sp
	addw	x, #12
	ld	a, (0x3, x)
	ld	yl, a
	ld	a, (0x2, x)
	ld	yh, a
	ldw	x, (x)
	ld	a, xl
	and	a, #0x7f
	ld	xl, a
	clr	a
	ld	(0x37, sp), a
	ld	a, xl
	or	a, #0x80
	ld	(0x38, sp), a
	ldw	x, (0x31, sp)
	ldw	(0x2, x), y
	ldw	y, (0x37, sp)
	ldw	(x), y
;	../_fsmul.c: 259: fl2.l = MANT (fl2.l);
	ldw	x, sp
	addw	x, #8
	ldw	(0x3d, sp), x
	ldw	x, sp
	addw	x, #8
	ld	a, (0x3, x)
	ld	yl, a
	ld	a, (0x2, x)
	ld	yh, a
	ldw	x, (x)
	ld	a, xl
	and	a, #0x7f
	ld	xl, a
	clr	a
	ld	(0x43, sp), a
	ld	a, xl
	or	a, #0x80
	ld	(0x44, sp), a
	ldw	x, (0x3d, sp)
	ldw	(0x2, x), y
	ldw	y, (0x43, sp)
	ldw	(x), y
;	../_fsmul.c: 262: result = (fl1.l >> 8) * (fl2.l >> 8);
	ldw	x, sp
	addw	x, #12
	ld	a, (0x3, x)
	ld	(0x13, sp), a
	ld	a, (0x2, x)
	ldw	x, (x)
	ld	(0x58, sp), a
	ldw	y, x
	clr	(0x55, sp)
	ldw	x, sp
	addw	x, #8
	ld	a, (0x3, x)
	ld	(0x5c, sp), a
	ld	a, (0x2, x)
	ldw	x, (x)
	ldw	(0x59, sp), x
	ldw	x, (0x59, sp)
	ldw	(0x5e, sp), x
	ld	xh, a
	clr	a
	exg	a, xl
	ld	a, xh
	exg	a, xl
	pushw	x
	addw	sp, #1
	ldw	x, (0x5f, sp)
	pushw	x
	push	a
	ld	a, (0x5c, sp)
	push	a
	pushw	y
	ld	a, (0x5c, sp)
	push	a
	call	__mullong
	addw	sp, #8
	ldw	(0x06, sp), x
	ldw	(0x04, sp), y
;	../_fsmul.c: 263: result += ((fl1.l & (unsigned long) 0xFF) * (fl2.l >> 8)) >> 8;
	ldw	x, sp
	addw	x, #12
	ld	a, (0x3, x)
	ld	yl, a
	ld	a, (0x2, x)
	ldw	x, (x)
	and	a, #0x00
	ld	yh, a
	clr	(0x62, sp)
	clr	(0x61, sp)
	ldw	x, sp
	addw	x, #8
	ld	a, (0x3, x)
	ld	(0x74, sp), a
	ld	a, (0x2, x)
	ldw	x, (x)
	ldw	(0x71, sp), x
	ldw	x, (0x71, sp)
	ldw	(0x6a, sp), x
	ld	xh, a
	clr	a
	exg	a, xl
	ld	a, xh
	exg	a, xl
	pushw	x
	addw	sp, #1
	ldw	x, (0x6b, sp)
	pushw	x
	push	a
	pushw	y
	ldw	x, (0x67, sp)
	pushw	x
	call	__mullong
	addw	sp, #8
	ldw	(0x15, sp), y
	ld	a, xh
	rlwa	x
	clr	a
	rrwa	x
	ld	yl, a
	ld	a, (0x16, sp)
	ld	yh, a
	addw	y, (0x06, sp)
	ld	a, (0x15, sp)
	adc	a, (0x05, sp)
	ld	xl, a
	ld	a, xh
	adc	a, (0x04, sp)
	ld	xh, a
	ldw	(0x06, sp), y
	ldw	(0x04, sp), x
;	../_fsmul.c: 264: result += ((fl2.l & (unsigned long) 0xFF) * (fl1.l >> 8)) >> 8;
	ldw	x, sp
	addw	x, #8
	ld	a, (0x3, x)
	ld	yl, a
	ld	a, (0x2, x)
	ldw	x, (x)
	and	a, #0x00
	ld	yh, a
	clr	(0x22, sp)
	clr	(0x21, sp)
	ldw	x, sp
	addw	x, #12
	ld	a, (0x3, x)
	ld	(0x30, sp), a
	ld	a, (0x2, x)
	ldw	x, (x)
	ldw	(0x2d, sp), x
	ldw	x, (0x2d, sp)
	ldw	(0x34, sp), x
	ld	xh, a
	clr	a
	exg	a, xl
	ld	a, xh
	exg	a, xl
	pushw	x
	addw	sp, #1
	ldw	x, (0x35, sp)
	pushw	x
	push	a
	pushw	y
	ldw	x, (0x27, sp)
	pushw	x
	call	__mullong
	addw	sp, #8
	ldw	(0x48, sp), y
	ld	a, xh
	rlwa	x
	clr	a
	rrwa	x
	ld	yl, a
	ld	a, (0x49, sp)
	ld	yh, a
	addw	y, (0x06, sp)
	ld	a, (0x48, sp)
	adc	a, (0x05, sp)
	ld	xl, a
	ld	a, xh
	adc	a, (0x04, sp)
	ld	xh, a
	ldw	(0x06, sp), y
	ldw	(0x04, sp), x
;	../_fsmul.c: 267: result += 0x40;
	ldw	y, (0x06, sp)
	addw	y, #0x0040
	ld	a, (0x05, sp)
	adc	a, #0x00
	ld	xl, a
	ld	a, (0x04, sp)
	adc	a, #0x00
	ld	xh, a
	ldw	(0x06, sp), y
	ldw	(0x04, sp), x
;	../_fsmul.c: 269: if (result & SIGNBIT)
	clr	(0x4e, sp)
	clr	(0x4d, sp)
	clr	(0x4c, sp)
	ld	a, (0x04, sp)
	and	a, #0x80
	ld	(0x4b, sp), a
	ldw	x, (0x4d, sp)
	jrne	00151$
	ldw	x, (0x4b, sp)
	jreq	00105$
00151$:
;	../_fsmul.c: 272: result += 0x40;
	ldw	y, (0x06, sp)
	addw	y, #0x0040
	ld	a, (0x05, sp)
	adc	a, #0x00
	ld	xl, a
	ld	a, (0x04, sp)
	adc	a, #0x00
	ld	xh, a
	ldw	(0x06, sp), y
	ldw	(0x04, sp), x
;	../_fsmul.c: 273: result >>= 8;
	ldw	y, (0x05, sp)
	ld	a, (0x04, sp)
	ld	xl, a
	clr	a
	ld	xh, a
	ldw	(0x06, sp), y
	ldw	(0x04, sp), x
	jra	00106$
00105$:
;	../_fsmul.c: 277: result >>= 7;
	ldw	y, (0x06, sp)
	ldw	x, (0x04, sp)
	ld	a, #0x07
	tnz	a
	jreq	00153$
00152$:
	srlw	x
	rrcw	y
	dec	a
	jrne	00152$
00153$:
	ldw	(0x06, sp), y
	ldw	(0x04, sp), x
;	../_fsmul.c: 278: exp--;
	ldw	x, (0x02, sp)
	decw	x
	ldw	(0x02, sp), x
00106$:
;	../_fsmul.c: 281: result &= ~HIDDEN;
	ld	a, (0x07, sp)
	ld	yl, a
	ld	a, (0x06, sp)
	ld	yh, a
	ld	a, (0x05, sp)
	and	a, #0x7f
	ld	xl, a
	ld	a, (0x04, sp)
	ld	xh, a
	ldw	(0x06, sp), y
	ldw	(0x04, sp), x
;	../_fsmul.c: 284: if (exp >= 0x100)
	ldw	x, (0x02, sp)
	cpw	x, #0x0100
	jrslt	00111$
;	../_fsmul.c: 285: fl1.l = (sign ? SIGNBIT : 0) | __INFINITY;
	ldw	x, sp
	addw	x, #12
	ldw	(0x4f, sp), x
	tnz	(0x01, sp)
	jreq	00115$
	clrw	y
	clr	(0x52, sp)
	ld	a, #0x80
	jra	00116$
00115$:
	clrw	y
	clr	(0x52, sp)
	clr	a
00116$:
	or	a, #0x7f
	ld	(0x79, sp), a
	ld	a, (0x52, sp)
	or	a, #0x80
	ld	(0x7a, sp), a
	ldw	x, (0x4f, sp)
	ldw	(0x2, x), y
	ldw	y, (0x79, sp)
	ldw	(x), y
	jp	00112$
00111$:
;	../_fsmul.c: 286: else if (exp < 0)
	ldw	x, (0x02, sp)
	cpw	x, #0x0000
	jrsge	00108$
;	../_fsmul.c: 287: fl1.l = 0;
	ldw	x, sp
	addw	x, #12
	clr	(0x3, x)
	clr	(0x2, x)
	clr	(0x1, x)
	clr	(x)
	jra	00112$
00108$:
;	../_fsmul.c: 289: fl1.l = PACK (sign ? SIGNBIT : 0 , exp, result);
	ldw	x, sp
	addw	x, #12
	ldw	(0x3b, sp), x
	tnz	(0x01, sp)
	jreq	00117$
	clrw	x
	ldw	(0x41, sp), x
	ldw	x, #0x8000
	ldw	(0x3f, sp), x
	jra	00118$
00117$:
	clrw	x
	ldw	(0x41, sp), x
	ldw	(0x3f, sp), x
00118$:
	ldw	x, (0x02, sp)
	ld	a, xh
	rlc	a
	clr	a
	sbc	a, #0x00
	push	a
	ld	(0x86, sp), a
	ld	a, (0x86, sp)
	ld	(0x76, sp), a
	ld	a, #0x17
	tnz	a
	jreq	00159$
00158$:
	sllw	x
	rlc	(1, sp)
	rlc	(0x76, sp)
	dec	a
	jrne	00158$
00159$:
	pop	a
	or	a, (0x40, sp)
	ld	(0x1e, sp), a
	ld	a, xl
	or	a, (0x42, sp)
	ld	xl, a
	ld	a, xh
	or	a, (0x41, sp)
	ld	xh, a
	ld	a, (0x75, sp)
	or	a, (0x3f, sp)
	or	a, (0x04, sp)
	ld	(0x29, sp), a
	ld	a, xl
	or	a, (0x07, sp)
	ld	yl, a
	ld	a, xh
	or	a, (0x06, sp)
	ld	yh, a
	ld	a, (0x1e, sp)
	or	a, (0x05, sp)
	ld	(0x2a, sp), a
	ldw	x, (0x3b, sp)
	ldw	(0x2, x), y
	ldw	y, (0x29, sp)
	ldw	(x), y
00112$:
;	../_fsmul.c: 290: return (fl1.f);
	ldw	x, sp
	addw	x, #12
	ld	a, (0x3, x)
	ld	yl, a
	ld	a, (0x2, x)
	ld	yh, a
	ldw	x, (x)
	exgw	x, y
00113$:
	addw	sp, #136
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
