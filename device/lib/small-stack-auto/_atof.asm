;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:02 2013
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
; overlayable bit register bank
;--------------------------------------------------------
	.area BIT_BANK	(REL,OVR,DATA)
bits:
	.ds 1
	b0 = bits[0]
	b1 = bits[1]
	b2 = bits[2]
	b3 = bits[3]
	b4 = bits[4]
	b5 = bits[5]
	b6 = bits[6]
	b7 = bits[7]
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
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
;s                         Allocated to registers r6 r5 r3 
;value                     Allocated to stack - _bp +8
;fraction                  Allocated to stack - _bp +12
;iexp                      Allocated to registers r6 
;sign                      Allocated to registers b0 
;sloc0                     Allocated to stack - _bp +1
;sloc1                     Allocated to stack - _bp +4
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
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x0F
	mov	sp,a
	mov	r6,dpl
	mov	r5,dph
	mov	r3,b
;	_atof.c:40: while (isspace(*s)) s++;
	mov	r0,_bp
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar3
00101$:
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	dpl,a
	lcall	_isspace
	mov	a,dpl
	jz	00148$
	mov	r0,_bp
	inc	r0
	inc	@r0
	cjne	@r0,#0x00,00182$
	inc	r0
	inc	@r0
00182$:
	sjmp	00101$
00148$:
	mov	r0,_bp
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar3,@r0
;	_atof.c:43: if (*s == '-')
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r4,a
	cjne	r4,#0x2D,00107$
;	_atof.c:45: sign=1;
	setb	b0
;	_atof.c:46: s++;
	mov	r0,_bp
	inc	r0
	mov	a,#0x01
	add	a,@r0
	mov	r6,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar3,@r0
	sjmp	00108$
00107$:
;	_atof.c:50: sign=0;
	clr	b0
;	_atof.c:51: if (*s == '+') s++;
	cjne	r4,#0x2B,00108$
	mov	r0,_bp
	inc	r0
	mov	a,#0x01
	add	a,@r0
	mov	r6,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar3,@r0
00108$:
;	_atof.c:55: for (value=0.0; isdigit(*s); s++)
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
	mov	r0,_bp
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar3
00124$:
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	dpl,a
	push	bits
	lcall	_isdigit
	mov	a,dpl
	pop	bits
	jnz	00187$
	ljmp	00149$
00187$:
;	_atof.c:57: value=10.0*value+(*s-'0');
	push	bits
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dptr,#0x0000
	mov	b,#0x20
	mov	a,#0x41
	lcall	___fsmul
	xch	a,r0
	mov	a,_bp
	add	a,#0x04
	xch	a,r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	inc	r0
	mov	@r0,b
	inc	r0
	mov	@r0,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	bits
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	dec	r0
	dec	r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	mov	a,r6
	rlc	a
	subb	a,acc
	mov	r5,a
	mov	a,r6
	add	a,#0xD0
	mov	dpl,a
	mov	a,r5
	addc	a,#0xFF
	mov	dph,a
	push	bits
	lcall	___sint2fs
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	pop	bits
	push	bits
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	___fsadd
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	bits
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	_atof.c:55: for (value=0.0; isdigit(*s); s++)
	ljmp	00124$
00149$:
	mov	r0,_bp
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar3,@r0
;	_atof.c:61: if (*s == '.')
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r7,a
	cjne	r7,#0x2E,00188$
	sjmp	00189$
00188$:
	ljmp	00112$
00189$:
;	_atof.c:63: s++;
	mov	r0,_bp
	inc	r0
	mov	a,#0x01
	add	a,@r0
	mov	r6,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar3,@r0
;	_atof.c:64: for (fraction=0.1; isdigit(*s); s++)
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	@r0,#0xCD
	inc	r0
	mov	@r0,#0xCC
	inc	r0
	mov	@r0,#0xCC
	inc	r0
	mov	@r0,#0x3D
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar3
00127$:
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	dpl,a
	push	bits
	lcall	_isdigit
	mov	a,dpl
	pop	bits
	jnz	00190$
	ljmp	00150$
00190$:
;	_atof.c:66: value+=(*s-'0')*fraction;
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	dec	r0
	dec	r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	mov	a,r6
	rlc	a
	subb	a,acc
	mov	r5,a
	mov	a,r6
	add	a,#0xD0
	mov	dpl,a
	mov	a,r5
	addc	a,#0xFF
	mov	dph,a
	push	bits
	lcall	___sint2fs
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	pop	bits
	push	bits
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fsmul
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	bits
	push	bits
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	___fsadd
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	bits
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	_atof.c:67: fraction*=0.1;
	push	bits
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dptr,#0xCCCD
	mov	b,#0xCC
	mov	a,#0x3D
	lcall	___fsmul
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	bits
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	_atof.c:64: for (fraction=0.1; isdigit(*s); s++)
	ljmp	00127$
00150$:
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	ar6,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar3,@r0
00112$:
;	_atof.c:72: if (toupper(*s)=='E')
	mov	dpl,r6
	mov	dph,r5
	mov	b,r3
	lcall	__gptrget
	mov	dpl,a
	push	ar6
	push	ar5
	push	ar3
	push	bits
	lcall	_islower
	mov	a,dpl
	pop	bits
	pop	ar3
	pop	ar5
	pop	ar6
	jz	00131$
	mov	dpl,r6
	mov	dph,r5
	mov	b,r3
	lcall	__gptrget
	mov	r7,a
	anl	ar7,#0xDF
	sjmp	00132$
00131$:
	mov	dpl,r6
	mov	dph,r5
	mov	b,r3
	lcall	__gptrget
	mov	r7,a
00132$:
	cjne	r7,#0x45,00192$
	sjmp	00193$
00192$:
	ljmp	00120$
00193$:
;	_atof.c:74: s++;
	inc	r6
	cjne	r6,#0x00,00194$
	inc	r5
00194$:
;	_atof.c:75: iexp=(signed char)atoi(s);
	mov	dpl,r6
	mov	dph,r5
	mov	b,r3
	push	bits
	lcall	_atoi
	mov	r6,dpl
	mov	r7,dph
	pop	bits
;	_atof.c:77: while(iexp!=0)
00116$:
	mov	a,r6
	jnz	00195$
	ljmp	00120$
00195$:
;	_atof.c:79: if(iexp<0)
	mov	a,r6
	jnb	acc.7,00114$
;	_atof.c:81: value*=0.1;
	push	ar6
	push	bits
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dptr,#0xCCCD
	mov	b,#0xCC
	mov	a,#0x3D
	lcall	___fsmul
	mov	r3,dpl
	mov	r4,dph
	mov	r5,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	bits
	pop	ar6
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar7
;	_atof.c:82: iexp++;
	inc	r6
	sjmp	00116$
00114$:
;	_atof.c:86: value*=10.0;
	push	ar6
	push	bits
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dptr,#0x0000
	mov	b,#0x20
	mov	a,#0x41
	lcall	___fsmul
	mov	r3,dpl
	mov	r4,dph
	mov	r5,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	bits
	pop	ar6
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar7
;	_atof.c:87: iexp--;
	dec	r6
	ljmp	00116$
00120$:
;	_atof.c:93: if(sign) value*=-1.0;
	jnb	b0,00122$
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	a,@r0
	mov	@r0,a
	inc	r0
	mov	a,@r0
	mov	@r0,a
	inc	r0
	mov	a,@r0
	mov	@r0,a
	inc	r0
	mov	a,@r0
	cpl	acc.7
	mov	@r0,a
00122$:
;	_atof.c:94: return (value);
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	mov	sp,_bp
	pop	_bp
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
