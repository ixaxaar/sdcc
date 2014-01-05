;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:00 2013
;--------------------------------------------------------
	.module _strncpy
	.optsdcc -mmcs51 --model-huge
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strncpy_PARM_3
	.globl _strncpy_PARM_2
	.globl _strncpy
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
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
_strncpy_sloc0_1_0:
	.ds 1
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
_strncpy_PARM_2:
	.ds 3
_strncpy_PARM_3:
	.ds 2
_strncpy_d_1_21:
	.ds 3
_strncpy_d1_1_22:
	.ds 3
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
;Allocation info for local variables in function 'strncpy'
;------------------------------------------------------------
;s                         Allocated with name '_strncpy_PARM_2'
;n                         Allocated with name '_strncpy_PARM_3'
;d                         Allocated with name '_strncpy_d_1_21'
;d1                        Allocated with name '_strncpy_d1_1_22'
;sloc0                     Allocated with name '_strncpy_sloc0_1_0'
;------------------------------------------------------------
;	_strncpy.c:33: char *strncpy (
;	-----------------------------------------
;	 function strncpy
;	-----------------------------------------
_strncpy:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_strncpy_d_1_21
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	_strncpy.c:38: register char * d1 =  d;
	mov	dptr,#_strncpy_d_1_21
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_strncpy_d1_1_22
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	_strncpy.c:40: while ( n && *s )
	mov	dptr,#_strncpy_PARM_3
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_strncpy_PARM_2
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
00102$:
	mov	a,r3
	orl	a,r4
	jz	00115$
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	__gptrget
	mov	_strncpy_sloc0_1_0,a
	jz	00115$
;	_strncpy.c:42: n-- ;
	dec	r3
	cjne	r3,#0xFF,00129$
	dec	r4
00129$:
;	_strncpy.c:43: *d++ = *s++ ;
	inc	r0
	cjne	r0,#0x00,00130$
	inc	r1
00130$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,_strncpy_sloc0_1_0
	lcall	__gptrput
	inc	dptr
	mov	r5,dpl
	mov	r6,dph
	mov	dptr,#_strncpy_d_1_21
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	_strncpy.c:45: while ( n-- )
	sjmp	00102$
00115$:
	mov	dptr,#_strncpy_d_1_21
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
00105$:
	mov	ar1,r3
	mov	ar2,r4
	dec	r3
	cjne	r3,#0xFF,00131$
	dec	r4
00131$:
	mov	a,r1
	orl	a,r2
	jz	00116$
;	_strncpy.c:47: *d++ = '\0' ;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
	inc	dptr
	mov	r5,dpl
	mov	r6,dph
	mov	dptr,#_strncpy_d_1_21
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	sjmp	00105$
00116$:
	mov	dptr,#_strncpy_d_1_21
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	_strncpy.c:49: return d1;
	mov	dptr,#_strncpy_d1_1_22
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	ljmp	__sdcc_banked_ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
