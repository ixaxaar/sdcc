;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:01 2013
;--------------------------------------------------------
	.module _strtok
	.optsdcc -mmcs51 --model-huge
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strchr
	.globl _strtok_PARM_2
	.globl _strtok
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
_strtok_PARM_2:
	.ds 3
_strtok_str_1_21:
	.ds 3
_strtok_s_1_22:
	.ds 3
_strtok_s1_1_22:
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
;Allocation info for local variables in function 'strtok'
;------------------------------------------------------------
;control                   Allocated with name '_strtok_PARM_2'
;str                       Allocated with name '_strtok_str_1_21'
;s                         Allocated with name '_strtok_s_1_22'
;s1                        Allocated with name '_strtok_s1_1_22'
;------------------------------------------------------------
;	_strtok.c:36: char * strtok (
;	-----------------------------------------
;	 function strtok
;	-----------------------------------------
_strtok:
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
	mov	dptr,#_strtok_str_1_21
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	_strtok.c:43: if ( str )
	mov	dptr,#_strtok_str_1_21
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r5
	orl	a,r6
	jz	00102$
;	_strtok.c:44: s = str ;
	mov	dptr,#_strtok_s_1_22
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
00102$:
;	_strtok.c:45: if ( !s )
	mov	dptr,#_strtok_s_1_22
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r5
	orl	a,r6
;	_strtok.c:46: return NULL;
	jnz	00108$
	mov	dptr,#0x0000
	mov	b,a
	ljmp	00119$
;	_strtok.c:48: while (*s) {
00108$:
	mov	dptr,#_strtok_s_1_22
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
	lcall	__gptrget
	mov	r7,a
	jz	00110$
;	_strtok.c:49: if (strchr(control,*s))
	mov	dptr,#_strtok_PARM_2
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_strchr_PARM_2
	mov	a,r7
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	r0,#_strchr
	mov	r1,#(_strchr >> 8)
	mov	r2,#(_strchr >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	a,r5
	orl	a,r6
	jz	00110$
;	_strtok.c:50: s++;
	mov	dptr,#_strtok_s_1_22
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
;	_strtok.c:52: break;
	sjmp	00108$
00110$:
;	_strtok.c:55: s1 = s ;
	mov	dptr,#_strtok_s_1_22
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_strtok_s1_1_22
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	_strtok.c:57: while (*s) {
00113$:
	mov	dptr,#_strtok_s_1_22
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
	lcall	__gptrget
	mov	r7,a
	jz	00115$
;	_strtok.c:58: if (strchr(control,*s)) {
	mov	dptr,#_strtok_PARM_2
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_strchr_PARM_2
	mov	a,r7
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	r0,#_strchr
	mov	r1,#(_strchr >> 8)
	mov	r2,#(_strchr >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	a,r5
	orl	a,r6
	jz	00112$
;	_strtok.c:59: *s++ = '\0';
	mov	dptr,#_strtok_s_1_22
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
	clr	a
	lcall	__gptrput
	mov	dptr,#_strtok_s_1_22
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
;	_strtok.c:60: return s1 ;
	mov	dptr,#_strtok_s1_1_22
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
	sjmp	00119$
00112$:
;	_strtok.c:62: s++ ;
	mov	dptr,#_strtok_s_1_22
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
	ljmp	00113$
00115$:
;	_strtok.c:65: s = NULL;
	mov	dptr,#_strtok_s_1_22
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	_strtok.c:67: if (*s1)
	mov	dptr,#_strtok_s1_1_22
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
	lcall	__gptrget
	jz	00117$
;	_strtok.c:68: return s1;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	sjmp	00119$
00117$:
;	_strtok.c:70: return NULL;
	mov	dptr,#0x0000
	mov	b,#0x00
00119$:
	ljmp	__sdcc_banked_ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
