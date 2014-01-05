;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Sun Dec 29 12:49:45 2013
;--------------------------------------------------------
	.cs08
	.module _mullong
	.optsdcc -ms08
	
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
	.area XINIT
	.area CONST   (CODE)
	.area DSEG    (PAG)
	.area OSEG    (PAG, OVR)
	.area XSEG
	.area XISEG
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __mullong_PARM_2
	.globl __mullong_PARM_1
	.globl __mullong
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
;--------------------------------------------------------
; overlayable items in ram 
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
__mullong_sloc0_1_0:
	.ds 1
__mullong_sloc1_1_0:
	.ds 2
__mullong_sloc2_1_0:
	.ds 4
__mullong_sloc3_1_0:
	.ds 4
;--------------------------------------------------------
; absolute ram data
;--------------------------------------------------------
	.area IABS    (ABS)
	.area IABS    (ABS)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG
;--------------------------------------------------------
; extended address mode data
;--------------------------------------------------------
	.area XSEG
__mullong_PARM_1:
	.ds 4
__mullong_PARM_2:
	.ds 4
__mullong_t_1_2:
	.ds 4
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function '_mullong'
;------------------------------------------------------------
;a                         Allocated with name '__mullong_PARM_1'
;b                         Allocated with name '__mullong_PARM_2'
;t                         Allocated with name '__mullong_t_1_2'
;sloc0                     Allocated with name '__mullong_sloc0_1_0'
;sloc1                     Allocated with name '__mullong_sloc1_1_0'
;sloc2                     Allocated with name '__mullong_sloc2_1_0'
;sloc3                     Allocated with name '__mullong_sloc3_1_0'
;------------------------------------------------------------
;_mullong.c:71: _mullong (long a, long b)
;	-----------------------------------------
;	 function _mullong
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
__mullong:
;_mullong.c:75: t.i.hi = bcast(a)->b.b0 * bcast(b)->b.b2;       // A
	ldx	(__mullong_PARM_1 + 0x0003)
	lda	(__mullong_PARM_2 + 0x0001)
	mul
	pshx
	pulh
	tax
	sthx	__mullong_t_1_2
;_mullong.c:76: t.i.lo = bcast(a)->b.b0 * bcast(b)->b.b0;       // A
	ldx	(__mullong_PARM_1 + 0x0003)
	lda	(__mullong_PARM_2 + 0x0003)
	mul
	pshx
	pulh
	tax
	sthx	(__mullong_t_1_2 + 0x0002)
;_mullong.c:77: t.b.b3 += bcast(a)->b.b3 *
	lda	__mullong_t_1_2
	sta	*__mullong_sloc0_1_0
	ldx	__mullong_PARM_1
;_mullong.c:78: bcast(b)->b.b0;       // G
	lda	(__mullong_PARM_2 + 0x0003)
	mul
	add	*__mullong_sloc0_1_0
	sta	__mullong_t_1_2
;_mullong.c:79: t.b.b3 += bcast(a)->b.b2 *
	lda	__mullong_t_1_2
	sta	*__mullong_sloc0_1_0
	ldx	(__mullong_PARM_1 + 0x0001)
;_mullong.c:80: bcast(b)->b.b1;       // F
	lda	(__mullong_PARM_2 + 0x0002)
	mul
	add	*__mullong_sloc0_1_0
	sta	__mullong_t_1_2
;_mullong.c:81: t.i.hi += bcast(a)->b.b2 * bcast(b)->b.b0;      // E <- b lost in .lst
	lda	__mullong_t_1_2
	sta	*__mullong_sloc1_1_0
	lda	(__mullong_t_1_2 + 1)
	sta	*(__mullong_sloc1_1_0 + 1)
	ldx	(__mullong_PARM_1 + 0x0001)
	lda	(__mullong_PARM_2 + 0x0003)
	mul
	add	*(__mullong_sloc1_1_0 + 1)
	psha
	txa
	adc	*__mullong_sloc1_1_0
	tax
	pula
	stx	__mullong_t_1_2
	sta	(__mullong_t_1_2 + 1)
;_mullong.c:83: t.i.hi += bcast(a)->b.b1 * bcast(b)->b.b1;      // D <- b lost in .lst
	lda	__mullong_t_1_2
	sta	*__mullong_sloc1_1_0
	lda	(__mullong_t_1_2 + 1)
	sta	*(__mullong_sloc1_1_0 + 1)
	ldx	(__mullong_PARM_1 + 0x0002)
	lda	(__mullong_PARM_2 + 0x0002)
	mul
	add	*(__mullong_sloc1_1_0 + 1)
	psha
	txa
	adc	*__mullong_sloc1_1_0
	tax
	pula
	stx	__mullong_t_1_2
	sta	(__mullong_t_1_2 + 1)
;_mullong.c:85: bcast(a)->bi.b3 = bcast(a)->b.b1 *
	ldx	(__mullong_PARM_1 + 0x0002)
;_mullong.c:86: bcast(b)->b.b2;
	lda	(__mullong_PARM_2 + 0x0001)
	mul
	sta	__mullong_PARM_1
;_mullong.c:87: bcast(a)->bi.i12 = bcast(a)->b.b1 *
	ldx	(__mullong_PARM_1 + 0x0002)
;_mullong.c:88: bcast(b)->b.b0;              // C
	lda	(__mullong_PARM_2 + 0x0003)
	mul
	pshx
	pulh
	tax
	sthx	(__mullong_PARM_1 + 0x0001)
;_mullong.c:90: bcast(b)->bi.b3 = bcast(a)->b.b0 *
	ldx	(__mullong_PARM_1 + 0x0003)
;_mullong.c:91: bcast(b)->b.b3;
	lda	__mullong_PARM_2
	mul
	sta	__mullong_PARM_2
;_mullong.c:92: bcast(b)->bi.i12 = bcast(a)->b.b0 *
	ldx	(__mullong_PARM_1 + 0x0003)
;_mullong.c:93: bcast(b)->b.b1;              // B
	lda	(__mullong_PARM_2 + 0x0002)
	mul
	pshx
	pulh
	tax
	sthx	(__mullong_PARM_2 + 0x0001)
;_mullong.c:94: bcast(b)->bi.b0 = 0;                            // B
	clra
	sta	(__mullong_PARM_2 + 0x0003)
;_mullong.c:95: bcast(a)->bi.b0 = 0;                            // C
	sta	(__mullong_PARM_1 + 0x0003)
;_mullong.c:96: t.l += a;
	lda	__mullong_t_1_2
	sta	*__mullong_sloc2_1_0
	lda	(__mullong_t_1_2 + 1)
	sta	*(__mullong_sloc2_1_0 + 1)
	lda	(__mullong_t_1_2 + 2)
	sta	*(__mullong_sloc2_1_0 + 2)
	lda	(__mullong_t_1_2 + 3)
	sta	*(__mullong_sloc2_1_0 + 3)
	ldhx	(__mullong_PARM_1 + 2)
	sthx	*(__mullong_sloc3_1_0 + 2)
	ldhx	__mullong_PARM_1
	sthx	*__mullong_sloc3_1_0
	lda	*(__mullong_sloc2_1_0 + 3)
	add	*(__mullong_sloc3_1_0 + 3)
	sta	*(__mullong_sloc3_1_0 + 3)
	lda	*(__mullong_sloc2_1_0 + 2)
	adc	*(__mullong_sloc3_1_0 + 2)
	sta	*(__mullong_sloc3_1_0 + 2)
	lda	*(__mullong_sloc2_1_0 + 1)
	adc	*(__mullong_sloc3_1_0 + 1)
	sta	*(__mullong_sloc3_1_0 + 1)
	lda	*__mullong_sloc2_1_0
	adc	*__mullong_sloc3_1_0
	sta	*__mullong_sloc3_1_0
	lda	*__mullong_sloc3_1_0
	sta	__mullong_t_1_2
	lda	*(__mullong_sloc3_1_0 + 1)
	sta	(__mullong_t_1_2 + 1)
	lda	*(__mullong_sloc3_1_0 + 2)
	sta	(__mullong_t_1_2 + 2)
	lda	*(__mullong_sloc3_1_0 + 3)
	sta	(__mullong_t_1_2 + 3)
;_mullong.c:98: return t.l + b;
	lda	__mullong_t_1_2
	lda	(__mullong_t_1_2 + 1)
	lda	(__mullong_t_1_2 + 2)
	lda	(__mullong_t_1_2 + 3)
	ldhx	(__mullong_PARM_2 + 2)
	sthx	*(__mullong_sloc2_1_0 + 2)
	ldhx	__mullong_PARM_2
	sthx	*__mullong_sloc2_1_0
	lda	*(__mullong_sloc3_1_0 + 3)
	add	*(__mullong_sloc2_1_0 + 3)
	sta	*(__mullong_sloc3_1_0 + 3)
	lda	*(__mullong_sloc3_1_0 + 2)
	adc	*(__mullong_sloc2_1_0 + 2)
	sta	*(__mullong_sloc3_1_0 + 2)
	lda	*(__mullong_sloc3_1_0 + 1)
	adc	*(__mullong_sloc2_1_0 + 1)
	sta	*(__mullong_sloc3_1_0 + 1)
	lda	*__mullong_sloc3_1_0
	adc	*__mullong_sloc2_1_0
	sta	*__mullong_sloc3_1_0
	mov	*__mullong_sloc3_1_0,*___SDCC_hc08_ret3
	mov	*(__mullong_sloc3_1_0 + 1),*___SDCC_hc08_ret2
	ldx	*(__mullong_sloc3_1_0 + 2)
	lda	*(__mullong_sloc3_1_0 + 3)
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT
	.area CABS    (ABS,CODE)
