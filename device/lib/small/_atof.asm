;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:27:48 2013
;--------------------------------------------------------
	.module _atof
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _atoi
	.globl _isspace
	.globl _islower
	.globl _isdigit
	.globl _atof
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_atof_s_1_25:
	.ds 3
_atof_value_1_26:
	.ds 4
_atof_fraction_1_26:
	.ds 4
_atof_sloc0_1_0:
	.ds 3
_atof_sloc1_1_0:
	.ds 4
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
_atof_sign_1_26:
	.ds 1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
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
;s                         Allocated with name '_atof_s_1_25'
;value                     Allocated with name '_atof_value_1_26'
;fraction                  Allocated with name '_atof_fraction_1_26'
;iexp                      Allocated to registers r6 
;sloc0                     Allocated with name '_atof_sloc0_1_0'
;sloc1                     Allocated with name '_atof_sloc1_1_0'
;------------------------------------------------------------
;	_atof.c:33: float atof(const char * s)
;	-----------------------------------------
;	 function atof
;	-----------------------------------------
_atof:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	_atof_s_1_25,dpl
	mov	(_atof_s_1_25 + 1),dph
	mov	(_atof_s_1_25 + 2),b
;	_atof.c:40: while (isspace(*s)) s++;
	mov	r2,_atof_s_1_25
	mov	r3,(_atof_s_1_25 + 1)
	mov	r4,(_atof_s_1_25 + 2)
00101$:
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	dpl,a
	push	ar4
	push	ar3
	push	ar2
	lcall	_isspace
	mov	a,dpl
	pop	ar2
	pop	ar3
	pop	ar4
	jz	00148$
	inc	r2
	cjne	r2,#0x00,00101$
	inc	r3
	sjmp	00101$
00148$:
	mov	_atof_s_1_25,r2
	mov	(_atof_s_1_25 + 1),r3
	mov	(_atof_s_1_25 + 2),r4
;	_atof.c:43: if (*s == '-')
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r1,a
	cjne	r1,#0x2D,00107$
;	_atof.c:45: sign=1;
	setb	_atof_sign_1_26
;	_atof.c:46: s++;
	mov	a,#0x01
	add	a,r2
	mov	_atof_s_1_25,a
	clr	a
	addc	a,r3
	mov	(_atof_s_1_25 + 1),a
	mov	(_atof_s_1_25 + 2),r4
	sjmp	00108$
00107$:
;	_atof.c:50: sign=0;
	clr	_atof_sign_1_26
;	_atof.c:51: if (*s == '+') s++;
	cjne	r1,#0x2B,00108$
	mov	a,#0x01
	add	a,r2
	mov	_atof_s_1_25,a
	clr	a
	addc	a,r3
	mov	(_atof_s_1_25 + 1),a
	mov	(_atof_s_1_25 + 2),r4
00108$:
;	_atof.c:55: for (value=0.0; isdigit(*s); s++)
	clr	a
	mov	_atof_value_1_26,a
	mov	(_atof_value_1_26 + 1),a
	mov	(_atof_value_1_26 + 2),a
	mov	(_atof_value_1_26 + 3),a
	mov	_atof_sloc0_1_0,_atof_s_1_25
	mov	(_atof_sloc0_1_0 + 1),(_atof_s_1_25 + 1)
	mov	(_atof_sloc0_1_0 + 2),(_atof_s_1_25 + 2)
00124$:
	mov	dpl,_atof_sloc0_1_0
	mov	dph,(_atof_sloc0_1_0 + 1)
	mov	b,(_atof_sloc0_1_0 + 2)
	lcall	__gptrget
	mov	dpl,a
	lcall	_isdigit
	mov	a,dpl
	jz	00149$
;	_atof.c:57: value=10.0*value+(*s-'0');
	push	_atof_value_1_26
	push	(_atof_value_1_26 + 1)
	push	(_atof_value_1_26 + 2)
	push	(_atof_value_1_26 + 3)
	mov	dptr,#0x0000
	mov	b,#0x20
	mov	a,#0x41
	lcall	___fsmul
	mov	_atof_sloc1_1_0,dpl
	mov	(_atof_sloc1_1_0 + 1),dph
	mov	(_atof_sloc1_1_0 + 2),b
	mov	(_atof_sloc1_1_0 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,_atof_sloc0_1_0
	mov	dph,(_atof_sloc0_1_0 + 1)
	mov	b,(_atof_sloc0_1_0 + 2)
	lcall	__gptrget
	mov	r7,a
	inc	dptr
	mov	_atof_sloc0_1_0,dpl
	mov	(_atof_sloc0_1_0 + 1),dph
	mov	a,r7
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	a,r7
	add	a,#0xD0
	mov	dpl,a
	mov	a,r6
	addc	a,#0xFF
	mov	dph,a
	lcall	___sint2fs
	mov	r0,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	push	ar0
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,_atof_sloc1_1_0
	mov	dph,(_atof_sloc1_1_0 + 1)
	mov	b,(_atof_sloc1_1_0 + 2)
	mov	a,(_atof_sloc1_1_0 + 3)
	lcall	___fsadd
	mov	_atof_value_1_26,dpl
	mov	(_atof_value_1_26 + 1),dph
	mov	(_atof_value_1_26 + 2),b
	mov	(_atof_value_1_26 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	_atof.c:55: for (value=0.0; isdigit(*s); s++)
	ljmp	00124$
00149$:
	mov	_atof_s_1_25,_atof_sloc0_1_0
	mov	(_atof_s_1_25 + 1),(_atof_sloc0_1_0 + 1)
	mov	(_atof_s_1_25 + 2),(_atof_sloc0_1_0 + 2)
;	_atof.c:61: if (*s == '.')
	mov	dpl,_atof_sloc0_1_0
	mov	dph,(_atof_sloc0_1_0 + 1)
	mov	b,(_atof_sloc0_1_0 + 2)
	lcall	__gptrget
	mov	r7,a
	cjne	r7,#0x2E,00188$
	sjmp	00189$
00188$:
	ljmp	00112$
00189$:
;	_atof.c:63: s++;
	mov	a,#0x01
	add	a,_atof_sloc0_1_0
	mov	_atof_s_1_25,a
	clr	a
	addc	a,(_atof_sloc0_1_0 + 1)
	mov	(_atof_s_1_25 + 1),a
	mov	(_atof_s_1_25 + 2),(_atof_sloc0_1_0 + 2)
;	_atof.c:64: for (fraction=0.1; isdigit(*s); s++)
	mov	_atof_fraction_1_26,#0xCD
	mov	(_atof_fraction_1_26 + 1),#0xCC
	mov	(_atof_fraction_1_26 + 2),#0xCC
	mov	(_atof_fraction_1_26 + 3),#0x3D
	mov	r5,_atof_s_1_25
	mov	r6,(_atof_s_1_25 + 1)
	mov	r7,(_atof_s_1_25 + 2)
00127$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	dpl,a
	push	ar7
	push	ar6
	push	ar5
	lcall	_isdigit
	mov	a,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	jnz	00190$
	ljmp	00150$
00190$:
;	_atof.c:66: value+=(*s-'0')*fraction;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	mov	r5,dpl
	mov	r6,dph
	mov	a,r0
	rlc	a
	subb	a,acc
	mov	r4,a
	mov	a,r0
	add	a,#0xD0
	mov	dpl,a
	mov	a,r4
	addc	a,#0xFF
	mov	dph,a
	push	ar7
	push	ar6
	push	ar5
	lcall	___sint2fs
	mov	r1,dpl
	mov	r2,dph
	mov	r3,b
	mov	r4,a
	push	_atof_fraction_1_26
	push	(_atof_fraction_1_26 + 1)
	push	(_atof_fraction_1_26 + 2)
	push	(_atof_fraction_1_26 + 3)
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	mov	a,r4
	lcall	___fsmul
	mov	r1,dpl
	mov	r2,dph
	mov	r3,b
	mov	r4,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	ar1
	push	ar2
	push	ar3
	push	ar4
	mov	dpl,_atof_value_1_26
	mov	dph,(_atof_value_1_26 + 1)
	mov	b,(_atof_value_1_26 + 2)
	mov	a,(_atof_value_1_26 + 3)
	lcall	___fsadd
	mov	_atof_value_1_26,dpl
	mov	(_atof_value_1_26 + 1),dph
	mov	(_atof_value_1_26 + 2),b
	mov	(_atof_value_1_26 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	_atof.c:67: fraction*=0.1;
	push	_atof_fraction_1_26
	push	(_atof_fraction_1_26 + 1)
	push	(_atof_fraction_1_26 + 2)
	push	(_atof_fraction_1_26 + 3)
	mov	dptr,#0xCCCD
	mov	b,#0xCC
	mov	a,#0x3D
	lcall	___fsmul
	mov	_atof_fraction_1_26,dpl
	mov	(_atof_fraction_1_26 + 1),dph
	mov	(_atof_fraction_1_26 + 2),b
	mov	(_atof_fraction_1_26 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar5
	pop	ar6
	pop	ar7
;	_atof.c:64: for (fraction=0.1; isdigit(*s); s++)
	ljmp	00127$
00150$:
	mov	_atof_s_1_25,r5
	mov	(_atof_s_1_25 + 1),r6
	mov	(_atof_s_1_25 + 2),r7
00112$:
;	_atof.c:72: if (toupper(*s)=='E')
	mov	dpl,_atof_s_1_25
	mov	dph,(_atof_s_1_25 + 1)
	mov	b,(_atof_s_1_25 + 2)
	lcall	__gptrget
	mov	dpl,a
	lcall	_islower
	mov	a,dpl
	jz	00131$
	mov	dpl,_atof_s_1_25
	mov	dph,(_atof_s_1_25 + 1)
	mov	b,(_atof_s_1_25 + 2)
	lcall	__gptrget
	mov	r7,a
	anl	ar7,#0xDF
	sjmp	00132$
00131$:
	mov	dpl,_atof_s_1_25
	mov	dph,(_atof_s_1_25 + 1)
	mov	b,(_atof_s_1_25 + 2)
	lcall	__gptrget
	mov	r7,a
00132$:
	cjne	r7,#0x45,00120$
;	_atof.c:74: s++;
	inc	_atof_s_1_25
	clr	a
	cjne	a,_atof_s_1_25,00194$
	inc	(_atof_s_1_25 + 1)
00194$:
;	_atof.c:75: iexp=(signed char)atoi(s);
	mov	dpl,_atof_s_1_25
	mov	dph,(_atof_s_1_25 + 1)
	mov	b,(_atof_s_1_25 + 2)
	lcall	_atoi
	mov	r6,dpl
	mov	r7,dph
;	_atof.c:77: while(iexp!=0)
00116$:
	mov	a,r6
	jz	00120$
;	_atof.c:79: if(iexp<0)
	mov	a,r6
	jnb	acc.7,00114$
;	_atof.c:81: value*=0.1;
	push	ar6
	push	_atof_value_1_26
	push	(_atof_value_1_26 + 1)
	push	(_atof_value_1_26 + 2)
	push	(_atof_value_1_26 + 3)
	mov	dptr,#0xCCCD
	mov	b,#0xCC
	mov	a,#0x3D
	lcall	___fsmul
	mov	_atof_value_1_26,dpl
	mov	(_atof_value_1_26 + 1),dph
	mov	(_atof_value_1_26 + 2),b
	mov	(_atof_value_1_26 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar6
;	_atof.c:82: iexp++;
	inc	r6
	sjmp	00116$
00114$:
;	_atof.c:86: value*=10.0;
	push	ar6
	push	_atof_value_1_26
	push	(_atof_value_1_26 + 1)
	push	(_atof_value_1_26 + 2)
	push	(_atof_value_1_26 + 3)
	mov	dptr,#0x0000
	mov	b,#0x20
	mov	a,#0x41
	lcall	___fsmul
	mov	_atof_value_1_26,dpl
	mov	(_atof_value_1_26 + 1),dph
	mov	(_atof_value_1_26 + 2),b
	mov	(_atof_value_1_26 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar6
;	_atof.c:87: iexp--;
	dec	r6
	sjmp	00116$
00120$:
;	_atof.c:93: if(sign) value*=-1.0;
	jnb	_atof_sign_1_26,00122$
	mov	a,(_atof_value_1_26 + 3)
	cpl	acc.7
	mov	(_atof_value_1_26 + 3),a
00122$:
;	_atof.c:94: return (value);
	mov	dpl,_atof_value_1_26
	mov	dph,(_atof_value_1_26 + 1)
	mov	b,(_atof_value_1_26 + 2)
	mov	a,(_atof_value_1_26 + 3)
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
