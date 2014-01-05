;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:29:00 2013
;--------------------------------------------------------
	.module time
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _RtcRead
	.globl _sprintf
	.globl ___day
	.globl ___month
	.globl _time
	.globl _asctime
	.globl _ctime
	.globl _localtime
	.globl _gmtime
	.globl _mktime
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
_ascTimeBuffer:
	.ds 32
_lastTime:
	.ds 12
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area INITIALIZED
_monthDays:
	.ds 12
___month::
	.ds 24
___day::
	.ds 14
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area DABS (ABS)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME
	.area GSINIT
	.area GSFINAL
	.area GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME
	.area HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CODE
;	../time.c: 42: unsigned char RtcRead(struct tm *timeptr) {
;	-----------------------------------------
;	 function RtcRead
;	-----------------------------------------
_RtcRead:
;	../time.c: 45: return 0;
	clr	a
	ret
;	../time.c: 50: time_t time(time_t *timeptr) {
;	-----------------------------------------
;	 function time
;	-----------------------------------------
_time:
	sub	sp, #16
;	../time.c: 52: time_t t=-1;
	ldw	x, #0xffff
	ldw	(0x0f, sp), x
	ldw	x, #0xffff
	ldw	(0x0d, sp), x
;	../time.c: 54: if (RtcRead(&now)) {
	ldw	x, sp
	incw	x
	ldw	y, x
	pushw	x
	pushw	y
	call	_RtcRead
	addw	sp, #2
	popw	x
	tnz	a
	jreq	00102$
;	../time.c: 55: t=mktime(&now);
	pushw	x
	call	_mktime
	addw	sp, #2
	ldw	(0x0f, sp), x
	ldw	(0x0d, sp), y
00102$:
;	../time.c: 57: if (timeptr) {
	ldw	x, (0x13, sp)
	jreq	00104$
;	../time.c: 58: *timeptr=t;
	ldw	x, (0x13, sp)
	ldw	y, (0x0f, sp)
	ldw	(0x2, x), y
	ldw	y, (0x0d, sp)
	ldw	(x), y
00104$:
;	../time.c: 60: return t;
	ldw	x, (0x0f, sp)
	ldw	y, (0x0d, sp)
	addw	sp, #16
	ret
;	../time.c: 73: static void CheckTime(struct tm *timeptr) {
;	-----------------------------------------
;	 function CheckTime
;	-----------------------------------------
_CheckTime:
;	../time.c: 84: if (timeptr->tm_sec>59) timeptr->tm_sec=59;
	ldw	y, (0x03, sp)
	ld	a, (y)
	cp	a, #0x3b
	jrule	00102$
	ld	a, #0x3b
	ld	(y), a
00102$:
;	../time.c: 85: if (timeptr->tm_min>59) timeptr->tm_min=59;
	ldw	x, y
	incw	x
	ld	a, (x)
	cp	a, #0x3b
	jrule	00104$
	ld	a, #0x3b
	ld	(x), a
00104$:
;	../time.c: 86: if (timeptr->tm_hour>23) timeptr->tm_hour=23;
	ldw	x, y
	incw	x
	incw	x
	ld	a, (x)
	cp	a, #0x17
	jrule	00106$
	ld	a, #0x17
	ld	(x), a
00106$:
;	../time.c: 87: if (timeptr->tm_wday>6) timeptr->tm_wday=6;
	ldw	x, y
	addw	x, #0x0007
	ld	a, (x)
	cp	a, #0x06
	jrule	00108$
	ld	a, #0x06
	ld	(x), a
00108$:
;	../time.c: 88: if (timeptr->tm_mday<1) timeptr->tm_mday=1;
	ldw	x, y
	addw	x, #0x0003
	ld	a, (x)
	cp	a, #0x01
	jrnc	00112$
	ld	a, #0x01
	ld	(x), a
	jra	00113$
00112$:
;	../time.c: 89: else if (timeptr->tm_mday>31) timeptr->tm_mday=31;
	cp	a, #0x1f
	jrule	00113$
	ld	a, #0x1f
	ld	(x), a
00113$:
;	../time.c: 90: if (timeptr->tm_mon>11) timeptr->tm_mon=11;
	ldw	x, y
	addw	x, #0x0004
	ld	a, (x)
	cp	a, #0x0b
	jrule	00115$
	ld	a, #0x0b
	ld	(x), a
00115$:
;	../time.c: 91: if (timeptr->tm_year<0) timeptr->tm_year=0;
	addw	y, #0x0005
	ldw	x, y
	ldw	x, (x)
	cpw	x, #0x0000
	jrsge	00118$
	ldw	x, y
	clr	(0x1, x)
	clr	(x)
00118$:
	ret
;	../time.c: 95: char *asctime(struct tm *timeptr) {
;	-----------------------------------------
;	 function asctime
;	-----------------------------------------
_asctime:
	sub	sp, #22
;	../time.c: 96: CheckTime(timeptr);
	ldw	x, (0x19, sp)
	pushw	x
	call	_CheckTime
	addw	sp, #2
;	../time.c: 100: timeptr->tm_year+1900);
	ldw	y, (0x19, sp)
	ldw	x, y
	ldw	x, (0x5, x)
	addw	x, #0x076c
	ldw	(0x0f, sp), x
;	../time.c: 99: timeptr->tm_hour, timeptr->tm_min, timeptr->tm_sec, 
	ld	a, (y)
	ld	(0x0a, sp), a
	clr	(0x09, sp)
	ldw	x, y
	ld	a, (0x1, x)
	ld	(0x04, sp), a
	clr	(0x03, sp)
	ldw	x, y
	ld	a, (0x2, x)
	ld	(0x0c, sp), a
	clr	(0x0b, sp)
;	../time.c: 98: __day[timeptr->tm_wday], __month[timeptr->tm_mon], timeptr->tm_mday,
	ldw	x, y
	ld	a, (0x3, x)
	ld	(0x02, sp), a
	clr	(0x01, sp)
	ldw	x, #___month+0
	ldw	(0x11, sp), x
	ldw	x, y
	ld	a, (0x4, x)
	clrw	x
	ld	xl, a
	sllw	x
	addw	x, (0x11, sp)
	ldw	x, (x)
	ldw	(0x07, sp), x
	ldw	x, #___day+0
	ldw	(0x05, sp), x
	ld	a, (0x7, y)
	clrw	x
	ld	xl, a
	sllw	x
	addw	x, (0x05, sp)
	ldw	x, (x)
	ldw	(0x15, sp), x
;	../time.c: 97: sprintf (ascTimeBuffer, "%s %s %2d %02d:%02d:%02d %04d\n",
	ldw	x, #__str_0+0
	ldw	(0x13, sp), x
	ldw	x, #_ascTimeBuffer+0
	ldw	(0x0d, sp), x
	ldw	y, (0x0d, sp)
	ldw	x, (0x0f, sp)
	pushw	x
	ldw	x, (0x0b, sp)
	pushw	x
	ldw	x, (0x07, sp)
	pushw	x
	ldw	x, (0x11, sp)
	pushw	x
	ldw	x, (0x09, sp)
	pushw	x
	ldw	x, (0x11, sp)
	pushw	x
	ldw	x, (0x21, sp)
	pushw	x
	ldw	x, (0x21, sp)
	pushw	x
	pushw	y
	call	_sprintf
	addw	sp, #18
;	../time.c: 101: return ascTimeBuffer;
	ldw	x, (0x0d, sp)
	addw	sp, #22
	ret
;	../time.c: 104: char *ctime(time_t *timep) {
;	-----------------------------------------
;	 function ctime
;	-----------------------------------------
_ctime:
;	../time.c: 105: return asctime(localtime(timep));
	ldw	x, (0x03, sp)
	pushw	x
	call	_localtime
	addw	sp, #2
	pushw	x
	call	_asctime
	addw	sp, #2
	ret
;	../time.c: 121: struct tm *localtime(time_t *timep) {
;	-----------------------------------------
;	 function localtime
;	-----------------------------------------
_localtime:
;	../time.c: 122: return gmtime(timep);
	ldw	x, (0x03, sp)
	pushw	x
	call	_gmtime
	addw	sp, #2
	ret
;	../time.c: 125: struct tm *gmtime(time_t *timep) {
;	-----------------------------------------
;	 function gmtime
;	-----------------------------------------
_gmtime:
	sub	sp, #78
;	../time.c: 126: unsigned long epoch=*timep;
	ldw	x, (0x51, sp)
	ld	a, (0x3, x)
	ld	(0x08, sp), a
	ld	a, (0x2, x)
	ldw	x, (x)
	ld	(0x32, sp), a
	ldw	(0x30, sp), x
	ld	a, (0x08, sp)
	ld	(0x33, sp), a
;	../time.c: 131: lastTime.tm_sec=epoch%60;
	ldw	x, #_lastTime+0
	ldw	(0x41, sp), x
	push	#0x3c
	clrw	x
	pushw	x
	push	#0x00
	ldw	x, (0x36, sp)
	pushw	x
	ldw	x, (0x36, sp)
	pushw	x
	call	__modulong
	addw	sp, #8
	ld	a, xl
	ldw	x, (0x41, sp)
	ld	(x), a
;	../time.c: 132: epoch/=60; // now it is minutes
	push	#0x3c
	clrw	x
	pushw	x
	push	#0x00
	ldw	x, (0x36, sp)
	pushw	x
	ldw	x, (0x36, sp)
	pushw	x
	call	__divulong
	addw	sp, #8
	ldw	(0x26, sp), x
	ldw	(0x24, sp), y
;	../time.c: 133: lastTime.tm_min=epoch%60;
	ldw	x, #_lastTime+0
	ldw	(0x0e, sp), x
	ldw	x, (0x0e, sp)
	incw	x
	ldw	(0x0c, sp), x
	push	#0x3c
	clrw	x
	pushw	x
	push	#0x00
	ldw	x, (0x2a, sp)
	pushw	x
	ldw	x, (0x2a, sp)
	pushw	x
	call	__modulong
	addw	sp, #8
	ld	a, xl
	ldw	x, (0x0c, sp)
	ld	(x), a
;	../time.c: 134: epoch/=60; // now it is hours
	push	#0x3c
	clrw	x
	pushw	x
	push	#0x00
	ldw	x, (0x2a, sp)
	pushw	x
	ldw	x, (0x2a, sp)
	pushw	x
	call	__divulong
	addw	sp, #8
	ldw	(0x07, sp), x
	ldw	(0x05, sp), y
;	../time.c: 135: lastTime.tm_hour=epoch%24;
	ldw	x, (0x0e, sp)
	incw	x
	incw	x
	ldw	(0x3f, sp), x
	push	#0x18
	clrw	x
	pushw	x
	push	#0x00
	ldw	x, (0x0b, sp)
	pushw	x
	ldw	x, (0x0b, sp)
	pushw	x
	call	__modulong
	addw	sp, #8
	ld	a, xl
	ldw	x, (0x3f, sp)
	ld	(x), a
;	../time.c: 136: epoch/=24; // now it is days
	push	#0x18
	clrw	x
	pushw	x
	push	#0x00
	ldw	x, (0x0b, sp)
	pushw	x
	ldw	x, (0x0b, sp)
	pushw	x
	call	__divulong
	addw	sp, #8
	ldw	(0x3d, sp), x
	ldw	(0x3b, sp), y
;	../time.c: 137: lastTime.tm_wday=(epoch+4)%7;
	ldw	x, (0x0e, sp)
	addw	x, #0x0007
	ldw	(0x2e, sp), x
	ldw	y, (0x3d, sp)
	addw	y, #0x0004
	ld	a, (0x3c, sp)
	adc	a, #0x00
	ld	xl, a
	ld	a, (0x3b, sp)
	adc	a, #0x00
	ld	xh, a
	push	#0x07
	push	#0x00
	push	#0x00
	push	#0x00
	pushw	y
	pushw	x
	call	__modulong
	addw	sp, #8
	ld	a, xl
	ldw	x, (0x2e, sp)
	ld	(x), a
;	../time.c: 140: days=0;
	clrw	x
	ldw	(0x2c, sp), x
	ldw	(0x2a, sp), x
;	../time.c: 141: while((days += (LEAP_YEAR(year) ? 366 : 365)) <= epoch) {
	ldw	x, #0x07b2
	ldw	(0x0a, sp), x
00101$:
	ld	a, (0x0b, sp)
	and	a, #0x03
	ld	(0x29, sp), a
	clr	(0x28, sp)
	ld	a, (0x29, sp)
	sub	a, #0x01
	ld	a, (0x28, sp)
	sbc	a, #0x00
	clr	a
	rlc	a
	ld	(0x3a, sp), a
	tnz	(0x3a, sp)
	jreq	00118$
	ldw	x, #0x016e
	ldw	(0x38, sp), x
	jra	00119$
00118$:
	ldw	x, #0x016d
	ldw	(0x38, sp), x
00119$:
	ldw	y, (0x38, sp)
	clrw	x
	tnzw	y
	jrpl	00157$
	decw	x
00157$:
	addw	y, (0x2c, sp)
	ldw	(0x36, sp), y
	ld	a, xl
	adc	a, (0x2b, sp)
	ld	(0x35, sp), a
	ld	a, xh
	adc	a, (0x2a, sp)
	ld	(0x34, sp), a
	ldw	y, (0x36, sp)
	ldw	(0x2c, sp), y
	ldw	y, (0x34, sp)
	ldw	(0x2a, sp), y
	ldw	x, (0x3d, sp)
	cpw	x, (0x36, sp)
	ld	a, (0x3c, sp)
	sbc	a, (0x35, sp)
	ld	a, (0x3b, sp)
	sbc	a, (0x34, sp)
	jrc	00103$
;	../time.c: 142: year++;
	ldw	x, (0x0a, sp)
	incw	x
	ldw	(0x0a, sp), x
	jra	00101$
00103$:
;	../time.c: 144: lastTime.tm_year=year-1900;
	ldw	x, (0x0e, sp)
	addw	x, #0x0005
	ldw	y, (0x0a, sp)
	subw	y, #0x076c
	ldw	(x), y
;	../time.c: 146: days -= LEAP_YEAR(year) ? 366 : 365;
	ldw	y, (0x28, sp)
	ldw	(0x4d, sp), y
	tnz	(0x3a, sp)
	jreq	00120$
	ld	a, #0x6e
	ld	(0x4c, sp), a
	ld	a, #0x01
	jra	00121$
00120$:
	ld	a, #0x6d
	ld	(0x4c, sp), a
	ld	a, #0x01
00121$:
	ld	(0x49, sp), a
	ld	a, (0x4c, sp)
	ld	(0x4a, sp), a
	clrw	x
	tnz	(0x49, sp)
	jrpl	00160$
	decw	x
00160$:
	ldw	y, (0x2c, sp)
	subw	y, (0x49, sp)
	ldw	(0x45, sp), y
	ld	a, (0x2b, sp)
	pushw	x
	sbc	a, (#2, sp)
	popw	x
	ld	yl, a
	ld	a, (0x2a, sp)
	pushw	x
	sbc	a, (#1, sp)
	popw	x
	ld	(0x43, sp), a
	ldw	x, (0x45, sp)
	ldw	(0x03, sp), x
	ld	a, (0x43, sp)
	ld	(0x01, sp), a
	ldw	x, y
;	../time.c: 147: epoch -= days; // now it is days in this year, starting at 0
	ldw	y, (0x3d, sp)
	subw	y, (0x03, sp)
	ld	a, (0x3c, sp)
	pushw	x
	sbc	a, (#2, sp)
	popw	x
	ld	(0x21, sp), a
	ld	a, (0x3b, sp)
	sbc	a, (0x01, sp)
	ldw	(0x1e, sp), y
	ld	(0x1c, sp), a
	ld	a, (0x21, sp)
	ld	(0x1d, sp), a
;	../time.c: 148: lastTime.tm_yday=epoch;
	ldw	x, (0x0e, sp)
	ldw	y, (0x1e, sp)
	ldw	(0x0008, x), y
;	../time.c: 153: for (month=0; month<12; month++) {
	ldw	x, #_monthDays+0
	ldw	(0x1a, sp), x
	clr	(0x09, sp)
00114$:
;	../time.c: 154: if (month==1) { // februari
	ld	a, (0x09, sp)
	cp	a, #0x01
	jrne	00108$
;	../time.c: 155: if (LEAP_YEAR(year)) {
	ldw	x, (0x4d, sp)
	jrne	00105$
;	../time.c: 156: monthLength=29;
	ld	a, #0x1d
	jra	00109$
00105$:
;	../time.c: 158: monthLength=28;
	ld	a, #0x1c
	jra	00109$
00108$:
;	../time.c: 161: monthLength = monthDays[month];
	clrw	x
	ld	a, (0x09, sp)
	ld	xl, a
	addw	x, (0x1a, sp)
	ldw	(0x18, sp), x
	ldw	x, (0x18, sp)
	ld	a, (x)
00109$:
;	../time.c: 164: if (epoch>=monthLength) {
	ld	(0x17, sp), a
	clr	(0x16, sp)
	clr	(0x15, sp)
	clr	(0x14, sp)
	ldw	x, (0x1e, sp)
	cpw	x, (0x16, sp)
	ld	a, (0x1d, sp)
	sbc	a, (0x15, sp)
	ld	a, (0x1c, sp)
	sbc	a, (0x14, sp)
	jrc	00113$
;	../time.c: 165: epoch-=monthLength;
	ldw	y, (0x1e, sp)
	subw	y, (0x16, sp)
	ld	a, (0x1d, sp)
	sbc	a, (0x15, sp)
	ld	(0x11, sp), a
	ld	a, (0x1c, sp)
	sbc	a, (0x14, sp)
	ldw	(0x1e, sp), y
	ld	(0x1c, sp), a
	ld	a, (0x11, sp)
	ld	(0x1d, sp), a
;	../time.c: 153: for (month=0; month<12; month++) {
	inc	(0x09, sp)
	ld	a, (0x09, sp)
	cp	a, #0x0c
	jrc	00114$
00113$:
;	../time.c: 170: lastTime.tm_mon=month;
	ldw	x, (0x0e, sp)
	ld	a, (0x09, sp)
	ld	(0x0004, x), a
;	../time.c: 171: lastTime.tm_mday=epoch+1;
	ldw	x, (0x0e, sp)
	addw	x, #0x0003
	ld	a, (0x1f, sp)
	inc	a
	ld	(x), a
;	../time.c: 173: lastTime.tm_isdst=0;
	ldw	x, (0x0e, sp)
	addw	x, #0x000a
	clr	(x)
;	../time.c: 175: return &lastTime;
	ldw	x, (0x0e, sp)
	addw	sp, #78
	ret
;	../time.c: 179: time_t mktime(struct tm *timeptr) {
;	-----------------------------------------
;	 function mktime
;	-----------------------------------------
_mktime:
	sub	sp, #56
;	../time.c: 180: int year=timeptr->tm_year+1900, month=timeptr->tm_mon, i;
	ldw	y, (0x3b, sp)
	ldw	(0x21, sp), y
	ldw	x, (0x21, sp)
	ldw	x, (0x5, x)
	addw	x, #0x076c
	ldw	(0x09, sp), x
	ldw	x, (0x21, sp)
	ld	a, (0x4, x)
	clrw	x
	ld	xl, a
	ldw	(0x01, sp), x
;	../time.c: 183: CheckTime(timeptr);
	ldw	x, (0x21, sp)
	pushw	x
	call	_CheckTime
	addw	sp, #2
;	../time.c: 186: seconds= (year-1970)*(60*60*24L*365);
	ldw	y, (0x09, sp)
	subw	y, #0x07b2
	clrw	x
	tnzw	y
	jrpl	00147$
	decw	x
00147$:
	pushw	y
	pushw	x
	push	#0x80
	push	#0x33
	push	#0xe1
	push	#0x01
	call	__mullong
	addw	sp, #8
;	../time.c: 189: for (i=1970; i<year; i++) {
	ldw	(0x2d, sp), x
	ldw	(0x2b, sp), y
	ldw	x, #0x07b2
	ldw	(0x03, sp), x
00110$:
	ldw	x, (0x03, sp)
	cpw	x, (0x09, sp)
	jrsge	00124$
;	../time.c: 190: if (LEAP_YEAR(i)) {
	push	#0x04
	push	#0x00
	ldw	x, (0x05, sp)
	pushw	x
	call	__modsint
	addw	sp, #4
	tnzw	x
	jrne	00111$
;	../time.c: 191: seconds+= 60*60*24L;
	ldw	x, (0x2d, sp)
	addw	x, #0x5180
	ldw	(0x2d, sp), x
	ld	a, (0x2c, sp)
	adc	a, #0x01
	ld	(0x2c, sp), a
	ld	a, (0x2b, sp)
	adc	a, #0x00
	ld	(0x2b, sp), a
00111$:
;	../time.c: 189: for (i=1970; i<year; i++) {
	ldw	x, (0x03, sp)
	incw	x
	ldw	(0x03, sp), x
	jra	00110$
00124$:
	ldw	y, (0x2d, sp)
	ldw	(0x29, sp), y
	ldw	y, (0x2b, sp)
	ldw	(0x27, sp), y
;	../time.c: 196: for (i=0; i<month; i++) {
	push	#0x04
	push	#0x00
	ldw	x, (0x0b, sp)
	pushw	x
	call	__modsint
	addw	sp, #4
	ldw	(0x37, sp), x
	ldw	x, #_monthDays+0
	ldw	(0x1f, sp), x
	clrw	x
	ldw	(0x03, sp), x
00113$:
	ldw	x, (0x03, sp)
	cpw	x, (0x01, sp)
	jrsge	00108$
;	../time.c: 197: if (i==1 && LEAP_YEAR(year)) { 
	ldw	x, (0x03, sp)
	cpw	x, #0x0001
	jrne	00105$
	ldw	x, (0x37, sp)
	jrne	00105$
;	../time.c: 198: seconds+= 60*60*24L*29;
	ldw	x, (0x29, sp)
	addw	x, #0x3b80
	ld	a, (0x28, sp)
	adc	a, #0x26
	ld	(0x0c, sp), a
	ld	a, (0x27, sp)
	adc	a, #0x00
	ldw	(0x29, sp), x
	ld	(0x27, sp), a
	ld	a, (0x0c, sp)
	ld	(0x28, sp), a
	jra	00114$
00105$:
;	../time.c: 200: seconds+= 60*60*24L*monthDays[i];
	ldw	x, (0x1f, sp)
	addw	x, (0x03, sp)
	ld	a, (x)
	ld	xl, a
	ld	a, xl
	rlc	a
	clr	a
	sbc	a, #0x00
	ld	xh, a
	ld	yl, a
	ld	yh, a
	pushw	x
	pushw	y
	push	#0x80
	push	#0x51
	push	#0x01
	push	#0x00
	call	__mullong
	addw	sp, #8
	ld	a, xl
	add	a, (0x2a, sp)
	ld	(0x26, sp), a
	ld	a, xh
	adc	a, (0x29, sp)
	ld	xl, a
	ld	a, yl
	adc	a, (0x28, sp)
	ld	xh, a
	ld	a, yh
	adc	a, (0x27, sp)
	ld	(0x23, sp), a
	ldw	(0x28, sp), x
	ld	a, (0x26, sp)
	ld	(0x2a, sp), a
	ld	a, (0x23, sp)
	ld	(0x27, sp), a
00114$:
;	../time.c: 196: for (i=0; i<month; i++) {
	ldw	x, (0x03, sp)
	incw	x
	ldw	(0x03, sp), x
	jp	00113$
00108$:
;	../time.c: 204: seconds+= (timeptr->tm_mday-1)*60*60*24L;
	ldw	x, (0x21, sp)
	ld	a, (0x3, x)
	clrw	x
	ld	xl, a
	decw	x
	clrw	y
	tnzw	x
	jrpl	00155$
	decw	y
00155$:
	pushw	x
	pushw	y
	push	#0x80
	push	#0x51
	push	#0x01
	push	#0x00
	call	__mullong
	addw	sp, #8
	exgw	x, y
	addw	y, (0x29, sp)
	ld	a, xl
	adc	a, (0x28, sp)
	ld	(0x1c, sp), a
	ld	a, xh
	adc	a, (0x27, sp)
	ldw	(0x19, sp), y
	ld	(0x17, sp), a
	ld	a, (0x1c, sp)
	ld	(0x18, sp), a
;	../time.c: 205: seconds+= timeptr->tm_hour*60*60L;
	ldw	x, (0x21, sp)
	ld	a, (0x2, x)
	ld	xl, a
	clr	a
	ld	xh, a
	clrw	y
	pushw	x
	pushw	y
	push	#0x10
	push	#0x0e
	clrw	x
	pushw	x
	call	__mullong
	addw	sp, #8
	ld	a, xl
	add	a, (0x1a, sp)
	ld	(0x16, sp), a
	ld	a, xh
	adc	a, (0x19, sp)
	ld	xl, a
	ld	a, yl
	adc	a, (0x18, sp)
	ld	xh, a
	ld	a, yh
	adc	a, (0x17, sp)
	ld	(0x13, sp), a
	ldw	(0x10, sp), x
	ld	a, (0x16, sp)
	ld	(0x12, sp), a
	ld	a, (0x13, sp)
	ld	(0x0f, sp), a
;	../time.c: 206: seconds+= timeptr->tm_min*60;
	ldw	x, (0x21, sp)
	ld	a, (0x1, x)
	ld	xl, a
	ld	a, #0x3c
	mul	x, a
	ld	a, xh
	clrw	y
	tnz	a
	jrpl	00156$
	decw	y
00156$:
	ld	xh, a
	addw	x, (0x11, sp)
	ld	a, yl
	adc	a, (0x10, sp)
	ld	(0x34, sp), a
	ld	a, yh
	adc	a, (0x0f, sp)
	ld	yh, a
	ldw	(0x07, sp), x
	ld	a, (0x34, sp)
	ld	(0x06, sp), a
;	../time.c: 207: seconds+= timeptr->tm_sec;
	ldw	x, (0x21, sp)
	ld	a, (x)
	clrw	x
	ld	xl, a
	ld	a, xh
	rlc	a
	clr	a
	sbc	a, #0x00
	push	a
	ld	(0x30, sp), a
	pop	a
	addw	x, (0x07, sp)
	adc	a, (0x06, sp)
	ld	yl, a
	ld	a, yh
	adc	a, (0x2f, sp)
	ld	yh, a
;	../time.c: 208: return seconds;
	addw	sp, #56
	ret
	.area CODE
__str_0:
	.ascii "%s %s %2d %02d:%02d:%02d %04d"
	.db 0x0A
	.db 0x00
__str_1:
	.ascii "Jan"
	.db 0x00
__str_2:
	.ascii "Feb"
	.db 0x00
__str_3:
	.ascii "Mar"
	.db 0x00
__str_4:
	.ascii "Apr"
	.db 0x00
__str_5:
	.ascii "May"
	.db 0x00
__str_6:
	.ascii "Jun"
	.db 0x00
__str_7:
	.ascii "Jul"
	.db 0x00
__str_8:
	.ascii "Aug"
	.db 0x00
__str_9:
	.ascii "Sep"
	.db 0x00
__str_10:
	.ascii "Oct"
	.db 0x00
__str_11:
	.ascii "Nov"
	.db 0x00
__str_12:
	.ascii "Dec"
	.db 0x00
__str_13:
	.ascii "Sun"
	.db 0x00
__str_14:
	.ascii "Mon"
	.db 0x00
__str_15:
	.ascii "Tue"
	.db 0x00
__str_16:
	.ascii "Wed"
	.db 0x00
__str_17:
	.ascii "Thu"
	.db 0x00
__str_18:
	.ascii "Fri"
	.db 0x00
__str_19:
	.ascii "Sat"
	.db 0x00
	.area INITIALIZER
__xinit__monthDays:
	.db #0x1F	;  31
	.db #0x1C	;  28
	.db #0x1F	;  31
	.db #0x1E	;  30
	.db #0x1F	;  31
	.db #0x1E	;  30
	.db #0x1F	;  31
	.db #0x1F	;  31
	.db #0x1E	;  30
	.db #0x1F	;  31
	.db #0x1E	;  30
	.db #0x1F	;  31
__xinit____month:
	.dw __str_1
	.dw __str_2
	.dw __str_3
	.dw __str_4
	.dw __str_5
	.dw __str_6
	.dw __str_7
	.dw __str_8
	.dw __str_9
	.dw __str_10
	.dw __str_11
	.dw __str_12
__xinit____day:
	.dw __str_13
	.dw __str_14
	.dw __str_15
	.dw __str_16
	.dw __str_17
	.dw __str_18
	.dw __str_19
	.area CABS (ABS)
