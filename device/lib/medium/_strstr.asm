;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:27:53 2013
;--------------------------------------------------------
	.module _strstr
	.optsdcc -mmcs51 --model-medium
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strstr_PARM_2
	.globl _strstr
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
_strstr_sloc0_1_0:
	.ds 3
_strstr_sloc1_1_0:
	.ds 1
_strstr_sloc2_1_0:
	.ds 1
_strstr_sloc3_1_0:
	.ds 2
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
_strstr_PARM_2:
	.ds 3
_strstr_cp_1_22:
	.ds 3
_strstr_s2_1_22:
	.ds 3
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
;Allocation info for local variables in function 'strstr'
;------------------------------------------------------------
;sloc0                     Allocated with name '_strstr_sloc0_1_0'
;sloc1                     Allocated with name '_strstr_sloc1_1_0'
;sloc2                     Allocated with name '_strstr_sloc2_1_0'
;sloc3                     Allocated with name '_strstr_sloc3_1_0'
;------------------------------------------------------------
;	_strstr.c:31: char * strstr (
;	-----------------------------------------
;	 function strstr
;	-----------------------------------------
_strstr:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	_strstr.c:36: const char * cp = str1;
	mov	r0,#_strstr_cp_1_22
	mov	a,r5
	movx	@r0,a
	inc	r0
	mov	a,r6
	movx	@r0,a
	inc	r0
	mov	a,r7
	movx	@r0,a
;	_strstr.c:40: if ( !*str2 )
	mov	r0,#_strstr_PARM_2
	mov	r1,#_strstr_s2_1_22
	movx	a,@r0
	movx	@r1,a
	inc	r0
	movx	a,@r0
	inc	r1
	movx	@r1,a
	inc	r0
	movx	a,@r0
	inc	r1
	movx	@r1,a
	mov	r0,#_strstr_s2_1_22
	movx	a,@r0
	mov	dpl,a
	inc	r0
	movx	a,@r0
	mov	dph,a
	inc	r0
	movx	a,@r0
	mov	b,a
	lcall	__gptrget
	jnz	00122$
;	_strstr.c:41: return str1;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	ret
;	_strstr.c:43: while (*cp)
00122$:
00110$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	jnz	00141$
	ljmp	00112$
00141$:
;	_strstr.c:46: s2 = str2;
	mov	r0,#_strstr_s2_1_22
	movx	a,@r0
	mov	r2,a
	inc	r0
	movx	a,@r0
	mov	r3,a
	inc	r0
	movx	a,@r0
	mov	r4,a
;	_strstr.c:48: while ( *s1 && *s2 && !(*s1-*s2) )
	mov	_strstr_sloc0_1_0,r5
	mov	(_strstr_sloc0_1_0 + 1),r6
	mov	(_strstr_sloc0_1_0 + 2),r7
00105$:
	mov	dpl,_strstr_sloc0_1_0
	mov	dph,(_strstr_sloc0_1_0 + 1)
	mov	b,(_strstr_sloc0_1_0 + 2)
	lcall	__gptrget
	mov	_strstr_sloc1_1_0,a
	jz	00107$
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	_strstr_sloc2_1_0,a
	jz	00107$
	push	ar5
	push	ar6
	push	ar7
	mov	a,_strstr_sloc1_1_0
	mov	_strstr_sloc3_1_0,a
	rlc	a
	subb	a,acc
	mov	(_strstr_sloc3_1_0 + 1),a
	mov	a,_strstr_sloc2_1_0
	mov	r5,a
	rlc	a
	subb	a,acc
	mov	r7,a
	mov	a,_strstr_sloc3_1_0
	clr	c
	subb	a,r5
	mov	r5,a
	mov	a,(_strstr_sloc3_1_0 + 1)
	subb	a,r7
	orl	a,r5
	pop	ar7
	pop	ar6
	pop	ar5
	jnz	00107$
;	_strstr.c:49: s1++, s2++;
	inc	_strstr_sloc0_1_0
	clr	a
	cjne	a,_strstr_sloc0_1_0,00145$
	inc	(_strstr_sloc0_1_0 + 1)
00145$:
	inc	r2
	cjne	r2,#0x00,00105$
	inc	r3
	sjmp	00105$
00107$:
;	_strstr.c:51: if (!*s2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	jnz	00109$
;	_strstr.c:52: return( (char*)cp );
	mov	r0,#_strstr_cp_1_22
	movx	a,@r0
	mov	dpl,a
	inc	r0
	movx	a,@r0
	mov	dph,a
	inc	r0
	movx	a,@r0
	mov	b,a
	ret
00109$:
;	_strstr.c:54: cp++;
	inc	r5
	cjne	r5,#0x00,00148$
	inc	r6
00148$:
	mov	r0,#_strstr_cp_1_22
	mov	a,r5
	movx	@r0,a
	inc	r0
	mov	a,r6
	movx	@r0,a
	inc	r0
	mov	a,r7
	movx	@r0,a
	ljmp	00110$
00112$:
;	_strstr.c:57: return (NULL) ;
	mov	dptr,#0x0000
	mov	b,#0x00
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
