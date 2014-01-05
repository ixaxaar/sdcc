;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:27:50 2013
;--------------------------------------------------------
	.module rand
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _rand
	.globl _srand
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
_next:
	.ds 4
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
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
;	rand.c:31: static unsigned long int next = 1;
	mov	_next,#0x01
	clr	a
	mov	(_next + 1),a
	mov	(_next + 2),a
	mov	(_next + 3),a
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
;Allocation info for local variables in function 'rand'
;------------------------------------------------------------
;	rand.c:33: int rand(void)
;	-----------------------------------------
;	 function rand
;	-----------------------------------------
_rand:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	rand.c:35: next = next * 1103515245UL + 12345;
	mov	__mullong_PARM_2,_next
	mov	(__mullong_PARM_2 + 1),(_next + 1)
	mov	(__mullong_PARM_2 + 2),(_next + 2)
	mov	(__mullong_PARM_2 + 3),(_next + 3)
	mov	dptr,#0x4E6D
	mov	b,#0xC6
	mov	a,#0x41
	lcall	__mullong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,#0x39
	add	a,r4
	mov	_next,a
	mov	a,#0x30
	addc	a,r5
	mov	(_next + 1),a
	clr	a
	addc	a,r6
	mov	(_next + 2),a
	clr	a
	addc	a,r7
	mov	(_next + 3),a
;	rand.c:36: return (unsigned int)(next/65536) % (RAND_MAX + 1U);
	mov	r4,(_next + 2)
	mov	r5,(_next + 3)
	mov	dpl,r4
	mov	a,#0x7F
	anl	a,r5
	mov	dph,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'srand'
;------------------------------------------------------------
;seed                      Allocated to registers r6 r7 
;------------------------------------------------------------
;	rand.c:39: void srand(unsigned int seed)
;	-----------------------------------------
;	 function srand
;	-----------------------------------------
_srand:
	mov	r6,dpl
	mov	r7,dph
;	rand.c:41: next = seed;
	mov	_next,r6
	mov	(_next + 1),r7
	mov	(_next + 2),#0x00
	mov	(_next + 3),#0x00
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
