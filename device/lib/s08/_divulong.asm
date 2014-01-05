;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Sun Dec 29 12:49:45 2013
;--------------------------------------------------------
	.cs08
	.module _divulong
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
	.globl __divulong_PARM_2
	.globl __divulong_PARM_1
	.globl __divulong
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
;--------------------------------------------------------
; overlayable items in ram 
;--------------------------------------------------------
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
__divulong_PARM_1:
	.ds 4
__divulong_PARM_2:
	.ds 4
__divulong_reste_1_2:
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
;Allocation info for local variables in function '_divulong'
;------------------------------------------------------------
;a                         Allocated with name '__divulong_PARM_1'
;b                         Allocated with name '__divulong_PARM_2'
;reste                     Allocated with name '__divulong_reste_1_2'
;count                     Allocated to registers 
;c                         Allocated to registers h 
;------------------------------------------------------------
;_divulong.c:331: _divulong (unsigned long a, unsigned long b)
;	-----------------------------------------
;	 function _divulong
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
__divulong:
;_divulong.c:333: unsigned long reste = 0L;
	clrh
	clrx
	sthx	__divulong_reste_1_2
	sthx	(__divulong_reste_1_2 + 2)
;_divulong.c:337: do
	ldx	#0x20
00105$:
;_divulong.c:340: c = MSB_SET(a);
	lda	__divulong_PARM_1
	rola
	clra
	rola
	psha
	pulh
;_divulong.c:341: a <<= 1;
	pshx
	lda	(__divulong_PARM_1 + 3)
	ldx	(__divulong_PARM_1 + 2)
	lsla
	rolx
	sta	(__divulong_PARM_1 + 3)
	stx	(__divulong_PARM_1 + 2)
	lda	(__divulong_PARM_1 + 1)
	ldx	__divulong_PARM_1
	rola
	rolx
	sta	(__divulong_PARM_1 + 1)
	stx	__divulong_PARM_1
	pulx
;_divulong.c:342: reste <<= 1;
	pshx
	lda	(__divulong_reste_1_2 + 3)
	ldx	(__divulong_reste_1_2 + 2)
	lsla
	rolx
	sta	(__divulong_reste_1_2 + 3)
	stx	(__divulong_reste_1_2 + 2)
	lda	(__divulong_reste_1_2 + 1)
	ldx	__divulong_reste_1_2
	rola
	rolx
	sta	(__divulong_reste_1_2 + 1)
	stx	__divulong_reste_1_2
	pulx
;_divulong.c:343: if (c)
	pshh
	pula
	tsta
	beq	00102$
;_divulong.c:344: reste |= 1L;
	lda	(__divulong_reste_1_2 + 3)
	ora	#0x01
	sta	(__divulong_reste_1_2 + 3)
00102$:
;_divulong.c:346: if (reste >= b)
	lda	(__divulong_reste_1_2 + 3)
	sub	(__divulong_PARM_2 + 3)
	lda	(__divulong_reste_1_2 + 2)
	sbc	(__divulong_PARM_2 + 2)
	lda	(__divulong_reste_1_2 + 1)
	sbc	(__divulong_PARM_2 + 1)
	lda	__divulong_reste_1_2
	sbc	__divulong_PARM_2
	bcs	00106$
;_divulong.c:348: reste -= b;
	lda	(__divulong_reste_1_2 + 3)
	sub	(__divulong_PARM_2 + 3)
	sta	(__divulong_reste_1_2 + 3)
	lda	(__divulong_reste_1_2 + 2)
	sbc	(__divulong_PARM_2 + 2)
	sta	(__divulong_reste_1_2 + 2)
	lda	(__divulong_reste_1_2 + 1)
	sbc	(__divulong_PARM_2 + 1)
	sta	(__divulong_reste_1_2 + 1)
	lda	__divulong_reste_1_2
	sbc	__divulong_PARM_2
	sta	__divulong_reste_1_2
;_divulong.c:350: a |= 1L;
	lda	(__divulong_PARM_1 + 3)
	ora	#0x01
	sta	(__divulong_PARM_1 + 3)
00106$:
;_divulong.c:353: while (--count);
	decx
	beq	00129$
	jmp	00105$
00129$:
;_divulong.c:354: return a;
	lda	__divulong_PARM_1
	sta	*___SDCC_hc08_ret3
	lda	(__divulong_PARM_1 + 1)
	sta	*___SDCC_hc08_ret2
	ldx	(__divulong_PARM_1 + 2)
	lda	(__divulong_PARM_1 + 3)
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT
	.area CABS    (ABS,CODE)
