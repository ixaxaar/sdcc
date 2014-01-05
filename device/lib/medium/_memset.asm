;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:27:53 2013
;--------------------------------------------------------
	.module _memset
	.optsdcc -mmcs51 --model-medium
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _memset_PARM_3
	.globl _memset_PARM_2
	.globl _memset
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
_memset_sloc0_1_0:
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
_memset_PARM_2:
	.ds 1
_memset_PARM_3:
	.ds 2
_memset_s_1_21:
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
;Allocation info for local variables in function 'memset'
;------------------------------------------------------------
;sloc0                     Allocated with name '_memset_sloc0_1_0'
;------------------------------------------------------------
;	_memset.c:39: void *memset (void *s, unsigned char c, size_t n)
;	-----------------------------------------
;	 function memset
;	-----------------------------------------
_memset:
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
	mov	r0,#_memset_s_1_21
	movx	@r0,a
	inc	r0
	mov	a,r6
	movx	@r0,a
	inc	r0
	mov	a,r7
	movx	@r0,a
;	_memset.c:44: register unsigned char *ret = s;
	mov	r0,#_memset_s_1_21
	movx	a,@r0
	mov	r2,a
	inc	r0
	movx	a,@r0
	mov	r3,a
	inc	r0
	movx	a,@r0
	mov	r4,a
;	_memset.c:46: while (n--)
	mov	r0,#_memset_PARM_3
	movx	a,@r0
	mov	_memset_sloc0_1_0,a
	inc	r0
	movx	a,@r0
	mov	(_memset_sloc0_1_0 + 1),a
00101$:
	mov	r6,_memset_sloc0_1_0
	mov	r7,(_memset_sloc0_1_0 + 1)
	dec	_memset_sloc0_1_0
	mov	a,#0xFF
	cjne	a,_memset_sloc0_1_0,00113$
	dec	(_memset_sloc0_1_0 + 1)
00113$:
	mov	a,r6
	orl	a,r7
	jz	00103$
;	_memset.c:48: *(unsigned char *) ret = c;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	r0,#_memset_PARM_2
	movx	a,@r0
	lcall	__gptrput
	inc	dptr
	mov	r2,dpl
	mov	r3,dph
;	_memset.c:49: ret = ((unsigned char *) ret) + 1;
	sjmp	00101$
00103$:
;	_memset.c:52: return s;
	mov	r0,#_memset_s_1_21
	movx	a,@r0
	mov	dpl,a
	inc	r0
	movx	a,@r0
	mov	dph,a
	inc	r0
	movx	a,@r0
	mov	b,a
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
