;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:29 2013
;--------------------------------------------------------
	.module _startup
	.optsdcc -mtlcs90
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __sdcc_external_startup
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area _DABS (ABS)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area _HOME
	.area _GSINIT
	.area _GSFINAL
	.area _GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
;../_startup.c:52: unsigned char _sdcc_external_startup ()
;	---------------------------------
; Function _sdcc_external_startup
; ---------------------------------
__sdcc_external_startup_start::
__sdcc_external_startup:
;../_startup.c:54: return 0;
	ld	l,#0x00
	ret
__sdcc_external_startup_end::
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
