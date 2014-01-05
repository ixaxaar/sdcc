;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:27:50 2013
;--------------------------------------------------------
	.module _mulint
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __mulint_dummy
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
;Allocation info for local variables in function '_mulint_dummy'
;------------------------------------------------------------
;	_mulint.c:121: _mulint_dummy (void) __naked
;	-----------------------------------------
;	 function _mulint_dummy
;	-----------------------------------------
__mulint_dummy:
;	naked function: no prologue.
;	_mulint.c:205: __endasm;
	__mulint:
	.globl __mulint
	.area OSEG (OVR,DATA)
	__mulint_PARM_2:
	.globl __mulint_PARM_2
	.ds 2
	.area CSEG (CODE)
; globbered registers none
	mov a,dpl ; 1 al
	mov b,(__mulint_PARM_2) ; 2 (__mulint_PARM_2)
	mul ab ; 4 al * (__mulint_PARM_2)
	xch a,dpl ; 1 store low-byte of return value, fetch al
	push b ; 2
	mov b,(__mulint_PARM_2 + 1) ; 2 (__mulint_PARM_2 + 1)
	mul ab ; 4 al * (__mulint_PARM_2 + 1)
	pop b ; 2
	add a,b ; 1
	xch a,dph ; 1 ah -> acc
	mov b,(__mulint_PARM_2) ; 2 (__mulint_PARM_2)
	mul ab ; 4 ah * (__mulint_PARM_2)
	add a,dph ; 1
	mov dph,a ; 1
	ret ; 2
; 30
;	naked function: no epilogue.
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
