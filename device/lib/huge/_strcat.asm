;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:00 2013
;--------------------------------------------------------
	.module _strcat
	.optsdcc -mmcs51 --model-huge
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strcat_PARM_2
	.globl _strcat
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
_strcat_sloc0_1_0:
	.ds 3
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
_strcat_PARM_2:
	.ds 3
_strcat_dst_1_21:
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
;Allocation info for local variables in function 'strcat'
;------------------------------------------------------------
;src                       Allocated with name '_strcat_PARM_2'
;dst                       Allocated with name '_strcat_dst_1_21'
;cp                        Allocated with name '_strcat_cp_1_22'
;sloc0                     Allocated with name '_strcat_sloc0_1_0'
;------------------------------------------------------------
;	_strcat.c:31: char * strcat (
;	-----------------------------------------
;	 function strcat
;	-----------------------------------------
_strcat:
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
	mov	dptr,#_strcat_dst_1_21
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	_strcat.c:36: char * cp = dst;
	mov	dptr,#_strcat_dst_1_21
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
;	_strcat.c:38: while( *cp )
	mov	ar2,r5
	mov	ar3,r6
	mov	ar4,r7
00101$:
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	jz	00111$
;	_strcat.c:39: cp++;                   /* find end of dst */
	inc	r2
;	_strcat.c:41: while( *cp++ = *src++ ) ;       /* Copy src to end of dst */
	cjne	r2,#0x00,00101$
	inc	r3
	sjmp	00101$
00111$:
	mov	dptr,#_strcat_PARM_2
	movx	a,@dptr
	mov	_strcat_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_strcat_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_strcat_sloc0_1_0 + 2),a
00104$:
	mov	dpl,_strcat_sloc0_1_0
	mov	dph,(_strcat_sloc0_1_0 + 1)
	mov	b,(_strcat_sloc0_1_0 + 2)
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	mov	_strcat_sloc0_1_0,dpl
	mov	(_strcat_sloc0_1_0 + 1),dph
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r1
	lcall	__gptrput
	inc	dptr
	mov	r2,dpl
	mov	r3,dph
	mov	a,r1
	jnz	00104$
;	_strcat.c:43: return( dst );                  /* return dst */
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	ljmp	__sdcc_banked_ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
