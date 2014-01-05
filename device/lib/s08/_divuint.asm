;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Sun Dec 29 12:49:45 2013
;--------------------------------------------------------
	.cs08
	.module _divuint
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
	.globl __divuint_PARM_2
	.globl __divuint
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
;--------------------------------------------------------
; overlayable items in ram 
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
__divuint_sloc0_1_0:
	.ds 1
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
__divuint_PARM_2:
	.ds 2
__divuint_a_1_1:
	.ds 2
__divuint_c_1_2:
	.ds 1
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
;Allocation info for local variables in function '_divuint'
;------------------------------------------------------------
;b                         Allocated with name '__divuint_PARM_2'
;a                         Allocated with name '__divuint_a_1_1'
;reste                     Allocated to registers x h 
;count                     Allocated to registers 
;c                         Allocated with name '__divuint_c_1_2'
;sloc0                     Allocated with name '__divuint_sloc0_1_0'
;------------------------------------------------------------
;_divuint.c:153: _divuint (unsigned int a, unsigned int b)
;	-----------------------------------------
;	 function _divuint
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
__divuint:
	sta	(__divuint_a_1_1 + 1)
	stx	__divuint_a_1_1
;_divuint.c:155: unsigned int reste = 0;
	clrh
	clrx
;_divuint.c:159: do
	mov	#0x10,*__divuint_sloc0_1_0
00105$:
;_divuint.c:162: c = MSB_SET(a);
	lda	__divuint_a_1_1
	rola
	clra
	rola
	sta	__divuint_c_1_2
;_divuint.c:163: a <<= 1;
	pshx
	lda	(__divuint_a_1_1 + 1)
	ldx	__divuint_a_1_1
	lsla
	rolx
	sta	(__divuint_a_1_1 + 1)
	stx	__divuint_a_1_1
	pulx
;_divuint.c:164: reste <<= 1;
	txa
	pshh
	pulx
	lsla
	rolx
	pshx
	pulh
	tax
;_divuint.c:165: if (c)
	lda	__divuint_c_1_2
	beq	00102$
;_divuint.c:166: reste |= 1;
	txa
	ora	#0x01
	tax
00102$:
;_divuint.c:168: if (reste >= b)
	cphx	__divuint_PARM_2
	bcs	00106$
;_divuint.c:170: reste -= b;
	txa
	sub	(__divuint_PARM_2 + 1)
	tax
	pshh
	pula
	sbc	__divuint_PARM_2
	psha
	pulh
;_divuint.c:172: a |= 1;
	lda	(__divuint_a_1_1 + 1)
	ora	#0x01
	sta	(__divuint_a_1_1 + 1)
00106$:
;_divuint.c:175: while (--count);
	dbnz    *__divuint_sloc0_1_0,00105$
;_divuint.c:176: return a;
	ldx	__divuint_a_1_1
	lda	(__divuint_a_1_1 + 1)
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT
	.area CABS    (ABS,CODE)
