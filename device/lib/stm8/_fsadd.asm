;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:34 2013
;--------------------------------------------------------
	.module _fsadd
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___fsadd
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
;	../_fsadd.c: 170: float __fsadd (float a1, float a2)
;	-----------------------------------------
;	 function __fsadd
;	-----------------------------------------
___fsadd:
	sub	sp, #153
;	../_fsadd.c: 178: pfl2 = (long _AUTOMEM *)&a2;
	ldw	x, sp
	addw	x, #160
;	../_fsadd.c: 179: exp2 = EXP (*pfl2);
	ld	a, (0x3, x)
	ld	(0x49, sp), a
	ld	a, (0x2, x)
	ld	(0x48, sp), a
	ldw	x, (x)
	ldw	(0x46, sp), x
	ldw	y, (0x48, sp)
	ldw	(0x12, sp), y
	ldw	y, (0x46, sp)
	ldw	(0x10, sp), y
	ldw	x, (0x12, sp)
	ldw	y, (0x10, sp)
	ld	a, #0x17
	tnz	a
	jreq	00222$
00221$:
	srlw	y
	rrcw	x
	dec	a
	jrne	00221$
00222$:
	clr	a
	ld	xh, a
	clr	(0x97, sp)
	clr	a
	ldw	(0x02, sp), x
;	../_fsadd.c: 180: mant2 = MANT (*pfl2) << 4;
	ld	a, (0x13, sp)
	ld	xh, a
	ld	a, (0x12, sp)
	ld	yh, a
	ld	a, (0x11, sp)
	and	a, #0x7f
	ld	xl, a
	clr	a
	push	a
	ld	a, xl
	or	a, #0x80
	ld	xl, a
	pop	a
	exg	a, yl
	ld	a, xh
	exg	a, yl
	ld	xh, a
	ld	a, #0x04
	tnz	a
	jreq	00224$
00223$:
	sllw	y
	rlcw	x
	dec	a
	jrne	00223$
00224$:
	ldw	(0x0a, sp), y
	ldw	(0x08, sp), x
;	../_fsadd.c: 181: if (SIGN (*pfl2))
	ld	a, (0x10, sp)
	sll	a
	clr	a
	rlc	a
	tnz	a
	jreq	00102$
;	../_fsadd.c: 182: mant2 = -mant2;
	ldw	x, (0x0a, sp)
	negw	x
	clr	a
	sbc	a, (0x09, sp)
	ld	(0x43, sp), a
	clr	a
	sbc	a, (0x08, sp)
	ldw	(0x0a, sp), x
	ld	(0x08, sp), a
	ld	a, (0x43, sp)
	ld	(0x09, sp), a
00102$:
;	../_fsadd.c: 184: if (!*pfl2)
	ldw	x, (0x48, sp)
	jrne	00104$
	ldw	x, (0x46, sp)
	jrne	00104$
;	../_fsadd.c: 185: return (a1);
	ldw	x, (0x9e, sp)
	ldw	y, (0x9c, sp)
	jp	00137$
00104$:
;	../_fsadd.c: 187: pfl1 = (long _AUTOMEM *)&a1;
	ldw	x, sp
	addw	x, #156
	ldw	(0x40, sp), x
	ldw	y, (0x40, sp)
	ldw	(0x06, sp), y
	ld	a, (0x06, sp)
	ld	(0x06, sp), a
;	../_fsadd.c: 188: exp1 = EXP (*pfl1);
	ldw	x, (0x06, sp)
	ld	a, (0x3, x)
	ld	(0x55, sp), a
	ld	a, (0x2, x)
	ld	(0x54, sp), a
	ldw	x, (x)
	ldw	(0x52, sp), x
	ldw	y, (0x54, sp)
	ldw	(0x50, sp), y
	ldw	y, (0x52, sp)
	ldw	(0x4e, sp), y
	ldw	y, (0x50, sp)
	ldw	(0x4c, sp), y
	ldw	y, (0x4e, sp)
	ldw	(0x4a, sp), y
	ld	a, #0x17
	tnz	a
	jreq	00229$
00228$:
	srl	(0x4a, sp)
	rrc	(0x4b, sp)
	rrc	(0x4c, sp)
	rrc	(0x4d, sp)
	dec	a
	jrne	00228$
00229$:
	ld	a, (0x4d, sp)
	ld	(0x1d, sp), a
	clr	(0x1c, sp)
	clr	(0x1b, sp)
	clr	(0x1a, sp)
	ldw	y, (0x1c, sp)
	ldw	(0x04, sp), y
	ldw	y, (0x04, sp)
	ldw	(0x18, sp), y
;	../_fsadd.c: 189: mant1 = MANT (*pfl1) << 4;
	ld	a, (0x51, sp)
	ld	(0x17, sp), a
	ld	a, (0x50, sp)
	ld	(0x16, sp), a
	ld	a, (0x4f, sp)
	and	a, #0x7f
	ld	(0x15, sp), a
	clr	(0x14, sp)
	ld	a, (0x17, sp)
	ld	(0x67, sp), a
	ld	a, (0x16, sp)
	ld	(0x66, sp), a
	ld	a, (0x15, sp)
	or	a, #0x80
	ld	(0x65, sp), a
	ld	a, (0x14, sp)
	ld	(0x64, sp), a
	ldw	y, (0x66, sp)
	ldw	(0x0e, sp), y
	ldw	y, (0x64, sp)
	ldw	(0x0c, sp), y
	ld	a, #0x04
	tnz	a
	jreq	00231$
00230$:
	sll	(0x0f, sp)
	rlc	(0x0e, sp)
	rlc	(0x0d, sp)
	rlc	(0x0c, sp)
	dec	a
	jrne	00230$
00231$:
	ldw	y, (0x0e, sp)
	ldw	(0x62, sp), y
	ldw	y, (0x0c, sp)
	ldw	(0x60, sp), y
;	../_fsadd.c: 190: if (SIGN(*pfl1))
	ld	a, (0x4e, sp)
	sll	a
	clr	a
	rlc	a
	tnz	a
	jreq	00108$
;	../_fsadd.c: 191: if (*pfl1 & 0x80000000)
	clr	(0x5f, sp)
	clr	(0x5e, sp)
	clr	a
	ld	xl, a
	ld	a, (0x4e, sp)
	and	a, #0x80
	ld	xh, a
	ldw	y, (0x5e, sp)
	jrne	00233$
	tnzw	x
	jreq	00108$
00233$:
;	../_fsadd.c: 192: mant1 = -mant1;
	ldw	x, (0x62, sp)
	negw	x
	clr	a
	sbc	a, (0x61, sp)
	ld	(0x59, sp), a
	clr	a
	sbc	a, (0x60, sp)
	ldw	(0x62, sp), x
	ld	(0x60, sp), a
	ld	a, (0x59, sp)
	ld	(0x61, sp), a
00108$:
;	../_fsadd.c: 194: if (!*pfl1)
	ldw	x, (0x54, sp)
	jrne	00110$
	ldw	x, (0x52, sp)
	jrne	00110$
;	../_fsadd.c: 195: return (a2);
	ldw	x, (0xa2, sp)
	ldw	y, (0xa0, sp)
	jp	00137$
00110$:
;	../_fsadd.c: 197: expd = exp1 - exp2;
	ldw	y, (0x18, sp)
	subw	y, (0x02, sp)
	ldw	(0x56, sp), y
;	../_fsadd.c: 198: if (expd > 25)
	ldw	x, (0x56, sp)
	cpw	x, #0x0019
	jrsle	00112$
;	../_fsadd.c: 199: return (a1);
	ldw	x, (0x9e, sp)
	ldw	y, (0x9c, sp)
	jp	00137$
00112$:
;	../_fsadd.c: 200: if (expd < -25)
	ldw	x, (0x56, sp)
	cpw	x, #0xffe7
	jrsge	00114$
;	../_fsadd.c: 201: return (a2);
	ldw	x, (0xa2, sp)
	ldw	y, (0xa0, sp)
	jp	00137$
00114$:
;	../_fsadd.c: 203: if (expd < 0)
	ldw	x, (0x56, sp)
	cpw	x, #0x0000
	jrsge	00116$
;	../_fsadd.c: 205: expd = -expd;
	ldw	x, (0x56, sp)
	negw	x
;	../_fsadd.c: 206: exp1 += expd;
	ldw	y, x
	addw	y, (0x18, sp)
	ldw	(0x18, sp), y
;	../_fsadd.c: 207: mant1 >>= expd;
	ld	a, (0x60, sp)
	ld	(0x3c, sp), a
	ldw	y, (0x61, sp)
	push	a
	ld	a, (0x64, sp)
	ld	(0x40, sp), a
	pop	a
	ld	a, xl
	tnz	a
	jreq	00240$
00239$:
	sra	(0x3c, sp)
	rrcw	y
	rrc	(0x3f, sp)
	dec	a
	jrne	00239$
00240$:
	ldw	(0x61, sp), y
	ld	a, (0x3f, sp)
	ld	(0x63, sp), a
	ld	a, (0x3c, sp)
	ld	(0x60, sp), a
	jra	00117$
00116$:
;	../_fsadd.c: 211: mant2 >>= expd;
	ldw	y, (0x0a, sp)
	ldw	x, (0x08, sp)
	ld	a, (0x57, sp)
	tnz	a
	jreq	00242$
00241$:
	sraw	x
	rrcw	y
	dec	a
	jrne	00241$
00242$:
	ldw	(0x0a, sp), y
	ldw	(0x08, sp), x
00117$:
;	../_fsadd.c: 213: mant1 += mant2;
	ldw	y, (0x62, sp)
	addw	y, (0x0a, sp)
	ld	a, (0x61, sp)
	adc	a, (0x09, sp)
	ld	(0x39, sp), a
	ld	a, (0x60, sp)
	adc	a, (0x08, sp)
	ldw	(0x0e, sp), y
	ld	(0x0c, sp), a
	ld	a, (0x39, sp)
	ld	(0x0d, sp), a
;	../_fsadd.c: 215: sign = false;
	clr	(0x01, sp)
;	../_fsadd.c: 217: if (mant1 < 0)
	ldw	x, (0x0e, sp)
	cpw	x, #0x0000
	ld	a, (0x0d, sp)
	sbc	a, #0x00
	ld	a, (0x0c, sp)
	sbc	a, #0x00
	jrsge	00121$
;	../_fsadd.c: 219: mant1 = -mant1;
	ldw	x, (0x0e, sp)
	negw	x
	clr	a
	sbc	a, (0x0d, sp)
	ld	(0x35, sp), a
	clr	a
	sbc	a, (0x0c, sp)
	ldw	(0x0e, sp), x
	ld	(0x0c, sp), a
	ld	a, (0x35, sp)
	ld	(0x0d, sp), a
;	../_fsadd.c: 220: sign = true;
	ld	a, #0x01
	ld	(0x01, sp), a
	jra	00154$
00121$:
;	../_fsadd.c: 222: else if (!mant1)
	ldw	x, (0x0e, sp)
	jrne	00154$
	ldw	x, (0x0c, sp)
	jrne	00154$
;	../_fsadd.c: 223: return (0);
	clrw	x
	clrw	y
	jp	00137$
;	../_fsadd.c: 226: while (mant1 < (HIDDEN<<4)) {
00154$:
	ldw	y, (0x18, sp)
	ldw	(0x32, sp), y
00123$:
	ldw	y, (0x0e, sp)
	ldw	x, (0x0c, sp)
	cpw	y, #0x0000
	ld	a, xl
	sbc	a, #0x00
	ld	a, xh
	sbc	a, #0x08
	jrnc	00157$
;	../_fsadd.c: 227: mant1 <<= 1;
	ld	a, (0x0e, sp)
	ldw	x, (0x0c, sp)
	push	a
	ld	a, (0x10, sp)
	ld	(0x32, sp), a
	pop	a
	sll	(0x31, sp)
	rlc	a
	rlcw	x
	ld	(0x0e, sp), a
	ldw	(0x0c, sp), x
	ld	a, (0x31, sp)
	ld	(0x0f, sp), a
;	../_fsadd.c: 228: exp1--;
	ldw	x, (0x32, sp)
	decw	x
	ldw	(0x32, sp), x
	jra	00123$
;	../_fsadd.c: 232: while (mant1 & 0xf0000000) {
00157$:
	ldw	y, (0x32, sp)
	ldw	(0x04, sp), y
00128$:
	ldw	y, (0x0e, sp)
	ldw	(0x2c, sp), y
	ldw	y, (0x0c, sp)
	ldw	(0x2a, sp), y
	clr	(0x29, sp)
	clr	(0x28, sp)
	clr	(0x27, sp)
	ld	a, (0x2a, sp)
	and	a, #0xf0
	ld	(0x26, sp), a
	ldw	x, (0x28, sp)
	jrne	00247$
	ldw	x, (0x26, sp)
	jreq	00163$
00247$:
;	../_fsadd.c: 233: if (mant1&1)
	ld	a, (0x0f, sp)
	and	a, #0x01
	ld	(0x25, sp), a
	clr	(0x24, sp)
	clr	(0x23, sp)
	clr	(0x22, sp)
	ldw	x, (0x24, sp)
	jrne	00248$
	ldw	x, (0x22, sp)
	jreq	00127$
00248$:
;	../_fsadd.c: 234: mant1 += 2;
	ldw	x, (0x0e, sp)
	addw	x, #0x0002
	ld	a, (0x0d, sp)
	adc	a, #0x00
	ld	(0x1f, sp), a
	ld	a, (0x0c, sp)
	adc	a, #0x00
	ldw	(0x0e, sp), x
	ld	(0x0c, sp), a
	ld	a, (0x1f, sp)
	ld	(0x0d, sp), a
00127$:
;	../_fsadd.c: 235: mant1 >>= 1;
	ld	a, (0x0c, sp)
	ld	(0x92, sp), a
	ldw	x, (0x0d, sp)
	push	a
	ld	a, (0x10, sp)
	ld	(0x96, sp), a
	pop	a
	sra	(0x92, sp)
	rrcw	x
	rrc	(0x95, sp)
	ldw	(0x0d, sp), x
	ld	a, (0x95, sp)
	ld	(0x0f, sp), a
	ld	a, (0x92, sp)
	ld	(0x0c, sp), a
;	../_fsadd.c: 236: exp1++;
	ldw	x, (0x04, sp)
	incw	x
	ldw	(0x04, sp), x
	jra	00128$
00163$:
	ld	a, (0x04, sp)
	ld	(0x90, sp), a
	ld	a, (0x05, sp)
;	../_fsadd.c: 240: mant1 &= ~(HIDDEN<<4);
	push	a
	ld	a, (0x2e, sp)
	ld	(0x90, sp), a
	ld	a, (0x2d, sp)
	ld	(0x8f, sp), a
	ld	a, (0x2c, sp)
	ld	xl, a
	ld	a, (0x2b, sp)
	and	a, #0xf7
	ld	xh, a
	pop	a
	ldw	(0x88, sp), x
	ldw	y, (0x8e, sp)
	ldw	(0x8a, sp), y
;	../_fsadd.c: 243: if (exp1 >= 0x100)
	ldw	x, (0x04, sp)
	cpw	x, #0x0100
	jrslt	00135$
;	../_fsadd.c: 244: *pfl1 = (sign ? (SIGNBIT | __INFINITY) : __INFINITY);
	tnz	(0x01, sp)
	jreq	00139$
	clrw	y
	ldw	x, #0xff80
	ldw	(0x84, sp), x
	jra	00140$
00139$:
	clrw	y
	ldw	x, #0x7f80
	ldw	(0x84, sp), x
00140$:
	ldw	x, (0x06, sp)
	ldw	(0x2, x), y
	ldw	y, (0x84, sp)
	ldw	(x), y
	jp	00136$
00135$:
;	../_fsadd.c: 245: else if (exp1 < 0)
	ldw	x, (0x04, sp)
	cpw	x, #0x0000
	jrsge	00132$
;	../_fsadd.c: 246: *pfl1 = 0;
	ldw	x, (0x06, sp)
	clr	(0x3, x)
	clr	(0x2, x)
	clr	(0x1, x)
	clr	(x)
	jp	00136$
00132$:
;	../_fsadd.c: 248: *pfl1 = PACK (sign ? SIGNBIT : 0 , exp1, mant1>>4);
	tnz	(0x01, sp)
	jreq	00141$
	clrw	x
	ldw	(0x82, sp), x
	ldw	x, #0x8000
	ldw	(0x80, sp), x
	jra	00142$
00141$:
	clrw	x
	ldw	(0x82, sp), x
	ldw	(0x80, sp), x
00142$:
	push	a
	ld	a, (0x91, sp)
	ld	(0x7f, sp), a
	pop	a
	clrw	x
	tnz	(0x7e, sp)
	jrpl	00253$
	decw	x
00253$:
	push	a
	ld	a, (0x7f, sp)
	ld	(0x7b, sp), a
	ld	a, #0x17
	tnz	a
	jreq	00255$
00254$:
	sll	(1, sp)
	rlc	(0x7b, sp)
	rlcw	x
	dec	a
	jrne	00254$
00255$:
	pop	a
	or	a, (0x83, sp)
	ld	(0x77, sp), a
	ld	a, (0x7a, sp)
	or	a, (0x82, sp)
	ld	(0x76, sp), a
	ld	a, xl
	or	a, (0x81, sp)
	ld	(0x75, sp), a
	ld	a, xh
	or	a, (0x80, sp)
	push	a
	ldw	y, (0x8b, sp)
	ldw	(0x73, sp), y
	ldw	x, (0x89, sp)
	ld	a, #0x04
	tnz	a
	jreq	00257$
00256$:
	sraw	x
	rrc	(0x73, sp)
	rrc	(0x74, sp)
	dec	a
	jrne	00256$
00257$:
	pop	a
	ldw	y, (0x72, sp)
	ldw	(0x6e, sp), y
	pushw	x
	or	a, (1, sp)
	popw	x
	ld	(0x68, sp), a
	ld	a, (0x77, sp)
	or	a, (0x6f, sp)
	ld	yl, a
	ld	a, (0x76, sp)
	or	a, (0x6e, sp)
	ld	yh, a
	pushw	x
	ld	a, (0x77, sp)
	or	a, (2, sp)
	popw	x
	ld	(0x69, sp), a
	ldw	x, (0x06, sp)
	ldw	(0x2, x), y
	ldw	y, (0x68, sp)
	ldw	(x), y
00136$:
;	../_fsadd.c: 249: return (a1);
	ldw	x, (0x9e, sp)
	ldw	y, (0x9c, sp)
00137$:
	addw	sp, #153
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
