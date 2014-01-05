;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:27:50 2013
;--------------------------------------------------------
	.module _realloc
	.optsdcc -mmcs51 --model-small
	
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
_realloc_PARM_2:
	.ds 2
_realloc_p_1_26:
	.ds 3
_realloc_pthis_1_27:
	.ds 2
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
;Allocation info for local variables in function 'realloc'
;------------------------------------------------------------
;size                      Allocated with name '_realloc_PARM_2'
;p                         Allocated with name '_realloc_p_1_26'
;pthis                     Allocated with name '_realloc_pthis_1_27'
;pnew                      Allocated to registers r6 r7 
;ret                       Allocated to registers r1 r2 
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
	mov	_realloc_p_1_26,dpl
	mov	(_realloc_p_1_26 + 1),dph
	mov	(_realloc_p_1_26 + 2),b
;	_realloc.c:92: pthis = _sdcc_find_memheader(p);
	mov	dpl,_realloc_p_1_26
	mov	dph,(_realloc_p_1_26 + 1)
	lcall	__sdcc_find_memheader
	mov	_realloc_pthis_1_27,dpl
	mov	(_realloc_pthis_1_27 + 1),dph
;	_realloc.c:93: if (pthis)
	mov	a,_realloc_pthis_1_27
	orl	a,(_realloc_pthis_1_27 + 1)
	jnz	00136$
	ljmp	00114$
00136$:
;	_realloc.c:95: if (size > (0xFFFF-HEADER_SIZE))
	clr	c
	mov	a,#0xFB
	subb	a,_realloc_PARM_2
	mov	a,#0xFF
	subb	a,(_realloc_PARM_2 + 1)
	jnc	00111$
;	_realloc.c:97: ret = (void __xdata *) NULL; //To prevent overflow in next line
	mov	r1,#0x00
	mov	r2,#0x00
	ljmp	00115$
00111$:
;	_realloc.c:101: size += HEADER_SIZE; //We need a memory for header too
	mov	a,#0x04
	add	a,_realloc_PARM_2
	mov	_realloc_PARM_2,a
	clr	a
	addc	a,(_realloc_PARM_2 + 1)
	mov	(_realloc_PARM_2 + 1),a
;	_realloc.c:103: if ((((unsigned int)pthis->next) - ((unsigned int)pthis)) >= size)
	mov	dpl,_realloc_pthis_1_27
	mov	dph,(_realloc_pthis_1_27 + 1)
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	ar5,r0
	mov	ar6,r7
	mov	r3,_realloc_pthis_1_27
	mov	r4,(_realloc_pthis_1_27 + 1)
	mov	a,r5
	clr	c
	subb	a,r3
	mov	r5,a
	mov	a,r6
	subb	a,r4
	mov	r6,a
	clr	c
	mov	a,r5
	subb	a,_realloc_PARM_2
	mov	a,r6
	subb	a,(_realloc_PARM_2 + 1)
	jc	00108$
;	_realloc.c:105: pthis->len = size;
	mov	dpl,_realloc_pthis_1_27
	mov	dph,(_realloc_pthis_1_27 + 1)
	inc	dptr
	inc	dptr
	mov	a,_realloc_PARM_2
	movx	@dptr,a
	mov	a,(_realloc_PARM_2 + 1)
	inc	dptr
	movx	@dptr,a
;	_realloc.c:106: ret = p;
	mov	r1,_realloc_p_1_26
	mov	r2,(_realloc_p_1_26 + 1)
	ljmp	00115$
00108$:
;	_realloc.c:110: if ((_sdcc_prev_memheader) &&
	mov	a,__sdcc_prev_memheader
	orl	a,(__sdcc_prev_memheader + 1)
	jnz	00139$
	ljmp	00104$
00139$:
;	_realloc.c:111: ((((unsigned int)pthis->next) -
;	_realloc.c:112: ((unsigned int)_sdcc_prev_memheader) -
	mov	r5,__sdcc_prev_memheader
	mov	r6,(__sdcc_prev_memheader + 1)
	mov	a,r0
	clr	c
	subb	a,r5
	mov	r0,a
	mov	a,r7
	subb	a,r6
	mov	r7,a
;	_realloc.c:113: _sdcc_prev_memheader->len) >= size))
	mov	dpl,__sdcc_prev_memheader
	mov	dph,(__sdcc_prev_memheader + 1)
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	a,r0
	clr	c
	subb	a,r5
	mov	r0,a
	mov	a,r7
	subb	a,r6
	mov	r7,a
	clr	c
	mov	a,r0
	subb	a,_realloc_PARM_2
	mov	a,r7
	subb	a,(_realloc_PARM_2 + 1)
	jc	00104$
;	_realloc.c:115: pnew = (MEMHEADER __xdata * )((char __xdata *)_sdcc_prev_memheader + _sdcc_prev_memheader->len);
	mov	r6,__sdcc_prev_memheader
	mov	r7,(__sdcc_prev_memheader + 1)
	mov	dpl,__sdcc_prev_memheader
	mov	dph,(__sdcc_prev_memheader + 1)
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r4
	add	a,r6
	mov	r6,a
	mov	a,r5
	addc	a,r7
	mov	r7,a
;	_realloc.c:116: _sdcc_prev_memheader->next = pnew;
	mov	dpl,__sdcc_prev_memheader
	mov	dph,(__sdcc_prev_memheader + 1)
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	_realloc.c:122: memmove(pnew, pthis, pthis->len);
	mov	ar3,r6
	mov	ar4,r7
	mov	r5,#0x00
	mov	_memmove_PARM_2,_realloc_pthis_1_27
	mov	(_memmove_PARM_2 + 1),(_realloc_pthis_1_27 + 1)
;	1-genFromRTrack replaced	mov	(_memmove_PARM_2 + 2),#0x00
	mov	(_memmove_PARM_2 + 2),r5
	mov	dpl,_realloc_pthis_1_27
	mov	dph,(_realloc_pthis_1_27 + 1)
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	_memmove_PARM_3,a
	inc	dptr
	movx	a,@dptr
	mov	(_memmove_PARM_3 + 1),a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	push	ar7
	push	ar6
	lcall	_memmove
	pop	ar6
	pop	ar7
;	_realloc.c:123: pnew->len = size;
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	inc	dptr
	mov	a,_realloc_PARM_2
	movx	@dptr,a
	mov	a,(_realloc_PARM_2 + 1)
	inc	dptr
	movx	@dptr,a
;	_realloc.c:124: ret = MEM(pnew);
	mov	a,#0x04
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	ar1,r6
	mov	ar2,r7
	sjmp	00115$
00104$:
;	_realloc.c:128: ret = malloc(size - HEADER_SIZE);
	mov	a,_realloc_PARM_2
	add	a,#0xFC
	mov	dpl,a
	mov	a,(_realloc_PARM_2 + 1)
	addc	a,#0xFF
	mov	dph,a
	lcall	_malloc
	mov	r1,dpl
	mov	r2,dph
;	_realloc.c:129: if (ret)
	mov	a,r1
	orl	a,r2
	jz	00115$
;	_realloc.c:131: memcpy(ret, MEM(pthis), pthis->len - HEADER_SIZE);
	mov	ar5,r1
	mov	ar6,r2
	mov	r7,#0x00
	mov	a,#0x04
	add	a,_realloc_pthis_1_27
	mov	r3,a
	clr	a
	addc	a,(_realloc_pthis_1_27 + 1)
	mov	r4,a
	mov	_memcpy_PARM_2,r3
	mov	(_memcpy_PARM_2 + 1),r4
;	1-genFromRTrack replaced	mov	(_memcpy_PARM_2 + 2),#0x00
	mov	(_memcpy_PARM_2 + 2),r7
	mov	dpl,_realloc_pthis_1_27
	mov	dph,(_realloc_pthis_1_27 + 1)
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,r3
	add	a,#0xFC
	mov	_memcpy_PARM_3,a
	mov	a,r4
	addc	a,#0xFF
	mov	(_memcpy_PARM_3 + 1),a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar2
	push	ar1
	lcall	_memcpy
;	_realloc.c:132: free(p);
	mov	dpl,_realloc_p_1_26
	mov	dph,(_realloc_p_1_26 + 1)
	mov	b,(_realloc_p_1_26 + 2)
	lcall	_free
	pop	ar1
	pop	ar2
	sjmp	00115$
00114$:
;	_realloc.c:140: ret = malloc(size);
	mov	dpl,_realloc_PARM_2
	mov	dph,(_realloc_PARM_2 + 1)
	lcall	_malloc
	mov	r1,dpl
	mov	r2,dph
00115$:
;	_realloc.c:143: return ret;
	mov	dpl,r1
	mov	dph,r2
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
