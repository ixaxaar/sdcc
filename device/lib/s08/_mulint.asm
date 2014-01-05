;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Sun Dec 29 12:49:45 2013
;--------------------------------------------------------
	.cs08
	.module _mulint
	.optsdcc -ms08
	
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
	.area XINIT
	.area CONST   (CODE)
	.area DSEG    (PAG)
	.area OSEG    (PAG, OVR)
	.area XSEG
	.area XISEG
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __mulint_PARM_2
	.globl __mulint
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
;--------------------------------------------------------
; overlayable items in ram 
;--------------------------------------------------------
;--------------------------------------------------------
; absolute ram data
;--------------------------------------------------------
	.area IABS    (ABS)
	.area IABS    (ABS)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG
;--------------------------------------------------------
; extended address mode data
;--------------------------------------------------------
	.area XSEG
__mulint_PARM_2:
	.ds 2
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
;Allocation info for local variables in function '_mulint'
;------------------------------------------------------------
;b                         Allocated with name '__mulint_PARM_2'
;a                         Allocated to registers 
;------------------------------------------------------------
;_mulint.c:43: _mulint (int a, int b)
;	-----------------------------------------
;	 function _mulint
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
__mulint:
;_mulint.c:73: __endasm;
	    ais #-2
	 psha
	 pshx
	 ldx __mulint_PARM_2+1
	 mul
	 sta 4,s
	 stx 3,s
	 lda 1,s
	 ldx __mulint_PARM_2+1
	 mul
	 add 3,s
	 sta 3,s
	 lda 2,s
	 ldx __mulint_PARM_2
	 mul
	 add 3,s
	 sta 3,s
	 ais #2
	 pulx
	 pula
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT
	.area CABS    (ABS,CODE)
