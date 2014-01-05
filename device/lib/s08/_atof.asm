;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Sun Dec 29 12:49:45 2013
;--------------------------------------------------------
	.cs08
	.module _atof
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
	.globl _atoi
	.globl _isspace
	.globl _islower
	.globl _isdigit
	.globl _atof
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
_atof_sloc0_1_0:
	.ds 2
_atof_sloc1_1_0:
	.ds 2
_atof_sloc2_1_0:
	.ds 1
_atof_sloc3_1_0:
	.ds 2
_atof_sloc4_1_0:
	.ds 4
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
_atof_value_1_26:
	.ds 4
_atof_fraction_1_26:
	.ds 4
_atof_sign_1_26:
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
;Allocation info for local variables in function 'atof'
;------------------------------------------------------------
;sloc0                     Allocated with name '_atof_sloc0_1_0'
;sloc1                     Allocated with name '_atof_sloc1_1_0'
;sloc2                     Allocated with name '_atof_sloc2_1_0'
;sloc3                     Allocated with name '_atof_sloc3_1_0'
;sloc4                     Allocated with name '_atof_sloc4_1_0'
;s                         Allocated to registers 
;value                     Allocated with name '_atof_value_1_26'
;fraction                  Allocated with name '_atof_fraction_1_26'
;iexp                      Allocated to registers a 
;sign                      Allocated with name '_atof_sign_1_26'
;------------------------------------------------------------
;../_atof.c:33: float atof(const char * s)
;	-----------------------------------------
;	 function atof
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
_atof:
	sta	*(_atof_sloc0_1_0 + 1)
	stx	*_atof_sloc0_1_0
;../_atof.c:40: while (isspace(*s)) s++;
00101$:
	ldhx	*_atof_sloc0_1_0
	lda	,x
	jsr	_isspace
	ldhx	*_atof_sloc0_1_0
	aix	#1
	tsta
	beq	00148$
	sthx	*_atof_sloc0_1_0
	bra	00101$
00148$:
	mov	*_atof_sloc0_1_0,*_atof_sloc1_1_0
	mov	*(_atof_sloc0_1_0 + 1),*(_atof_sloc1_1_0 + 1)
;../_atof.c:43: if (*s == '-')
	pshx
	pshh
	ldhx	*_atof_sloc0_1_0
	lda	,x
	pulh
	pulx
	cmp	#0x2D
	bne	00107$
;../_atof.c:45: sign=1;
	lda	#0x01
	sta	_atof_sign_1_26
;../_atof.c:46: s++;
	sthx	*_atof_sloc1_1_0
	bra	00108$
00107$:
;../_atof.c:50: sign=0;
	psha
	clra
	sta	_atof_sign_1_26
	pula
;../_atof.c:51: if (*s == '+') s++;
	cmp	#0x2B
	bne	00108$
	sthx	*_atof_sloc1_1_0
00108$:
;../_atof.c:55: for (value=0.0; isdigit(*s); s++)
	clrh
	clrx
	sthx	_atof_value_1_26
	sthx	(_atof_value_1_26 + 2)
00124$:
	ldhx	*_atof_sloc1_1_0
	lda	,x
	jsr	_isdigit
	sta	*_atof_sloc0_1_0
	ldhx	*_atof_sloc1_1_0
	lda	,x
	sta	*_atof_sloc2_1_0
	ldhx	*_atof_sloc1_1_0
	aix	#1
	sthx	*_atof_sloc3_1_0
	tst	*_atof_sloc0_1_0
	beq	00149$
;../_atof.c:57: value=10.0*value+(*s-'0');
	ldhx	#0x4120
	sthx	___fsmul_PARM_1
	clrh
	clrx
	sthx	(___fsmul_PARM_1 + 2)
	ldhx	_atof_value_1_26
	sthx	___fsmul_PARM_2
	ldhx	(_atof_value_1_26 + 2)
	sthx	(___fsmul_PARM_2 + 2)
	jsr	___fsmul
	sta	*(_atof_sloc4_1_0 + 3)
	stx	*(_atof_sloc4_1_0 + 2)
	mov	*___SDCC_hc08_ret2,*(_atof_sloc4_1_0 + 1)
	mov	*___SDCC_hc08_ret3,*_atof_sloc4_1_0
	ldx	*_atof_sloc2_1_0
	lda	*_atof_sloc2_1_0
	rola	
	clra	
	sbc	#0x00
	psha
	pulh
	aix	#-48
	txa
	pshh
	pulx
	jsr	___sint2fs
	sta	(___fsadd_PARM_2 + 3)
	stx	(___fsadd_PARM_2 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fsadd_PARM_2 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fsadd_PARM_2
	lda	*_atof_sloc4_1_0
	sta	___fsadd_PARM_1
	lda	*(_atof_sloc4_1_0 + 1)
	sta	(___fsadd_PARM_1 + 1)
	lda	*(_atof_sloc4_1_0 + 2)
	sta	(___fsadd_PARM_1 + 2)
	lda	*(_atof_sloc4_1_0 + 3)
	sta	(___fsadd_PARM_1 + 3)
	jsr	___fsadd
	sta	(_atof_value_1_26 + 3)
	stx	(_atof_value_1_26 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(_atof_value_1_26 + 1)
	lda	*___SDCC_hc08_ret3
	sta	_atof_value_1_26
;../_atof.c:55: for (value=0.0; isdigit(*s); s++)
	mov	*_atof_sloc3_1_0,*_atof_sloc1_1_0
	mov	*(_atof_sloc3_1_0 + 1),*(_atof_sloc1_1_0 + 1)
	jmp	00124$
00149$:
	ldhx	*_atof_sloc1_1_0
;../_atof.c:61: if (*s == '.')
	lda	*_atof_sloc2_1_0
	cbeqa	#0x2E,00200$
	jmp	00112$
00200$:
;../_atof.c:63: s++;
	mov	*_atof_sloc3_1_0,*_atof_sloc4_1_0
	mov	*(_atof_sloc3_1_0 + 1),*(_atof_sloc4_1_0 + 1)
;../_atof.c:64: for (fraction=0.1; isdigit(*s); s++)
	ldhx	#0x3DCC
	sthx	_atof_fraction_1_26
	ldhx	#0xCCCD
	sthx	(_atof_fraction_1_26 + 2)
00127$:
	ldhx	*_atof_sloc4_1_0
	lda	,x
	jsr	_isdigit
	tsta
	bne	00201$
	jmp	00150$
00201$:
;../_atof.c:66: value+=(*s-'0')*fraction;
	ldhx	*_atof_sloc4_1_0
	lda	,x
	aix	#1
	sthx	*_atof_sloc4_1_0
	tax
	rola	
	clra	
	sbc	#0x00
	psha
	pulh
	aix	#-48
	txa
	pshh
	pulx
	jsr	___sint2fs
	sta	(___fsmul_PARM_1 + 3)
	stx	(___fsmul_PARM_1 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fsmul_PARM_1 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fsmul_PARM_1
	ldhx	_atof_fraction_1_26
	sthx	___fsmul_PARM_2
	ldhx	(_atof_fraction_1_26 + 2)
	sthx	(___fsmul_PARM_2 + 2)
	jsr	___fsmul
	sta	(___fsadd_PARM_2 + 3)
	stx	(___fsadd_PARM_2 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fsadd_PARM_2 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fsadd_PARM_2
	ldhx	_atof_value_1_26
	sthx	___fsadd_PARM_1
	ldhx	(_atof_value_1_26 + 2)
	sthx	(___fsadd_PARM_1 + 2)
	jsr	___fsadd
	sta	(_atof_value_1_26 + 3)
	stx	(_atof_value_1_26 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(_atof_value_1_26 + 1)
	lda	*___SDCC_hc08_ret3
	sta	_atof_value_1_26
;../_atof.c:67: fraction*=0.1;
	ldhx	#0x3DCC
	sthx	___fsmul_PARM_1
	ldhx	#0xCCCD
	sthx	(___fsmul_PARM_1 + 2)
	ldhx	_atof_fraction_1_26
	sthx	___fsmul_PARM_2
	ldhx	(_atof_fraction_1_26 + 2)
	sthx	(___fsmul_PARM_2 + 2)
	jsr	___fsmul
	sta	(_atof_fraction_1_26 + 3)
	stx	(_atof_fraction_1_26 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(_atof_fraction_1_26 + 1)
	lda	*___SDCC_hc08_ret3
	sta	_atof_fraction_1_26
;../_atof.c:64: for (fraction=0.1; isdigit(*s); s++)
	jmp	00127$
00150$:
	ldhx	*_atof_sloc4_1_0
00112$:
;../_atof.c:72: if (toupper(*s)=='E')
	lda	,x
	pshx
	pshh
	jsr	_islower
	sta	*_atof_sloc4_1_0
	pulh
	pulx
	lda	,x
	tst	*_atof_sloc4_1_0
	beq	00131$
	and	#0xDF
00131$:
	cmp	#0x45
	bne	00120$
;../_atof.c:74: s++;
	aix	#1
;../_atof.c:75: iexp=(signed char)atoi(s);
	txa
	pshh
	pulx
	jsr	_atoi
;../_atof.c:77: while(iexp!=0)
00116$:
	tsta
	beq	00120$
;../_atof.c:79: if(iexp<0)
	cmp	#0x00
	bge	00114$
;../_atof.c:81: value*=0.1;
	ldhx	#0x3DCC
	sthx	___fsmul_PARM_1
	ldhx	#0xCCCD
	sthx	(___fsmul_PARM_1 + 2)
	ldhx	_atof_value_1_26
	sthx	___fsmul_PARM_2
	ldhx	(_atof_value_1_26 + 2)
	sthx	(___fsmul_PARM_2 + 2)
	psha
	jsr	___fsmul
	sta	(_atof_value_1_26 + 3)
	stx	(_atof_value_1_26 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(_atof_value_1_26 + 1)
	lda	*___SDCC_hc08_ret3
	sta	_atof_value_1_26
	pula
;../_atof.c:82: iexp++;
	inca
	bra	00116$
00114$:
;../_atof.c:86: value*=10.0;
	ldhx	#0x4120
	sthx	___fsmul_PARM_1
	clrh
	clrx
	sthx	(___fsmul_PARM_1 + 2)
	ldhx	_atof_value_1_26
	sthx	___fsmul_PARM_2
	ldhx	(_atof_value_1_26 + 2)
	sthx	(___fsmul_PARM_2 + 2)
	psha
	jsr	___fsmul
	sta	(_atof_value_1_26 + 3)
	stx	(_atof_value_1_26 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(_atof_value_1_26 + 1)
	lda	*___SDCC_hc08_ret3
	sta	_atof_value_1_26
	pula
;../_atof.c:87: iexp--;
	deca
	bra	00116$
00120$:
;../_atof.c:93: if(sign) value*=-1.0;
	lda	_atof_sign_1_26
	beq	00122$
	lda	_atof_value_1_26
	eor	#0x80
	sta	_atof_value_1_26
00122$:
;../_atof.c:94: return (value);
	lda	_atof_value_1_26
	sta	*___SDCC_hc08_ret3
	lda	(_atof_value_1_26 + 1)
	sta	*___SDCC_hc08_ret2
	ldx	(_atof_value_1_26 + 2)
	lda	(_atof_value_1_26 + 3)
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT
	.area CABS    (ABS,CODE)
