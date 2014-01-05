;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:27:49 2013
;--------------------------------------------------------
	.module tancotf
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _tancotf
	.globl _fabsf
	.globl _tancotf_PARM_2
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
_tancotf_x_1_23:
	.ds 4
_tancotf_f_1_24:
	.ds 4
_tancotf_g_1_24:
	.ds 4
_tancotf_xn_1_24:
	.ds 4
_tancotf_xden_1_24:
	.ds 4
_tancotf_n_1_24:
	.ds 2
_tancotf_sloc0_1_0:
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
_tancotf_PARM_2:
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
;Allocation info for local variables in function 'tancotf'
;------------------------------------------------------------
;x                         Allocated with name '_tancotf_x_1_23'
;f                         Allocated with name '_tancotf_f_1_24'
;g                         Allocated with name '_tancotf_g_1_24'
;xn                        Allocated with name '_tancotf_xn_1_24'
;xnum                      Allocated to registers r0 r1 r6 r7 
;xden                      Allocated with name '_tancotf_xden_1_24'
;n                         Allocated with name '_tancotf_n_1_24'
;sloc0                     Allocated with name '_tancotf_sloc0_1_0'
;------------------------------------------------------------
;	tancotf.c:53: float tancotf(const float x, const bool iscotan)
;	-----------------------------------------
;	 function tancotf
;	-----------------------------------------
_tancotf:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	tancotf.c:58: if (fabsf(x) > YMAX)
	mov	_tancotf_x_1_23,dpl
	mov	(_tancotf_x_1_23 + 1),dph
	mov	(_tancotf_x_1_23 + 2),b
	mov	(_tancotf_x_1_23 + 3),a
	lcall	_fabsf
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
	clr	a
	push	acc
	mov	a,#0x08
	push	acc
	mov	a,#0xC9
	push	acc
	mov	a,#0x45
	push	acc
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r3
	lcall	___fsgt
	mov	r3,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r3
	jz	00102$
;	tancotf.c:60: errno = ERANGE;
	mov	_errno,#0x22
	mov	(_errno + 1),#0x00
;	tancotf.c:61: return 0.0;
	mov	dptr,#(0x00&0x00ff)
	clr	a
	mov	b,a
	ret
00102$:
;	tancotf.c:65: n=(x*TWO_O_PI+(x>0.0?0.5:-0.5)); /*works for +-x*/
	push	_tancotf_x_1_23
	push	(_tancotf_x_1_23 + 1)
	push	(_tancotf_x_1_23 + 2)
	push	(_tancotf_x_1_23 + 3)
	mov	dptr,#0xF983
	mov	b,#0x22
	mov	a,#0x3F
	lcall	___fsmul
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	clr	a
	push	acc
	push	acc
	push	acc
	push	acc
	mov	dpl,_tancotf_x_1_23
	mov	dph,(_tancotf_x_1_23 + 1)
	mov	b,(_tancotf_x_1_23 + 2)
	mov	a,(_tancotf_x_1_23 + 3)
	lcall	___fsgt
	mov	r7,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	mov	a,r7
	jz	00117$
	mov	r4,#0x00
	mov	r5,#0x00
	mov	r6,#0x00
	mov	r7,#0x3F
	sjmp	00118$
00117$:
	mov	r4,#0x00
	mov	r5,#0x00
	mov	r6,#0x00
	mov	r7,#0xBF
00118$:
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r3
	lcall	___fsadd
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fs2sint
;	tancotf.c:66: xn=n;
	mov	_tancotf_n_1_24,dpl
	mov  (_tancotf_n_1_24 + 1),dph
	lcall	___sint2fs
	mov	_tancotf_xn_1_24,dpl
	mov	(_tancotf_xn_1_24 + 1),dph
	mov	(_tancotf_xn_1_24 + 2),b
	mov	(_tancotf_xn_1_24 + 3),a
;	tancotf.c:68: xnum=(int)x;
	mov	dpl,_tancotf_x_1_23
	mov	dph,(_tancotf_x_1_23 + 1)
	mov	b,(_tancotf_x_1_23 + 2)
	mov	a,(_tancotf_x_1_23 + 3)
	lcall	___fs2sint
	lcall	___sint2fs
	mov	r0,dpl
	mov	r1,dph
	mov	r6,b
	mov	r7,a
;	tancotf.c:69: xden=x-xnum;
	push	ar7
	push	ar6
	push	ar1
	push	ar0
	push	ar0
	push	ar1
	push	ar6
	push	ar7
	mov	dpl,_tancotf_x_1_23
	mov	dph,(_tancotf_x_1_23 + 1)
	mov	b,(_tancotf_x_1_23 + 2)
	mov	a,(_tancotf_x_1_23 + 3)
	lcall	___fssub
	mov	_tancotf_xden_1_24,dpl
	mov	(_tancotf_xden_1_24 + 1),dph
	mov	(_tancotf_xden_1_24 + 2),b
	mov	(_tancotf_xden_1_24 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	tancotf.c:70: f=((xnum-xn*C1)+xden)-xn*C2;
	push	_tancotf_xn_1_24
	push	(_tancotf_xn_1_24 + 1)
	push	(_tancotf_xn_1_24 + 2)
	push	(_tancotf_xn_1_24 + 3)
	mov	dptr,#0x0000
	mov	b,#0xC9
	mov	a,#0x3F
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar0
	pop	ar1
	pop	ar6
	pop	ar7
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	dpl,r0
	mov	dph,r1
	mov	b,r6
	mov	a,r7
	lcall	___fssub
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	_tancotf_xden_1_24
	push	(_tancotf_xden_1_24 + 1)
	push	(_tancotf_xden_1_24 + 2)
	push	(_tancotf_xden_1_24 + 3)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	___fsadd
	mov	_tancotf_sloc0_1_0,dpl
	mov	(_tancotf_sloc0_1_0 + 1),dph
	mov	(_tancotf_sloc0_1_0 + 2),b
	mov	(_tancotf_sloc0_1_0 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	_tancotf_xn_1_24
	push	(_tancotf_xn_1_24 + 1)
	push	(_tancotf_xn_1_24 + 2)
	push	(_tancotf_xn_1_24 + 3)
	mov	dptr,#0xAA22
	mov	b,#0xFD
	mov	a,#0x39
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	dpl,_tancotf_sloc0_1_0
	mov	dph,(_tancotf_sloc0_1_0 + 1)
	mov	b,(_tancotf_sloc0_1_0 + 2)
	mov	a,(_tancotf_sloc0_1_0 + 3)
	lcall	___fssub
	mov	_tancotf_f_1_24,dpl
	mov	(_tancotf_f_1_24 + 1),dph
	mov	(_tancotf_f_1_24 + 2),b
	mov	(_tancotf_f_1_24 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	tancotf.c:72: if (fabsf(f) < EPS)
	mov	dpl,_tancotf_f_1_24
	mov	dph,(_tancotf_f_1_24 + 1)
	mov	b,(_tancotf_f_1_24 + 2)
	mov	a,(_tancotf_f_1_24 + 3)
	lcall	_fabsf
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	clr	a
	push	acc
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#0x39
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	___fslt
	mov	r5,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r5
	jz	00104$
;	tancotf.c:74: xnum = f;
	mov	r0,_tancotf_f_1_24
	mov	r1,(_tancotf_f_1_24 + 1)
	mov	r6,(_tancotf_f_1_24 + 2)
	mov	r7,(_tancotf_f_1_24 + 3)
;	tancotf.c:75: xden = 1.0;
	clr	a
	mov	_tancotf_xden_1_24,a
	mov	(_tancotf_xden_1_24 + 1),a
	mov	(_tancotf_xden_1_24 + 2),#0x80
	mov	(_tancotf_xden_1_24 + 3),#0x3F
	ljmp	00105$
00104$:
;	tancotf.c:79: g = f*f;
	push	_tancotf_f_1_24
	push	(_tancotf_f_1_24 + 1)
	push	(_tancotf_f_1_24 + 2)
	push	(_tancotf_f_1_24 + 3)
	mov	dpl,_tancotf_f_1_24
	mov	dph,(_tancotf_f_1_24 + 1)
	mov	b,(_tancotf_f_1_24 + 2)
	mov	a,(_tancotf_f_1_24 + 3)
	lcall	___fsmul
	mov	_tancotf_g_1_24,dpl
	mov	(_tancotf_g_1_24 + 1),dph
	mov	(_tancotf_g_1_24 + 2),b
	mov	(_tancotf_g_1_24 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	tancotf.c:80: xnum = P(f,g);
	push	_tancotf_g_1_24
	push	(_tancotf_g_1_24 + 1)
	push	(_tancotf_g_1_24 + 2)
	push	(_tancotf_g_1_24 + 3)
	mov	dptr,#0x33B8
	mov	b,#0xC4
	mov	a,#0xBD
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	_tancotf_f_1_24
	push	(_tancotf_f_1_24 + 1)
	push	(_tancotf_f_1_24 + 2)
	push	(_tancotf_f_1_24 + 3)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	_tancotf_f_1_24
	push	(_tancotf_f_1_24 + 1)
	push	(_tancotf_f_1_24 + 2)
	push	(_tancotf_f_1_24 + 3)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	___fsadd
	mov	r0,dpl
	mov	r1,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	tancotf.c:81: xden = Q(g);
	push	ar7
	push	ar6
	push	ar1
	push	ar0
	push	_tancotf_g_1_24
	push	(_tancotf_g_1_24 + 1)
	push	(_tancotf_g_1_24 + 2)
	push	(_tancotf_g_1_24 + 3)
	mov	dptr,#0x3375
	mov	b,#0x1F
	mov	a,#0x3C
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,#0xAF
	push	acc
	mov	a,#0xB7
	push	acc
	rr	a
	push	acc
	mov	a,#0xBE
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	___fsadd
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	_tancotf_g_1_24
	push	(_tancotf_g_1_24 + 1)
	push	(_tancotf_g_1_24 + 2)
	push	(_tancotf_g_1_24 + 3)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	clr	a
	push	acc
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#0x3F
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	___fsadd
	mov	_tancotf_xden_1_24,dpl
	mov	(_tancotf_xden_1_24 + 1),dph
	mov	(_tancotf_xden_1_24 + 2),b
	mov	(_tancotf_xden_1_24 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar0
	pop	ar1
	pop	ar6
	pop	ar7
00105$:
;	tancotf.c:84: if(n&1)
	mov	a,_tancotf_n_1_24
	jnb	acc.0,00113$
;	tancotf.c:87: if(iscotan) return (-xnum/xden);
	jnb	_tancotf_PARM_2,00107$
	mov	ar2,r0
	mov	ar3,r1
	mov	ar4,r6
	mov	a,r7
	cpl	acc.7
	mov	r5,a
	push	_tancotf_xden_1_24
	push	(_tancotf_xden_1_24 + 1)
	push	(_tancotf_xden_1_24 + 2)
	push	(_tancotf_xden_1_24 + 3)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	___fsdiv
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	ret
00107$:
;	tancotf.c:88: else return (-xden/xnum);
	mov	r2,_tancotf_xden_1_24
	mov	r3,(_tancotf_xden_1_24 + 1)
	mov	r4,(_tancotf_xden_1_24 + 2)
	mov	a,(_tancotf_xden_1_24 + 3)
	cpl	acc.7
	mov	r5,a
	push	ar0
	push	ar1
	push	ar6
	push	ar7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	___fsdiv
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	ret
00113$:
;	tancotf.c:92: if(iscotan) return (xden/xnum);
	jnb	_tancotf_PARM_2,00110$
	push	ar0
	push	ar1
	push	ar6
	push	ar7
	mov	dpl,_tancotf_xden_1_24
	mov	dph,(_tancotf_xden_1_24 + 1)
	mov	b,(_tancotf_xden_1_24 + 2)
	mov	a,(_tancotf_xden_1_24 + 3)
	lcall	___fsdiv
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	ret
00110$:
;	tancotf.c:93: else return (xnum/xden);
	push	_tancotf_xden_1_24
	push	(_tancotf_xden_1_24 + 1)
	push	(_tancotf_xden_1_24 + 2)
	push	(_tancotf_xden_1_24 + 3)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r6
	mov	a,r7
	lcall	___fsdiv
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
