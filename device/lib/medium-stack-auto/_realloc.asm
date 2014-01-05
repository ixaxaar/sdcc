;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:08 2013
;--------------------------------------------------------
	.module _realloc
	.optsdcc -mmcs51 --model-medium
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __sdcc_find_memheader
	.globl _memmove
	.globl _memcpy
	.globl _free
	.globl _malloc
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
;size                      Allocated to stack - _bp -4
;p                         Allocated to stack - _bp +1
;pthis                     Allocated to stack - _bp +6
;pnew                      Allocated to stack - _bp +8
;ret                       Allocated to stack - _bp +10
;sloc0                     Allocated to stack - _bp +4
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
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x08
	mov	sp,a
;	_realloc.c:142: }
	setb	c
	jbc	ea,00136$
	clr	c
00136$:
	push	psw
;	_realloc.c:92: pthis = _sdcc_find_memheader(p);
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	lcall	__sdcc_find_memheader
	mov	r3,dpl
	mov	r4,dph
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
;	_realloc.c:93: if (pthis)
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00137$
	ljmp	00114$
00137$:
;	_realloc.c:95: if (size > (0xFFFF-HEADER_SIZE))
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	clr	c
	mov	a,#0xFB
	subb	a,@r0
	mov	a,#0xFF
	inc	r0
	subb	a,@r0
	jnc	00111$
;	_realloc.c:97: ret = (void __xdata *) NULL; //To prevent overflow in next line
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	ljmp	00115$
00111$:
;	_realloc.c:101: size += HEADER_SIZE; //We need a memory for header too
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	a,#0x04
	add	a,@r0
	mov	@r0,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	@r0,a
;	_realloc.c:103: if ((((unsigned int)pthis->next) - ((unsigned int)pthis)) >= size)
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	ar5,r2
	mov	ar6,r7
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	a,r5
	clr	c
	subb	a,r3
	mov	r5,a
	mov	a,r6
	subb	a,r4
	mov	r6,a
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	clr	c
	mov	a,r5
	subb	a,@r0
	mov	a,r6
	inc	r0
	subb	a,@r0
	jc	00108$
;	_realloc.c:105: pthis->len = size;
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	dptr
	inc	dptr
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	movx	@dptr,a
	inc	r0
	mov	a,@r0
	inc	dptr
	movx	@dptr,a
;	_realloc.c:106: ret = p;
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x0a
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	ljmp	00115$
00108$:
;	_realloc.c:110: if ((_sdcc_prev_memheader) &&
	mov	r0,#__sdcc_prev_memheader
	movx	a,@r0
	mov	b,a
	inc	r0
	movx	a,@r0
	orl	a,b
	jnz	00140$
	ljmp	00104$
00140$:
;	_realloc.c:111: ((((unsigned int)pthis->next) -
;	_realloc.c:112: ((unsigned int)_sdcc_prev_memheader) -
	mov	r0,#__sdcc_prev_memheader
	movx	a,@r0
	mov	r5,a
	inc	r0
	movx	a,@r0
	mov	r6,a
	mov	a,r2
	clr	c
	subb	a,r5
	mov	r2,a
	mov	a,r7
	subb	a,r6
	mov	r7,a
;	_realloc.c:113: _sdcc_prev_memheader->len) >= size))
	mov	r0,#__sdcc_prev_memheader
	movx	a,@r0
	mov	r5,a
	inc	r0
	movx	a,@r0
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,r2
	clr	c
	subb	a,r3
	mov	r2,a
	mov	a,r7
	subb	a,r4
	mov	r7,a
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	clr	c
	mov	a,r2
	subb	a,@r0
	mov	a,r7
	inc	r0
	subb	a,@r0
	jnc	00141$
	ljmp	00104$
00141$:
;	_realloc.c:115: pnew = (MEMHEADER __xdata * )((char __xdata *)_sdcc_prev_memheader + _sdcc_prev_memheader->len);
	mov	r0,#__sdcc_prev_memheader
	movx	a,@r0
	mov	r2,a
	inc	r0
	movx	a,@r0
	mov	r7,a
	mov	a,r3
	add	a,r2
	mov	r3,a
	mov	a,r4
	addc	a,r7
	mov	r4,a
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
;	_realloc.c:116: _sdcc_prev_memheader->next = pnew;
	mov	dpl,r5
	mov	dph,r6
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	a,@r0
	movx	@dptr,a
	inc	r0
	mov	a,@r0
	inc	dptr
	movx	@dptr,a
;	_realloc.c:122: memmove(pnew, pthis, pthis->len);
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	dptr
	inc	dptr
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	movx	a,@dptr
	mov	@r0,a
	inc	dptr
	movx	a,@dptr
	inc	r0
	mov	@r0,a
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar4,@r0
	mov	r5,#0x00
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	ar3,@r0
	inc	r0
	mov	ar6,@r0
	mov	r7,#0x00
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	push	ar2
	push	ar4
	push	ar5
	mov	dpl,r3
	mov	dph,r6
	mov	b,r7
	lcall	_memmove
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	_realloc.c:123: pnew->len = size;
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	dptr
	inc	dptr
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	movx	@dptr,a
	inc	r0
	mov	a,@r0
	inc	dptr
	movx	@dptr,a
;	_realloc.c:124: ret = MEM(pnew);
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	a,#0x04
	add	a,@r0
	mov	r6,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r7,a
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	ljmp	00115$
00104$:
;	_realloc.c:128: ret = malloc(size - HEADER_SIZE);
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	add	a,#0xFC
	mov	dpl,a
	inc	r0
	mov	a,@r0
	addc	a,#0xFF
	mov	dph,a
	lcall	_malloc
	mov	r6,dpl
	mov	r7,dph
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	_realloc.c:129: if (ret)
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00142$
	ljmp	00115$
00142$:
;	_realloc.c:131: memcpy(ret, MEM(pthis), pthis->len - HEADER_SIZE);
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,r6
	add	a,#0xFC
	mov	@r0,a
	mov	a,r7
	addc	a,#0xFF
	inc	r0
	mov	@r0,a
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	a,#0x04
	add	a,@r0
	mov	r4,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r5,a
	mov	r3,#0x00
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar6,@r0
	mov	r7,#0x00
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	push	ar4
	push	ar5
	push	ar3
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	lcall	_memcpy
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	_realloc.c:132: free(p);
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_free
	sjmp	00115$
00114$:
;	_realloc.c:140: ret = malloc(size);
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	lcall	_malloc
	mov	r6,dpl
	mov	r7,dph
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
00115$:
	pop	psw
	mov	ea,c
;	_realloc.c:143: return ret;
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	mov	sp,_bp
	pop	_bp
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
