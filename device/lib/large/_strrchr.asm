;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:27:57 2013
;--------------------------------------------------------
	.module _strrchr
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strrchr_PARM_2
	.globl _strrchr
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
_strrchr_sloc0_1_0:
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
_strrchr_PARM_2:
	.ds 1
_strrchr_string_1_21:
	.ds 3
_strrchr_start_1_22:
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
;Allocation info for local variables in function 'strrchr'
;------------------------------------------------------------
;ch                        Allocated with name '_strrchr_PARM_2'
;string                    Allocated with name '_strrchr_string_1_21'
;start                     Allocated with name '_strrchr_start_1_22'
;sloc0                     Allocated with name '_strrchr_sloc0_1_0'
;------------------------------------------------------------
;	_strrchr.c:32: char * strrchr (
;	-----------------------------------------
;	 function strrchr
;	-----------------------------------------
_strrchr:
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
	mov	dptr,#_strrchr_string_1_21
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	_strrchr.c:43: const char * start = string;
	mov	dptr,#_strrchr_string_1_21
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_strrchr_start_1_22
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	_strrchr.c:45: while (*string++)                       /* find end of string */
00101$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	mov	r5,dpl
	mov	r6,dph
	mov	dptr,#_strrchr_string_1_21
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	jnz	00101$
;	_strrchr.c:48: while (--string != start && *string != ch)
	mov	dptr,#_strrchr_string_1_21
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_strrchr_PARM_2
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_strrchr_start_1_22
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
00105$:
	dec	r5
	cjne	r5,#0xFF,00129$
	dec	r6
00129$:
	mov	dptr,#_strrchr_string_1_21
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	_strrchr_sloc0_1_0,r5
	mov	(_strrchr_sloc0_1_0 + 1),r6
	mov	(_strrchr_sloc0_1_0 + 2),r7
	push	ar1
	push	ar2
	push	ar3
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	jz	00117$
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r0,a
	cjne	a,ar4,00105$
00117$:
	mov	dptr,#_strrchr_string_1_21
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	_strrchr.c:51: if (*string == ch)                /* char found ? */
	mov	dpl,_strrchr_sloc0_1_0
	mov	dph,(_strrchr_sloc0_1_0 + 1)
	mov	b,(_strrchr_sloc0_1_0 + 2)
	lcall	__gptrget
	mov	r7,a
	cjne	a,ar4,00109$
;	_strrchr.c:52: return( (char *)string );
	mov	dpl,_strrchr_sloc0_1_0
	mov	dph,(_strrchr_sloc0_1_0 + 1)
	mov	b,(_strrchr_sloc0_1_0 + 2)
	ret
00109$:
;	_strrchr.c:54: return (NULL) ;
	mov	dptr,#0x0000
	mov	b,#0x00
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
