;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:27:50 2013
;--------------------------------------------------------
	.module _strcspn
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strchr
	.globl _strcspn_PARM_2
	.globl _strcspn
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
_strcspn_PARM_2:
	.ds 3
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
;Allocation info for local variables in function 'strcspn'
;------------------------------------------------------------
;control                   Allocated with name '_strcspn_PARM_2'
;string                    Allocated to registers 
;count                     Allocated to registers r3 r4 
;ch                        Allocated to registers r1 
;------------------------------------------------------------
;	_strcspn.c:31: size_t strcspn ( 
;	-----------------------------------------
;	 function strcspn
;	-----------------------------------------
_strcspn:
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
;	_strcspn.c:39: while (ch = *string) {
	mov	r3,#0x00
	mov	r4,#0x00
00104$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	mov	r1,a
	jz	00106$
;	_strcspn.c:40: if (strchr(control,ch))
	mov	_strchr_PARM_2,r1
	mov	dpl,_strcspn_PARM_2
	mov	dph,(_strcspn_PARM_2 + 1)
	mov	b,(_strcspn_PARM_2 + 2)
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_strchr
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r0
	orl	a,r1
	jnz	00106$
;	_strcspn.c:43: count++ ;
	inc	r3
	cjne	r3,#0x00,00121$
	inc	r4
00121$:
;	_strcspn.c:44: string++ ;
	inc	r5
	cjne	r5,#0x00,00104$
	inc	r6
	sjmp	00104$
00106$:
;	_strcspn.c:47: return count ;
	mov	dpl,r3
	mov	dph,r4
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
