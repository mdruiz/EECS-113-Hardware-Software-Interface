;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Jun 20 2015) (MINGW64)
; This file was generated Thu May 19 23:50:04 2016
;--------------------------------------------------------
	.module hw4
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _int2_isr
	.globl _int0_isr
	.globl __sdcc_gsinit_startup
	.globl _main
	.globl _atoi
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _displayOnOffControl_PARM_3
	.globl _displayOnOffControl_PARM_2
	.globl _displayOnOffControl_PARM_1
	.globl _numDays
	.globl _year
	.globl _month
	.globl _days
	.globl _hours
	.globl _minutes
	.globl _seconds
	.globl _position
	.globl _entryModeSet
	.globl _setDdRamAddress
	.globl _displayOnOffControl
	.globl _functionSet
	.globl _sendChar
	.globl _sendString
	.globl _delay
	.globl _big_delay
	.globl _timer_delay
	.globl _timeMode
	.globl _dateMode
	.globl _updateTime
	.globl _updateDate
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
	.area REG_BANK_1	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; overlayable bit register bank
;--------------------------------------------------------
	.area BIT_BANK	(REL,OVR,DATA)
bits:
	.ds 1
	b0 = bits[0]
	b1 = bits[1]
	b2 = bits[2]
	b3 = bits[3]
	b4 = bits[4]
	b5 = bits[5]
	b6 = bits[6]
	b7 = bits[7]
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_position::
	.ds 2
_seconds::
	.ds 3
_minutes::
	.ds 3
_hours::
	.ds 3
_days::
	.ds 3
_month::
	.ds 3
_year::
	.ds 3
_numDays::
	.ds 24
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

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
_displayOnOffControl_PARM_1:
	.ds 1
_displayOnOffControl_PARM_2:
	.ds 1
_displayOnOffControl_PARM_3:
	.ds 1
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
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	ljmp	_int0_isr
	.ds	5
	reti
	.ds	7
	ljmp	_int2_isr
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;	hw4.c:70: void main(void) {
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	hw4.c:72: seconds[0] = '0';
	mov	_seconds,#0x30
;	hw4.c:73: seconds[1] = '0';
	mov	(_seconds + 0x0001),#0x30
;	hw4.c:74: minutes[0] = '0';
	mov	_minutes,#0x30
;	hw4.c:75: minutes[1] = '0';
	mov	(_minutes + 0x0001),#0x30
;	hw4.c:76: hours[0] = '0';
	mov	_hours,#0x30
;	hw4.c:77: hours[1] = '0';
	mov	(_hours + 0x0001),#0x30
;	hw4.c:78: seconds[2] = 0;
	mov	(_seconds + 0x0002),#0x00
;	hw4.c:79: minutes[2] = 0;
	mov	(_minutes + 0x0002),#0x00
;	hw4.c:80: hours[2] = 0;
	mov	(_hours + 0x0002),#0x00
;	hw4.c:81: days[0] = '0';
	mov	_days,#0x30
;	hw4.c:82: days[1] = '1';
	mov	(_days + 0x0001),#0x31
;	hw4.c:83: month[0] = '0';
	mov	_month,#0x30
;	hw4.c:84: month[1] = '1';
	mov	(_month + 0x0001),#0x31
;	hw4.c:85: year[0] = '0';
	mov	_year,#0x30
;	hw4.c:86: year[1] = '0';
	mov	(_year + 0x0001),#0x30
;	hw4.c:87: seconds[2] = 0;
	mov	(_seconds + 0x0002),#0x00
;	hw4.c:88: minutes[2] = 0;
	mov	(_minutes + 0x0002),#0x00
;	hw4.c:89: hours[2] = 0;
	mov	(_hours + 0x0002),#0x00
;	hw4.c:92: numDays[0]= 31 ;
	mov	(_numDays + 0),#0x1F
	mov	(_numDays + 1),#0x00
;	hw4.c:93: numDays[1]= 28 ;
	mov	((_numDays + 0x0002) + 0),#0x1C
	mov	((_numDays + 0x0002) + 1),#0x00
;	hw4.c:94: numDays[2]= 31 ;
	mov	((_numDays + 0x0004) + 0),#0x1F
	mov	((_numDays + 0x0004) + 1),#0x00
;	hw4.c:95: numDays[3]= 30 ;
	mov	((_numDays + 0x0006) + 0),#0x1E
	mov	((_numDays + 0x0006) + 1),#0x00
;	hw4.c:96: numDays[4]= 31 ;
	mov	((_numDays + 0x0008) + 0),#0x1F
	mov	((_numDays + 0x0008) + 1),#0x00
;	hw4.c:97: numDays[5]= 30 ;
	mov	((_numDays + 0x000a) + 0),#0x1E
	mov	((_numDays + 0x000a) + 1),#0x00
;	hw4.c:98: numDays[6]= 31 ;
	mov	((_numDays + 0x000c) + 0),#0x1F
	mov	((_numDays + 0x000c) + 1),#0x00
;	hw4.c:99: numDays[7]= 31 ;
	mov	((_numDays + 0x000e) + 0),#0x1F
	mov	((_numDays + 0x000e) + 1),#0x00
;	hw4.c:100: numDays[8]= 30 ;
	mov	((_numDays + 0x0010) + 0),#0x1E
	mov	((_numDays + 0x0010) + 1),#0x00
;	hw4.c:101: numDays[9]= 31 ;
	mov	((_numDays + 0x0012) + 0),#0x1F
	mov	((_numDays + 0x0012) + 1),#0x00
;	hw4.c:102: numDays[10]= 30 ;
	mov	((_numDays + 0x0014) + 0),#0x1E
	mov	((_numDays + 0x0014) + 1),#0x00
;	hw4.c:103: numDays[11]= 31 ;
	mov	((_numDays + 0x0016) + 0),#0x1F
	mov	((_numDays + 0x0016) + 1),#0x00
;	hw4.c:106: IT0 = 1;   // make INT0 to edge triggered
	setb	_IT0
;	hw4.c:107: IT1 = 1;   // make INT1 to edge triggered
	setb	_IT1
;	hw4.c:108: IE = 0x85;  //enable external interupt0	
	mov	_IE,#0x85
;	hw4.c:110: functionSet();
	lcall	_functionSet
;	hw4.c:111: entryModeSet(); // increment and no shift
	lcall	_entryModeSet
;	hw4.c:112: displayOnOffControl(1, 1, 1); // display on, cursor on and blinking on
	setb	_displayOnOffControl_PARM_1
	setb	_displayOnOffControl_PARM_2
	setb	_displayOnOffControl_PARM_3
	lcall	_displayOnOffControl
;	hw4.c:115: setDdRamAddress(0x00); // set address to start of first line
	mov	dpl,#0x00
	lcall	_setDdRamAddress
;	hw4.c:116: sendString(hours);
	mov	dptr,#_hours
	mov	b,#0x40
	lcall	_sendString
;	hw4.c:117: sendChar(':');
	mov	dpl,#0x3A
	lcall	_sendChar
;	hw4.c:118: sendString(minutes);
	mov	dptr,#_minutes
	mov	b,#0x40
	lcall	_sendString
;	hw4.c:119: sendChar(':');
	mov	dpl,#0x3A
	lcall	_sendChar
;	hw4.c:120: sendString(seconds);
	mov	dptr,#_seconds
	mov	b,#0x40
	lcall	_sendString
;	hw4.c:121: setDdRamAddress(0x40); // set address to start of second line
	mov	dpl,#0x40
	lcall	_setDdRamAddress
;	hw4.c:122: sendString(days);
	mov	dptr,#_days
	mov	b,#0x40
	lcall	_sendString
;	hw4.c:123: sendChar('-');
	mov	dpl,#0x2D
	lcall	_sendChar
;	hw4.c:124: sendString(month);
	mov	dptr,#_month
	mov	b,#0x40
	lcall	_sendString
;	hw4.c:125: sendChar('-');
	mov	dpl,#0x2D
	lcall	_sendChar
;	hw4.c:126: sendString(year);
	mov	dptr,#_year
	mov	b,#0x40
	lcall	_sendString
;	hw4.c:128: while (1) {
00130$:
;	hw4.c:132: P1 = ~ seconds[1];
	mov	a,(_seconds + 0x0001)
	cpl	a
	mov	_P1,a
;	hw4.c:133: timer_delay();
	lcall	_timer_delay
;	hw4.c:134: seconds[1]++;
	mov	r7,(_seconds + 0x0001)
	inc	r7
	mov	(_seconds + 0x0001),r7
;	hw4.c:135: if (seconds[1] == 58){
	cjne	r7,#0x3A,00179$
	sjmp	00180$
00179$:
	ljmp	00128$
00180$:
;	hw4.c:136: seconds[1] = '0';
	mov	(_seconds + 0x0001),#0x30
;	hw4.c:137: seconds[0] ++;
	mov	r7,_seconds
	inc	r7
	mov	_seconds,r7
;	hw4.c:138: if(seconds [0] == '6'){
	cjne	r7,#0x36,00181$
	sjmp	00182$
00181$:
	ljmp	00128$
00182$:
;	hw4.c:139: seconds[0] = '0';
	mov	_seconds,#0x30
;	hw4.c:140: minutes[1] ++;
	mov	r7,(_minutes + 0x0001)
	inc	r7
	mov	(_minutes + 0x0001),r7
;	hw4.c:141: if(minutes[1] == 58){
	cjne	r7,#0x3A,00183$
	sjmp	00184$
00183$:
	ljmp	00124$
00184$:
;	hw4.c:142: minutes[1] = '0';
	mov	(_minutes + 0x0001),#0x30
;	hw4.c:143: minutes[0] ++;
	mov	r7,_minutes
	inc	r7
	mov	_minutes,r7
;	hw4.c:144: if(minutes[0] == '6'){
	cjne	r7,#0x36,00185$
	sjmp	00186$
00185$:
	ljmp	00124$
00186$:
;	hw4.c:145: minutes[0] = '0';
	mov	_minutes,#0x30
;	hw4.c:146: hours[1] ++;
	mov	r7,(_hours + 0x0001)
	inc	r7
	mov	(_hours + 0x0001),r7
;	hw4.c:148: if((hours[1] == 58) || (hours[1] == '4' && hours[0] == '2' ) ){
	cjne	r7,#0x3A,00187$
	sjmp	00117$
00187$:
	mov	a,#0x34
	cjne	a,(_hours + 0x0001),00188$
	sjmp	00189$
00188$:
	ljmp	00118$
00189$:
	mov	a,#0x32
	cjne	a,_hours,00190$
	sjmp	00191$
00190$:
	ljmp	00118$
00191$:
00117$:
;	hw4.c:149: hours[1] = '0';
	mov	(_hours + 0x0001),#0x30
;	hw4.c:150: hours[0] ++;
	mov	r7,_hours
	inc	r7
	mov	_hours,r7
;	hw4.c:151: if (hours[0] == '3'){
	cjne	r7,#0x33,00192$
	sjmp	00193$
00192$:
	ljmp	00118$
00193$:
;	hw4.c:152: hours[0] = '0';
	mov	_hours,#0x30
;	hw4.c:154: if (atoi(days) == numDays[atoi(month)-1] ){
	mov	dptr,#_days
	mov	b,#0x40
	lcall	_atoi
	mov	r6,dpl
	mov	r7,dph
	mov	dptr,#_month
	mov	b,#0x40
	push	ar7
	push	ar6
	lcall	_atoi
	mov	r4,dpl
	pop	ar6
	pop	ar7
	dec	r4
	mov	a,r4
	add	a,r4
	add	a,#_numDays
	mov	r1,a
	mov	ar4,@r1
	inc	r1
	mov	ar5,@r1
	dec	r1
	mov	a,r6
	cjne	a,ar4,00194$
	mov	a,r7
	cjne	a,ar5,00194$
	sjmp	00195$
00194$:
	ljmp	00112$
00195$:
;	hw4.c:155: days[1] = '0';
	mov	(_days + 0x0001),#0x30
;	hw4.c:156: days[0] = '0';
	mov	_days,#0x30
;	hw4.c:157: month[1]++;
	mov	r7,(_month + 0x0001)
	inc	r7
	mov	(_month + 0x0001),r7
;	hw4.c:158: if((month[1] == 58) || (month[1] == '3' && month[0] == '1' ) ){
	cjne	r7,#0x3A,00196$
	sjmp	00107$
00196$:
	mov	a,#0x33
	cjne	a,(_month + 0x0001),00108$
	mov	a,#0x31
	cjne	a,_month,00108$
00107$:
;	hw4.c:159: month[1] = '0';
	mov	(_month + 0x0001),#0x30
;	hw4.c:160: month[0] ++;
	mov	r7,_month
	inc	r7
	mov	_month,r7
;	hw4.c:161: if (month[0] == '2'){
	cjne	r7,#0x32,00108$
;	hw4.c:162: month[0] = '0';
	mov	_month,#0x30
;	hw4.c:163: month[1] = '1';
	mov	(_month + 0x0001),#0x31
;	hw4.c:164: year[1] ++;
	mov	r7,(_year + 0x0001)
	inc	r7
	mov	(_year + 0x0001),r7
;	hw4.c:165: if ( year[1] == 58){
	cjne	r7,#0x3A,00104$
;	hw4.c:166: year[1] = '0';
	mov	(_year + 0x0001),#0x30
;	hw4.c:167: year[0] ++;
	mov	r7,_year
	inc	r7
	mov	_year,r7
;	hw4.c:168: if (year[0] == 58){
	cjne	r7,#0x3A,00104$
;	hw4.c:169: year[0] = '0';
	mov	_year,#0x30
00104$:
;	hw4.c:172: setDdRamAddress(0x46); //setting adress to beginning of year
	mov	dpl,#0x46
	lcall	_setDdRamAddress
;	hw4.c:173: sendString(year);
	mov	dptr,#_year
	mov	b,#0x40
	lcall	_sendString
00108$:
;	hw4.c:176: setDdRamAddress(0x43); //setting adress to beginning of months
	mov	dpl,#0x43
	lcall	_setDdRamAddress
;	hw4.c:177: sendString(month);
	mov	dptr,#_month
	mov	b,#0x40
	lcall	_sendString
00112$:
;	hw4.c:179: days[1] ++;
	mov	r7,(_days + 0x0001)
	inc	r7
	mov	(_days + 0x0001),r7
;	hw4.c:180: if ((days[1] == 58) ){
	cjne	r7,#0x3A,00114$
;	hw4.c:181: days[1] = '0';
	mov	(_days + 0x0001),#0x30
;	hw4.c:182: days[0] ++;
	mov	a,_days
	mov	r7,a
	inc	a
	mov	_days,a
00114$:
;	hw4.c:184: setDdRamAddress(0x40); //setting adress to beginning of line 2 (days)
	mov	dpl,#0x40
	lcall	_setDdRamAddress
;	hw4.c:185: sendString(days);
	mov	dptr,#_days
	mov	b,#0x40
	lcall	_sendString
00118$:
;	hw4.c:188: setDdRamAddress(0x00); //setting adress to beginning of line 1 (hours)
	mov	dpl,#0x00
	lcall	_setDdRamAddress
;	hw4.c:189: sendString(hours);		
	mov	dptr,#_hours
	mov	b,#0x40
	lcall	_sendString
00124$:
;	hw4.c:192: setDdRamAddress(0x03); // setting adress to beginning of minutes
	mov	dpl,#0x03
	lcall	_setDdRamAddress
;	hw4.c:193: sendString(minutes);
	mov	dptr,#_minutes
	mov	b,#0x40
	lcall	_sendString
00128$:
;	hw4.c:197: setDdRamAddress(0x06); // setting adress to beggining of seconds
	mov	dpl,#0x06
	lcall	_setDdRamAddress
;	hw4.c:198: sendString(seconds);
	mov	dptr,#_seconds
	mov	b,#0x40
	lcall	_sendString
	ljmp	00130$
;------------------------------------------------------------
;Allocation info for local variables in function 'entryModeSet'
;------------------------------------------------------------
;	hw4.c:202: void entryModeSet() {
;	-----------------------------------------
;	 function entryModeSet
;	-----------------------------------------
_entryModeSet:
;	hw4.c:203: RS = 0;
	clr	_P2_3
;	hw4.c:204: P1 = 0x06;  
	mov	_P1,#0x06
;	hw4.c:205: E = 1;
	setb	_P2_2
;	hw4.c:206: E = 0;
	clr	_P2_2
;	hw4.c:207: delay();
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'setDdRamAddress'
;------------------------------------------------------------
;address                   Allocated to registers r7 
;------------------------------------------------------------
;	hw4.c:210: void setDdRamAddress(char address) {  // Determine the place to place the next character - First LCD location address in 00h for line 1 and 40h for line 2
;	-----------------------------------------
;	 function setDdRamAddress
;	-----------------------------------------
_setDdRamAddress:
	mov	r7,dpl
;	hw4.c:211: RS = 0;
	clr	_P2_3
;	hw4.c:212: P1 = address | 0x80;  // set the MSB to detect that this is an address
	mov	a,#0x80
	orl	a,r7
	mov	_P1,a
;	hw4.c:213: E = 1;
	setb	_P2_2
;	hw4.c:214: E = 0;
	clr	_P2_2
;	hw4.c:215: delay();
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'displayOnOffControl'
;------------------------------------------------------------
;	hw4.c:218: void displayOnOffControl(__bit display, __bit cursor, __bit blinking) {
;	-----------------------------------------
;	 function displayOnOffControl
;	-----------------------------------------
_displayOnOffControl:
;	hw4.c:219: P1_7 = 0;
	clr	_P1_7
;	hw4.c:220: P1_6 = 0;
	clr	_P1_6
;	hw4.c:221: P1_5 = 0;
	clr	_P1_5
;	hw4.c:222: P1_4 = 0;
	clr	_P1_4
;	hw4.c:223: P1_3 = 1;
	setb	_P1_3
;	hw4.c:224: P1_2 = display;
	mov	c,_displayOnOffControl_PARM_1
	mov	_P1_2,c
;	hw4.c:225: P1_1 = cursor;
	mov	c,_displayOnOffControl_PARM_2
	mov	_P1_1,c
;	hw4.c:226: P1_0 = blinking;
	mov	c,_displayOnOffControl_PARM_3
	mov	_P1_0,c
;	hw4.c:227: E = 1;
	setb	_P2_2
;	hw4.c:228: E = 0;
	clr	_P2_2
;	hw4.c:229: delay();
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'functionSet'
;------------------------------------------------------------
;	hw4.c:232: void functionSet(void) {
;	-----------------------------------------
;	 function functionSet
;	-----------------------------------------
_functionSet:
;	hw4.c:233: RS = 0;
	clr	_P2_3
;	hw4.c:234: P1 = 0x38; // 8-bit mode, 2 lines LCD
	mov	_P1,#0x38
;	hw4.c:235: E = 1;
	setb	_P2_2
;	hw4.c:236: E = 0;
	clr	_P2_2
;	hw4.c:237: delay();
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'sendChar'
;------------------------------------------------------------
;c                         Allocated to registers r7 
;------------------------------------------------------------
;	hw4.c:240: void sendChar(char c) {  // Function to send one character to be displayed on the LCD
;	-----------------------------------------
;	 function sendChar
;	-----------------------------------------
_sendChar:
	mov	r7,dpl
;	hw4.c:241: RS = 1;
	setb	_P2_3
;	hw4.c:242: P1 = c;
	mov	_P1,r7
;	hw4.c:243: E = 1;
	setb	_P2_2
;	hw4.c:244: E = 0;
	clr	_P2_2
;	hw4.c:245: delay();
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'sendString'
;------------------------------------------------------------
;str                       Allocated to registers 
;c                         Allocated to registers r3 
;------------------------------------------------------------
;	hw4.c:248: void sendString(char* str) {  // Function to send a string of characters to be displayed on the lCD
;	-----------------------------------------
;	 function sendString
;	-----------------------------------------
_sendString:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	hw4.c:250: while (c = *str++) {
00101$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	mov	r5,dpl
	mov	r6,dph
	mov	a,r4
	mov	r3,a
	jz	00104$
;	hw4.c:251: sendChar(c);
	mov	dpl,r3
	push	ar7
	push	ar6
	push	ar5
	lcall	_sendChar
	pop	ar5
	pop	ar6
	pop	ar7
	sjmp	00101$
00104$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delay'
;------------------------------------------------------------
;c                         Allocated to registers r7 
;------------------------------------------------------------
;	hw4.c:255: void delay(void) {
;	-----------------------------------------
;	 function delay
;	-----------------------------------------
_delay:
;	hw4.c:257: for (c = 0; c < 50; c++);
	mov	r7,#0x32
00104$:
	mov	a,r7
	dec	a
	mov	r6,a
	mov	r7,a
	jnz	00104$
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'big_delay'
;------------------------------------------------------------
;c                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	hw4.c:260: void big_delay(void) {
;	-----------------------------------------
;	 function big_delay
;	-----------------------------------------
_big_delay:
;	hw4.c:262: for (c = 0; c < 755; c++);
	mov	r6,#0xF3
	mov	r7,#0x02
00104$:
	mov	a,r6
	add	a,#0xFF
	mov	r4,a
	mov	a,r7
	addc	a,#0xFF
	mov	r5,a
	mov	ar6,r4
	mov	ar7,r5
	mov	a,r4
	orl	a,r5
	jnz	00104$
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'timer_delay'
;------------------------------------------------------------
;a                         Allocated to registers r7 
;------------------------------------------------------------
;	hw4.c:265: void timer_delay(void){
;	-----------------------------------------
;	 function timer_delay
;	-----------------------------------------
_timer_delay:
;	hw4.c:268: TMOD = 0x01;
	mov	_TMOD,#0x01
;	hw4.c:269: while (a != 0){
	mov	r7,#0x01
00104$:
	mov	a,r7
	jz	00107$
;	hw4.c:270: TL0 = 0xAF;
	mov	_TL0,#0xAF
;	hw4.c:271: TH0 = 0x3C;
	mov	_TH0,#0x3C
;	hw4.c:272: TR0 = 1;
	setb	_TR0
;	hw4.c:273: while (!TF0) ;
00101$:
	jnb	_TF0,00101$
;	hw4.c:274: TR0 = 0;
	clr	_TR0
;	hw4.c:275: TF0 = 0;
	clr	_TF0
;	hw4.c:276: a = a-1;
	dec	r7
	sjmp	00104$
00107$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '_sdcc_gsinit_startup'
;------------------------------------------------------------
;	hw4.c:283: void _sdcc_gsinit_startup(void) {
;	-----------------------------------------
;	 function _sdcc_gsinit_startup
;	-----------------------------------------
__sdcc_gsinit_startup:
;	hw4.c:287: __endasm;
	mov sp, #0x5F
;	hw4.c:288: main();
	ljmp	_main
;------------------------------------------------------------
;Allocation info for local variables in function 'int0_isr'
;------------------------------------------------------------
;	hw4.c:291: void int0_isr (void) __interrupt (0) __using (1){
;	-----------------------------------------
;	 function int0_isr
;	-----------------------------------------
_int0_isr:
	ar7 = 0x0F
	ar6 = 0x0E
	ar5 = 0x0D
	ar4 = 0x0C
	ar3 = 0x0B
	ar2 = 0x0A
	ar1 = 0x09
	ar0 = 0x08
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+7)
	push	(0+6)
	push	(0+5)
	push	(0+4)
	push	(0+3)
	push	(0+2)
	push	(0+1)
	push	(0+0)
	push	psw
	mov	psw,#0x08
;	hw4.c:292: position = 0;
	clr	a
	mov	_position,a
	mov	(_position + 1),a
;	hw4.c:293: setDdRamAddress(position);
	mov	dpl,#0x00
	mov	psw,#0x00
	lcall	_setDdRamAddress
	mov	psw,#0x08
;	hw4.c:294: while (P3_2 == 0){
00101$:
	jb	_P3_2,00104$
;	hw4.c:295: timeMode();
	mov	psw,#0x00
	lcall	_timeMode
	mov	psw,#0x08
	sjmp	00101$
00104$:
	pop	psw
	pop	(0+0)
	pop	(0+1)
	pop	(0+2)
	pop	(0+3)
	pop	(0+4)
	pop	(0+5)
	pop	(0+6)
	pop	(0+7)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'int2_isr'
;------------------------------------------------------------
;	hw4.c:299: void int2_isr (void) __interrupt (2) __using (1){
;	-----------------------------------------
;	 function int2_isr
;	-----------------------------------------
_int2_isr:
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+7)
	push	(0+6)
	push	(0+5)
	push	(0+4)
	push	(0+3)
	push	(0+2)
	push	(0+1)
	push	(0+0)
	push	psw
	mov	psw,#0x08
;	hw4.c:300: position = 40;
	mov	_position,#0x28
	mov	(_position + 1),#0x00
;	hw4.c:301: setDdRamAddress(position);
	mov	dpl,#0x28
	mov	psw,#0x00
	lcall	_setDdRamAddress
	mov	psw,#0x08
;	hw4.c:302: while (P3_3 == 0){
00101$:
	jb	_P3_3,00104$
;	hw4.c:303: dateMode();
	mov	psw,#0x00
	lcall	_dateMode
	mov	psw,#0x08
	sjmp	00101$
00104$:
	pop	psw
	pop	(0+0)
	pop	(0+1)
	pop	(0+2)
	pop	(0+3)
	pop	(0+4)
	pop	(0+5)
	pop	(0+6)
	pop	(0+7)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'timeMode'
;------------------------------------------------------------
;row                       Allocated to registers r7 
;col                       Allocated to registers r4 
;i                         Allocated to registers r6 
;gotkey                    Allocated to registers r2 
;------------------------------------------------------------
;	hw4.c:307: void timeMode(void){
;	-----------------------------------------
;	 function timeMode
;	-----------------------------------------
_timeMode:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	hw4.c:319: row = 0xf7;  // The first row (connected to P0.3) will be zero
	mov	r7,#0xF7
;	hw4.c:320: for (i=0;i<4;++i){ // loop over the 4 rows
	mov	r6,#0x00
	mov	r5,#0x00
00128$:
;	hw4.c:322: P0 = 0xff;     // Initialize the 4 rows to '1' and set the column ports to inputs
	mov	_P0,#0xFF
;	hw4.c:323: P0 = P0 & row; // clear one row at a time
	mov	a,r7
	anl	_P0,a
;	hw4.c:324: col = P0 & 0x70;  // Read the 3 columns
	mov	a,#0x70
	anl	a,_P0
	mov	r4,a
;	hw4.c:326: if (col != 0x70){ // If any column is zero i.e. a key is pressed
	cjne	r4,#0x70,00171$
	ljmp	00126$
00171$:
;	hw4.c:327: col = (~col) & 0x70;  // because the selected column returns zero
	mov	a,r4
	cpl	a
	mov	r3,a
	mov	a,#0x70
	anl	a,r3
;	hw4.c:328: col = col >> 5;       // The column variable now contain the number of the selected column
	swap	a
	rr	a
	anl	a,#0x07
	mov	r4,a
;	hw4.c:331: if (i == 3 && col == 0 ){
	clr	a
	cjne	r6,#0x03,00172$
	inc	a
00172$:
	mov	r3,a
	jz	00110$
	mov	a,r4
	jnz	00110$
;	hw4.c:332: gotkey = '#';
	mov	r2,#0x23
	sjmp	00111$
00110$:
;	hw4.c:334: else if (i == 3 && col == 2){
	mov	a,r3
	jz	00106$
	cjne	r4,#0x02,00106$
;	hw4.c:335: gotkey = '*';
	mov	r2,#0x2A
	sjmp	00111$
00106$:
;	hw4.c:337: else if (i == 3 && col == 1){
	mov	a,r3
	jz	00102$
	cjne	r4,#0x01,00102$
;	hw4.c:338: gotkey = '0';
	mov	r2,#0x30
	sjmp	00111$
00102$:
;	hw4.c:343: gotkey = (3*(i+1) - col) + 48 ;
	mov	a,r6
	inc	a
	mov	b,#0x03
	mul	ab
	clr	c
	subb	a,r4
	add	a,#0x30
	mov	r2,a
00111$:
;	hw4.c:348: big_delay();
	push	ar2
	lcall	_big_delay
	pop	ar2
;	hw4.c:349: if (gotkey == '#'){
	cjne	r2,#0x23,00123$
;	hw4.c:350: position++;
	inc	_position
	clr	a
	cjne	a,_position,00184$
	inc	(_position + 1)
00184$:
;	hw4.c:351: if (position == 8){
	mov	a,#0x08
	cjne	a,_position,00185$
	clr	a
	cjne	a,(_position + 1),00185$
	sjmp	00186$
00185$:
	sjmp	00114$
00186$:
;	hw4.c:352: position = 0;
	clr	a
	mov	_position,a
	mov	(_position + 1),a
00114$:
;	hw4.c:354: setDdRamAddress(position);// moving cursor to right
	mov	dpl,_position
	ljmp	_setDdRamAddress
00123$:
;	hw4.c:356: else if (gotkey == '*'){
	cjne	r2,#0x2A,00120$
;	hw4.c:357: position--;
	dec	_position
	mov	a,#0xFF
	cjne	a,_position,00189$
	dec	(_position + 1)
00189$:
;	hw4.c:358: if (position == -1){
	mov	a,#0xFF
	cjne	a,_position,00116$
	mov	a,#0xFF
	cjne	a,(_position + 1),00116$
;	hw4.c:359: position = 7;
	mov	_position,#0x07
	mov	(_position + 1),#0x00
00116$:
;	hw4.c:361: setDdRamAddress(position);// moving cursor to left
	mov	dpl,_position
	ljmp	_setDdRamAddress
00120$:
;	hw4.c:364: updateTime(gotkey);
	mov	dpl,r2
	lcall	_updateTime
;	hw4.c:365: position++;
	inc	_position
	clr	a
	cjne	a,_position,00192$
	inc	(_position + 1)
00192$:
;	hw4.c:366: if (position == 8){
	mov	a,#0x08
	cjne	a,_position,00193$
	clr	a
	cjne	a,(_position + 1),00193$
	sjmp	00194$
00193$:
	ret
00194$:
;	hw4.c:367: position = 0;
	clr	a
	mov	_position,a
	mov	(_position + 1),a
;	hw4.c:368: setDdRamAddress(position);
	mov	dpl,#0x00
;	hw4.c:371: break;  // Since a key was detected -> Exit the for loop
	ljmp	_setDdRamAddress
00126$:
;	hw4.c:373: row = row >> 1;   // No key is detected yet, try the next row
	mov	a,r7
	clr	c
	rrc	a
	mov	r7,a
;	hw4.c:374: row = row | 0xf0; // Only one of the least 4 significant bits is '0' at a time 
	orl	ar7,#0xF0
;	hw4.c:320: for (i=0;i<4;++i){ // loop over the 4 rows
	inc	r5
	mov	ar6,r5
	cjne	r5,#0x04,00195$
00195$:
	jnc	00196$
	ljmp	00128$
00196$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'dateMode'
;------------------------------------------------------------
;row                       Allocated to registers r7 
;col                       Allocated to registers r4 
;i                         Allocated to registers r6 
;gotkey                    Allocated to registers r2 
;------------------------------------------------------------
;	hw4.c:378: void dateMode(void){
;	-----------------------------------------
;	 function dateMode
;	-----------------------------------------
_dateMode:
;	hw4.c:383: row = 0xf7;  // The first row (connected to P0.3) will be zero
	mov	r7,#0xF7
;	hw4.c:384: for (i=0;i<4;++i){ // loop over the 4 rows
	mov	r6,#0x00
	mov	r5,#0x00
00128$:
;	hw4.c:386: P0 = 0xff;     // Initialize the 4 rows to '1' and set the column ports to inputs
	mov	_P0,#0xFF
;	hw4.c:387: P0 = P0 & row; // clear one row at a time
	mov	a,r7
	anl	_P0,a
;	hw4.c:388: col = P0 & 0x70;  // Read the 3 columns
	mov	a,#0x70
	anl	a,_P0
	mov	r4,a
;	hw4.c:390: if (col != 0x70){ // If any column is zero i.e. a key is pressed
	cjne	r4,#0x70,00171$
	ljmp	00126$
00171$:
;	hw4.c:391: col = (~col) & 0x70;  // because the selected column returns zero
	mov	a,r4
	cpl	a
	mov	r3,a
	mov	a,#0x70
	anl	a,r3
;	hw4.c:392: col = col >> 5;       // The column variable now contain the number of the selected column
	swap	a
	rr	a
	anl	a,#0x07
	mov	r4,a
;	hw4.c:395: if (i == 3 && col == 0 ){
	clr	a
	cjne	r6,#0x03,00172$
	inc	a
00172$:
	mov	r3,a
	jz	00110$
	mov	a,r4
	jnz	00110$
;	hw4.c:396: gotkey = '#';
	mov	r2,#0x23
	sjmp	00111$
00110$:
;	hw4.c:398: else if (i == 3 && col == 2){
	mov	a,r3
	jz	00106$
	cjne	r4,#0x02,00106$
;	hw4.c:399: gotkey = '*';
	mov	r2,#0x2A
	sjmp	00111$
00106$:
;	hw4.c:401: else if (i == 3 && col == 1){
	mov	a,r3
	jz	00102$
	cjne	r4,#0x01,00102$
;	hw4.c:402: gotkey = '0';
	mov	r2,#0x30
	sjmp	00111$
00102$:
;	hw4.c:407: gotkey = (3*(i+1) - col) + 48 ;
	mov	a,r6
	inc	a
	mov	b,#0x03
	mul	ab
	clr	c
	subb	a,r4
	add	a,#0x30
	mov	r2,a
00111$:
;	hw4.c:409: big_delay();
	push	ar2
	lcall	_big_delay
	pop	ar2
;	hw4.c:410: if (gotkey == '#'){
	cjne	r2,#0x23,00123$
;	hw4.c:411: position++;
	inc	_position
	clr	a
	cjne	a,_position,00184$
	inc	(_position + 1)
00184$:
;	hw4.c:412: if (position == 48){
	mov	a,#0x30
	cjne	a,_position,00185$
	clr	a
	cjne	a,(_position + 1),00185$
	sjmp	00186$
00185$:
	sjmp	00114$
00186$:
;	hw4.c:413: position = 40;
	mov	_position,#0x28
	mov	(_position + 1),#0x00
00114$:
;	hw4.c:415: setDdRamAddress(position);// moving cursor to right
	mov	dpl,_position
	ljmp	_setDdRamAddress
00123$:
;	hw4.c:417: else if (gotkey == '*'){
	cjne	r2,#0x2A,00120$
;	hw4.c:418: position--;
	dec	_position
	mov	a,#0xFF
	cjne	a,_position,00189$
	dec	(_position + 1)
00189$:
;	hw4.c:419: if (position == 39){
	mov	a,#0x27
	cjne	a,_position,00190$
	clr	a
	cjne	a,(_position + 1),00190$
	sjmp	00191$
00190$:
	sjmp	00116$
00191$:
;	hw4.c:420: position = 47;
	mov	_position,#0x2F
	mov	(_position + 1),#0x00
00116$:
;	hw4.c:422: setDdRamAddress(position);// moving cursor to left
	mov	dpl,_position
	ljmp	_setDdRamAddress
00120$:
;	hw4.c:425: updateDate(gotkey);
	mov	dpl,r2
	lcall	_updateDate
;	hw4.c:426: position++;
	inc	_position
	clr	a
	cjne	a,_position,00192$
	inc	(_position + 1)
00192$:
;	hw4.c:427: if (position == 48){
	mov	a,#0x30
	cjne	a,_position,00193$
	clr	a
	cjne	a,(_position + 1),00193$
	sjmp	00194$
00193$:
	ret
00194$:
;	hw4.c:428: position = 40;
	mov	_position,#0x28
	mov	(_position + 1),#0x00
;	hw4.c:429: setDdRamAddress(position);
	mov	dpl,#0x28
;	hw4.c:432: break;  // Since a key was detected -> Exit the for loop
	ljmp	_setDdRamAddress
00126$:
;	hw4.c:434: row = row >> 1;   // No key is detected yet, try the next row
	mov	a,r7
	clr	c
	rrc	a
	mov	r7,a
;	hw4.c:435: row = row | 0xf0; // Only one of the least 4 significant bits is '0' at a time 
	orl	ar7,#0xF0
;	hw4.c:384: for (i=0;i<4;++i){ // loop over the 4 rows
	inc	r5
	mov	ar6,r5
	cjne	r5,#0x04,00195$
00195$:
	jnc	00196$
	ljmp	00128$
00196$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'updateTime'
;------------------------------------------------------------
;new                       Allocated to registers r7 
;------------------------------------------------------------
;	hw4.c:441: void updateTime(char new){
;	-----------------------------------------
;	 function updateTime
;	-----------------------------------------
_updateTime:
	mov	r7,dpl
;	hw4.c:443: if(position ==  0|| position == 1){
	mov	a,_position
	orl	a,(_position + 1)
	jz	00129$
	mov	a,#0x01
	cjne	a,_position,00172$
	clr	a
	cjne	a,(_position + 1),00172$
	sjmp	00173$
00172$:
	sjmp	00130$
00173$:
00129$:
;	hw4.c:444: if (position == 0){
	mov	a,_position
	orl	a,(_position + 1)
	jnz	00109$
;	hw4.c:446: if (new > '2' || (new == '2' && hours[1] >'3') ) {
	clr	c
	mov	a,#(0x32 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jc	00101$
	cjne	r7,#0x32,00102$
	mov	a,(_hours + 0x0001)
	add	a,#0xff - 0x33
	jnc	00102$
00101$:
;	hw4.c:447: position --;
	dec	_position
	mov	a,#0xFF
	cjne	a,_position,00179$
	dec	(_position + 1)
00179$:
;	hw4.c:448: return;
	ret
00102$:
;	hw4.c:450: hours[0] = new;
	mov	_hours,r7
	ljmp	00131$
00109$:
;	hw4.c:454: if(hours[0] == '2' && new > '3'){
	mov	a,#0x32
	cjne	a,_hours,00106$
	clr	c
	mov	a,#(0x33 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00106$
;	hw4.c:455: position --;
	dec	_position
	mov	a,#0xFF
	cjne	a,_position,00183$
	dec	(_position + 1)
00183$:
;	hw4.c:456: return;
	ret
00106$:
;	hw4.c:458: hours[1] = new;
	mov	(_hours + 0x0001),r7
	ljmp	00131$
00130$:
;	hw4.c:462: else if (position == 3 || position == 4){
	mov	a,#0x03
	cjne	a,_position,00184$
	clr	a
	cjne	a,(_position + 1),00184$
	mov	a,#0x01
	sjmp	00185$
00184$:
	clr	a
00185$:
	mov	r6,a
	jnz	00125$
	mov	a,#0x04
	cjne	a,_position,00187$
	clr	a
	cjne	a,(_position + 1),00187$
	sjmp	00188$
00187$:
	sjmp	00126$
00188$:
00125$:
;	hw4.c:463: if (position == 3){
	mov	a,r6
	jz	00114$
;	hw4.c:465: if (new > '5'){
	clr	c
	mov	a,#(0x35 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00112$
;	hw4.c:466: position --;
	dec	_position
	mov	a,#0xFF
	cjne	a,_position,00191$
	dec	(_position + 1)
00191$:
;	hw4.c:467: return;
	ret
00112$:
;	hw4.c:469: minutes[0] = new;
	mov	_minutes,r7
	sjmp	00131$
00114$:
;	hw4.c:472: minutes[1] = new;
	mov	(_minutes + 0x0001),r7
	sjmp	00131$
00126$:
;	hw4.c:476: else if (position == 6 || position == 7){
	mov	a,#0x06
	cjne	a,_position,00192$
	clr	a
	cjne	a,(_position + 1),00192$
	mov	a,#0x01
	sjmp	00193$
00192$:
	clr	a
00193$:
	mov	r6,a
	jnz	00121$
	mov	a,#0x07
	cjne	a,_position,00195$
	clr	a
	cjne	a,(_position + 1),00195$
	sjmp	00196$
00195$:
	sjmp	00122$
00196$:
00121$:
;	hw4.c:477: if (position == 6){
	mov	a,r6
	jz	00119$
;	hw4.c:479: if (new > '5'){
	clr	c
	mov	a,#(0x35 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00117$
;	hw4.c:480: position --;
	dec	_position
	mov	a,#0xFF
	cjne	a,_position,00199$
	dec	(_position + 1)
00199$:
;	hw4.c:481: return;
	ret
00117$:
;	hw4.c:483: seconds[0] = new;
	mov	_seconds,r7
	sjmp	00131$
00119$:
;	hw4.c:486: seconds[1] = new;
	mov	(_seconds + 0x0001),r7
	sjmp	00131$
00122$:
;	hw4.c:491: position --;
	dec	_position
	mov	a,#0xFF
	cjne	a,_position,00200$
	dec	(_position + 1)
00200$:
;	hw4.c:492: return;
	ret
00131$:
;	hw4.c:494: sendChar(new);
	mov	dpl,r7
	ljmp	_sendChar
;------------------------------------------------------------
;Allocation info for local variables in function 'updateDate'
;------------------------------------------------------------
;new                       Allocated to registers r7 
;temp                      Allocated to registers r5 r6 
;------------------------------------------------------------
;	hw4.c:497: void updateDate(char new){ 
;	-----------------------------------------
;	 function updateDate
;	-----------------------------------------
_updateDate:
	mov	r7,dpl
;	hw4.c:500: if(position ==  40|| position == 41){
	mov	a,#0x28
	cjne	a,_position,00166$
	clr	a
	cjne	a,(_position + 1),00166$
	mov	a,#0x01
	sjmp	00167$
00166$:
	clr	a
00167$:
	mov	r6,a
	jnz	00127$
	mov	a,#0x29
	cjne	a,_position,00169$
	clr	a
	cjne	a,(_position + 1),00169$
	sjmp	00170$
00169$:
	sjmp	00128$
00170$:
00127$:
;	hw4.c:503: if (position == 40){
	mov	a,r6
	jz	00104$
;	hw4.c:504: temp = ((new-48) * 10) + (days[1] -48) ;// new date if accepting user input
	mov	a,r7
	mov	r5,a
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	a,r5
	add	a,#0xD0
	mov	__mulint_PARM_2,a
	mov	a,r6
	addc	a,#0xFF
	mov	(__mulint_PARM_2 + 1),a
	mov	dptr,#0x000A
	push	ar7
	lcall	__mulint
	mov	r5,dpl
	mov	r6,dph
	mov	r3,(_days + 0x0001)
	mov	r4,#0x00
	mov	a,r3
	add	a,#0xD0
	mov	r3,a
	mov	a,r4
	addc	a,#0xFF
	mov	r4,a
	mov	a,r3
	add	a,r5
	mov	r5,a
	mov	a,r4
	addc	a,r6
	mov	r6,a
;	hw4.c:506: if( temp > numDays[atoi(month)-1] ){ // if past max date of currently set month, dont update
	mov	dptr,#_month
	mov	b,#0x40
	push	ar6
	push	ar5
	lcall	_atoi
	mov	r3,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	dec	r3
	mov	a,r3
	add	a,r3
	add	a,#_numDays
	mov	r1,a
	mov	ar3,@r1
	inc	r1
	mov	ar4,@r1
	clr	c
	mov	a,r3
	subb	a,r5
	mov	a,r4
	subb	a,r6
	jnc	00102$
;	hw4.c:507: position --;
	dec	_position
	mov	a,#0xFF
	cjne	a,_position,00173$
	dec	(_position + 1)
00173$:
;	hw4.c:508: return;
	ret
00102$:
;	hw4.c:510: days[0] = new;
	mov	_days,r7
	ljmp	00129$
00104$:
;	hw4.c:526: days[1] = new;
	mov	(_days + 0x0001),r7
	ljmp	00129$
00128$:
;	hw4.c:533: else if (position == 43 || position == 44){
	mov	a,#0x2B
	cjne	a,_position,00174$
	clr	a
	cjne	a,(_position + 1),00174$
	mov	a,#0x01
	sjmp	00175$
00174$:
	clr	a
00175$:
	mov	r6,a
	jnz	00123$
	mov	a,#0x2C
	cjne	a,_position,00177$
	clr	a
	cjne	a,(_position + 1),00177$
	sjmp	00178$
00177$:
	sjmp	00124$
00178$:
00123$:
;	hw4.c:534: if (position == 43){
	mov	a,r6
	jz	00114$
;	hw4.c:536: if(new > '1' || (new == '1' && month[1] > '2') ){
	clr	c
	mov	a,#(0x31 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jc	00106$
	cjne	r7,#0x31,00107$
	mov	a,(_month + 0x0001)
	add	a,#0xff - 0x32
	jnc	00107$
00106$:
;	hw4.c:537: position --;
	dec	_position
	mov	a,#0xFF
	cjne	a,_position,00184$
	dec	(_position + 1)
00184$:
;	hw4.c:538: return;
	ret
00107$:
;	hw4.c:540: month[0] = new;
	mov	_month,r7
	sjmp	00129$
00114$:
;	hw4.c:544: if(month[0] == '1' && new > '2'){
	mov	a,#0x31
	cjne	a,_month,00111$
	clr	c
	mov	a,#(0x32 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00111$
;	hw4.c:545: position --;
	dec	_position
	mov	a,#0xFF
	cjne	a,_position,00188$
	dec	(_position + 1)
00188$:
;	hw4.c:546: return;
	ret
00111$:
;	hw4.c:548: month[1] = new;
	mov	(_month + 0x0001),r7
	sjmp	00129$
00124$:
;	hw4.c:552: else if (position == 46 || position == 47){
	mov	a,#0x2E
	cjne	a,_position,00189$
	clr	a
	cjne	a,(_position + 1),00189$
	mov	a,#0x01
	sjmp	00190$
00189$:
	clr	a
00190$:
	mov	r6,a
	jnz	00119$
	mov	a,#0x2F
	cjne	a,_position,00192$
	clr	a
	cjne	a,(_position + 1),00192$
	sjmp	00193$
00192$:
	sjmp	00120$
00193$:
00119$:
;	hw4.c:553: if (position == 46){
	mov	a,r6
	jz	00117$
;	hw4.c:554: year[0] = new;
	mov	_year,r7
	sjmp	00129$
00117$:
;	hw4.c:557: year[1] = new;
	mov	(_year + 0x0001),r7
	sjmp	00129$
00120$:
;	hw4.c:562: position --;
	dec	_position
	mov	a,#0xFF
	cjne	a,_position,00195$
	dec	(_position + 1)
00195$:
;	hw4.c:563: return;
	ret
00129$:
;	hw4.c:565: sendChar(new);
	mov	dpl,r7
	ljmp	_sendChar
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
