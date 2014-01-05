;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:01 2013
;--------------------------------------------------------
	.module _realloc
	.optsdcc -mmcs51 --model-huge
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __sdcc_find_memheader
	.globl _memmove
	.globl _memcpy
	.globl _free
	.globl _malloc
	.globl _realloc_PARM_2
	.globl _realloc
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
_realloc_sloc0_1_0:
	.ds 2
_realloc_sloc1_1_0:
	.ds 3
_realloc_sloc2_1_0:
	.ds 3
_realloc_sloc3_1_0:
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
_realloc_PARM_2:
	.ds 2
_realloc_p_1_26:
	.ds 3
_realloc_pnew_1_27:
	.ds 2
_realloc_ret_1_27:
	.ds 2
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
;Allocation info for local variables in function 'realloc'
;------------------------------------------------------------
;sloc0                     Allocated with name '_realloc_sloc0_1_0'
;sloc1                     Allocated with name '_realloc_sloc1_1_0'
;sloc2                     Allocated with name '_realloc_sloc2_1_0'
;sloc3                     Allocated with name '_realloc_sloc3_1_0'
;size                      Allocated with name '_realloc_PARM_2'
;p                         Allocated with name '_realloc_p_1_26'
;pthis                     Allocated with name '_realloc_pthis_1_27'
;pnew                      Allocated with name '_realloc_pnew_1_27'
;ret                       Allocated with name '_realloc_ret_1_27'
;------------------------------------------------------------
;	_realloc.c:84: void __xdata * realloc (void * p, size_t size)
;	-----------------------------------------
;	 function realloc
;	-----------------------------------------
_realloc:
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
	mov	dptr,#_realloc_p_1_26
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	_realloc.c:92: pthis = _sdcc_find_memheader(p);
	mov	dptr,#_realloc_p_1_26
	movx	a,@dptr
	mov	_realloc_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_realloc_sloc1_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_realloc_sloc1_1_0 + 2),a
	mov	r3,_realloc_sloc1_1_0
	mov	r4,(_realloc_sloc1_1_0 + 1)
	mov	dpl,r3
	mov	dph,r4
	mov	r0,#__sdcc_find_memheader
	mov	r1,#(__sdcc_find_memheader >> 8)
	mov	r2,#(__sdcc_find_memheader >> 16)
	lcall	__sdcc_banked_call
	mov	r3,dpl
	mov	r4,dph
;	_realloc.c:93: if (pthis)
	mov	a,r3
	orl	a,r4
	jnz	00136$
	ljmp	00114$
00136$:
;	_realloc.c:95: if (size > (0xFFFF-HEADER_SIZE))
	mov	dptr,#_realloc_PARM_2
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	clr	c
	mov	a,#0xFB
	subb	a,r1
	mov	a,#0xFF
	subb	a,r2
	jnc	00111$
;	_realloc.c:97: ret = (void __xdata *) NULL; //To prevent overflow in next line
	mov	dptr,#_realloc_ret_1_27
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	ljmp	00115$
00111$:
;	_realloc.c:101: size += HEADER_SIZE; //We need a memory for header too
	mov	dptr,#_realloc_PARM_2
	mov	a,#0x04
	add	a,r1
	movx	@dptr,a
	clr	a
	addc	a,r2
	inc	dptr
	movx	@dptr,a
;	_realloc.c:103: if ((((unsigned int)pthis->next) - ((unsigned int)pthis)) >= size)
	mov	dpl,r3
	mov	dph,r4
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	mov	ar0,r1
	mov	ar7,r2
	mov	ar5,r3
	mov	ar6,r4
	mov	a,r0
	clr	c
	subb	a,r5
	mov	r0,a
	mov	a,r7
	subb	a,r6
	mov	r7,a
	mov	dptr,#_realloc_PARM_2
	movx	a,@dptr
	mov	_realloc_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_realloc_sloc0_1_0 + 1),a
	clr	c
	mov	a,r0
	subb	a,_realloc_sloc0_1_0
	mov	a,r7
	subb	a,(_realloc_sloc0_1_0 + 1)
	jc	00108$
;	_realloc.c:105: pthis->len = size;
	mov	dpl,r3
	mov	dph,r4
	inc	dptr
	inc	dptr
	mov	a,_realloc_sloc0_1_0
	movx	@dptr,a
	mov	a,(_realloc_sloc0_1_0 + 1)
	inc	dptr
	movx	@dptr,a
;	_realloc.c:106: ret = p;
	mov	r0,_realloc_sloc1_1_0
	mov	r6,(_realloc_sloc1_1_0 + 1)
	mov	r7,(_realloc_sloc1_1_0 + 2)
	mov	dptr,#_realloc_ret_1_27
	mov	a,r0
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	ljmp	00115$
00108$:
;	_realloc.c:110: if ((_sdcc_prev_memheader) &&
	mov	dptr,#__sdcc_prev_memheader
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jnz	00139$
	ljmp	00104$
00139$:
;	_realloc.c:111: ((((unsigned int)pthis->next) -
;	_realloc.c:112: ((unsigned int)_sdcc_prev_memheader) -
	mov	ar0,r6
	mov	ar5,r7
	mov	a,r1
	clr	c
	subb	a,r0
	mov	r1,a
	mov	a,r2
	subb	a,r5
	mov	r2,a
;	_realloc.c:113: _sdcc_prev_memheader->len) >= size))
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r1
	clr	c
	subb	a,r0
	mov	r1,a
	mov	a,r2
	subb	a,r5
	mov	r2,a
	clr	c
	mov	a,r1
	subb	a,_realloc_sloc0_1_0
	mov	a,r2
	subb	a,(_realloc_sloc0_1_0 + 1)
	jnc	00140$
	ljmp	00104$
00140$:
;	_realloc.c:115: pnew = (MEMHEADER __xdata * )((char __xdata *)_sdcc_prev_memheader + _sdcc_prev_memheader->len);
	mov	ar1,r6
	mov	ar2,r7
	mov	a,r0
	add	a,r1
	mov	r0,a
	mov	a,r5
	addc	a,r2
	mov	r5,a
	mov	dptr,#_realloc_pnew_1_27
	mov	a,r0
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	_realloc.c:116: _sdcc_prev_memheader->next = pnew;
	mov	dpl,r6
	mov	dph,r7
	mov	a,r0
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	_realloc.c:122: memmove(pnew, pthis, pthis->len);
	mov	dptr,#_realloc_pnew_1_27
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	_realloc_sloc2_1_0,r6
	mov	(_realloc_sloc2_1_0 + 1),r7
	mov	(_realloc_sloc2_1_0 + 2),#0x00
	mov	ar0,r3
	mov	ar5,r4
	mov	_realloc_sloc3_1_0,r0
	mov	(_realloc_sloc3_1_0 + 1),r5
	mov	(_realloc_sloc3_1_0 + 2),#0x00
	mov	dpl,r3
	mov	dph,r4
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_memmove_PARM_2
	mov	a,_realloc_sloc3_1_0
	movx	@dptr,a
	mov	a,(_realloc_sloc3_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_realloc_sloc3_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_memmove_PARM_3
	mov	a,r1
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	dpl,_realloc_sloc2_1_0
	mov	dph,(_realloc_sloc2_1_0 + 1)
	mov	b,(_realloc_sloc2_1_0 + 2)
	push	ar7
	push	ar6
	mov	r0,#_memmove
	mov	r1,#(_memmove >> 8)
	mov	r2,#(_memmove >> 16)
	lcall	__sdcc_banked_call
	pop	ar6
	pop	ar7
;	_realloc.c:123: pnew->len = size;
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	inc	dptr
	mov	a,_realloc_sloc0_1_0
	movx	@dptr,a
	mov	a,(_realloc_sloc0_1_0 + 1)
	inc	dptr
	movx	@dptr,a
;	_realloc.c:124: ret = MEM(pnew);
	mov	a,#0x04
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	dptr,#_realloc_ret_1_27
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	ljmp	00115$
00104$:
;	_realloc.c:128: ret = malloc(size - HEADER_SIZE);
	mov	a,_realloc_sloc0_1_0
	add	a,#0xFC
	mov	r6,a
	mov	a,(_realloc_sloc0_1_0 + 1)
	addc	a,#0xFF
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	push	ar4
	push	ar3
	mov	r0,#_malloc
	mov	r1,#(_malloc >> 8)
	mov	r2,#(_malloc >> 16)
	lcall	__sdcc_banked_call
	mov	r6,dpl
	mov	r7,dph
	pop	ar3
	pop	ar4
	mov	dptr,#_realloc_ret_1_27
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	_realloc.c:129: if (ret)
	mov	a,r6
	orl	a,r7
	jz	00115$
;	_realloc.c:131: memcpy(ret, MEM(pthis), pthis->len - HEADER_SIZE);
	mov	r5,#0x00
	mov	a,#0x04
	add	a,r3
	mov	r1,a
	clr	a
	addc	a,r4
	mov	r0,a
	mov	r2,#0x00
	mov	dpl,r3
	mov	dph,r4
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,r3
	add	a,#0xFC
	mov	r3,a
	mov	a,r4
	addc	a,#0xFF
	mov	r4,a
	mov	dptr,#_memcpy_PARM_2
	mov	a,r1
	movx	@dptr,a
	mov	a,r0
	inc	dptr
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_memcpy_PARM_3
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	mov	r0,#_memcpy
	mov	r1,#(_memcpy >> 8)
	mov	r2,#(_memcpy >> 16)
	lcall	__sdcc_banked_call
;	_realloc.c:132: free(p);
	mov	dpl,_realloc_sloc1_1_0
	mov	dph,(_realloc_sloc1_1_0 + 1)
	mov	b,(_realloc_sloc1_1_0 + 2)
	mov	r0,#_free
	mov	r1,#(_free >> 8)
	mov	r2,#(_free >> 16)
	lcall	__sdcc_banked_call
	sjmp	00115$
00114$:
;	_realloc.c:140: ret = malloc(size);
	mov	dptr,#_realloc_PARM_2
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	mov	r0,#_malloc
	mov	r1,#(_malloc >> 8)
	mov	r2,#(_malloc >> 16)
	lcall	__sdcc_banked_call
	mov	a,dpl
	mov	b,dph
	mov	dptr,#_realloc_ret_1_27
	movx	@dptr,a
	mov	a,b
	inc	dptr
	movx	@dptr,a
00115$:
;	_realloc.c:143: return ret;
	mov	dptr,#_realloc_ret_1_27
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	ljmp	__sdcc_banked_ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
