;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:27:50 2013
;--------------------------------------------------------
	.module _strncat
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strncat_PARM_3
	.globl _strncat_PARM_2
	.globl _strncat
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
_strncat_PARM_2:
	.ds 3
_strncat_PARM_3:
	.ds 2
_strncat_front_1_21:
	.ds 3
_strncat_start_1_22:
	.ds 3
_strncat_sloc0_1_0:
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
;Allocation info for local variables in function 'strncat'
;------------------------------------------------------------
;back                      Allocated with name '_strncat_PARM_2'
;count                     Allocated with name '_strncat_PARM_3'
;front                     Allocated with name '_strncat_front_1_21'
;start                     Allocated with name '_strncat_start_1_22'
;sloc0                     Allocated with name '_strncat_sloc0_1_0'
;------------------------------------------------------------
;	_strncat.c:31: char * strncat (
;	-----------------------------------------
;	 function strncat
;	-----------------------------------------
_strncat:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	_strncat_front_1_21,dpl
	mov	(_strncat_front_1_21 + 1),dph
	mov	(_strncat_front_1_21 + 2),b
;	_strncat.c:37: char *start = front;
	mov	_strncat_start_1_22,_strncat_front_1_21
	mov	(_strncat_start_1_22 + 1),(_strncat_front_1_21 + 1)
	mov	(_strncat_start_1_22 + 2),(_strncat_front_1_21 + 2)
;	_strncat.c:39: while (*front++);
	mov	r0,_strncat_front_1_21
	mov	r1,(_strncat_front_1_21 + 1)
	mov	r4,(_strncat_front_1_21 + 2)
00101$:
	mov	dpl,r0
	mov	dph,r1
	mov	b,r4
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	mov	r0,dpl
	mov	r1,dph
	mov	a,r3
	jnz	00101$
;	_strncat.c:41: front--;
	mov	a,r0
	add	a,#0xFF
	mov	_strncat_front_1_21,a
	mov	a,r1
	addc	a,#0xFF
	mov	(_strncat_front_1_21 + 1),a
	mov	(_strncat_front_1_21 + 2),r4
;	_strncat.c:43: while (count--)
	mov	r2,_strncat_PARM_2
	mov	r3,(_strncat_PARM_2 + 1)
	mov	r4,(_strncat_PARM_2 + 2)
	mov	_strncat_sloc0_1_0,_strncat_front_1_21
	mov	(_strncat_sloc0_1_0 + 1),(_strncat_front_1_21 + 1)
	mov	(_strncat_sloc0_1_0 + 2),(_strncat_front_1_21 + 2)
	mov	r0,_strncat_PARM_3
	mov	r1,(_strncat_PARM_3 + 1)
00106$:
	mov	ar6,r0
	mov	ar7,r1
	dec	r0
	cjne	r0,#0xFF,00128$
	dec	r1
00128$:
	mov	a,r6
	orl	a,r7
	jz	00108$
;	_strncat.c:44: if (!(*front++ = *back++))
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r7,a
	inc	dptr
	mov	r2,dpl
	mov	r3,dph
	mov	dpl,_strncat_sloc0_1_0
	mov	dph,(_strncat_sloc0_1_0 + 1)
	mov	b,(_strncat_sloc0_1_0 + 2)
	mov	a,r7
	lcall	__gptrput
	inc	dptr
	mov	_strncat_sloc0_1_0,dpl
	mov	(_strncat_sloc0_1_0 + 1),dph
	mov	_strncat_front_1_21,_strncat_sloc0_1_0
	mov	(_strncat_front_1_21 + 1),(_strncat_sloc0_1_0 + 1)
	mov	(_strncat_front_1_21 + 2),(_strncat_sloc0_1_0 + 2)
	mov	a,r7
	jnz	00106$
;	_strncat.c:45: return(start);
	mov	dpl,_strncat_start_1_22
	mov	dph,(_strncat_start_1_22 + 1)
	mov	b,(_strncat_start_1_22 + 2)
	ret
00108$:
;	_strncat.c:47: *front = '\0';
	mov	dpl,_strncat_front_1_21
	mov	dph,(_strncat_front_1_21 + 1)
	mov	b,(_strncat_front_1_21 + 2)
	clr	a
	lcall	__gptrput
;	_strncat.c:48: return(start);
	mov	dpl,_strncat_start_1_22
	mov	dph,(_strncat_start_1_22 + 1)
	mov	b,(_strncat_start_1_22 + 2)
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
