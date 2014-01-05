;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:27:54 2013
;--------------------------------------------------------
	.module _gptrgetc
	.optsdcc -mmcs51 --model-medium
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __gptrgetc
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
;Allocation info for local variables in function '_gptrgetc'
;------------------------------------------------------------
;	_gptrgetc.c:36: _gptrgetc (char *gptr) __naked
;	-----------------------------------------
;	 function _gptrgetc
;	-----------------------------------------
__gptrgetc:
;	naked function: no prologue.
;	_gptrgetc.c:81: __endasm;
; save values passed
;
; depending on the pointer type acc. to SDCCsymt.h
;
	jb _B_7,codeptr$ ; >0x80 code ; 3
	jnb _B_6,xdataptr$ ; <0x40 far ; 3
	mov dph,r0 ; save r0 independant of regbank ; 2
	mov r0,dpl ; use only low order address ; 2
	jb _B_5,pdataptr$ ; >0x60 pdata ; 3
;
; Pointer to data space
;
	mov a,@r0 ; 1
	mov r0,dph ; restore r0 ; 2
	mov dph,#0 ; restore dph ; 2
	ret ; 1
;
; pointer to external stack or pdata
;
	 pdataptr$:
	movx a,@r0 ; 1
	mov r0,dph ; restore r0 ; 2
	mov dph,#0 ; restore dph ; 2
	ret ; 1
;
; pointer to xternal data
; pointer to code area
;
	 codeptr$:
	 xdataptr$:
	clr a ; 1
	movc a,@a+dptr ; 1
	ret ; 1
;===
;28 bytes
;	naked function: no epilogue.
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
