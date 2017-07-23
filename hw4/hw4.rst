                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.5.0 #9253 (Jun 20 2015) (MINGW64)
                                      4 ; This file was generated Thu May 19 23:50:04 2016
                                      5 ;--------------------------------------------------------
                                      6 	.module hw4
                                      7 	.optsdcc -mmcs51 --model-small
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl _int2_isr
                                     13 	.globl _int0_isr
                                     14 	.globl __sdcc_gsinit_startup
                                     15 	.globl _main
                                     16 	.globl _atoi
                                     17 	.globl _CY
                                     18 	.globl _AC
                                     19 	.globl _F0
                                     20 	.globl _RS1
                                     21 	.globl _RS0
                                     22 	.globl _OV
                                     23 	.globl _F1
                                     24 	.globl _P
                                     25 	.globl _PS
                                     26 	.globl _PT1
                                     27 	.globl _PX1
                                     28 	.globl _PT0
                                     29 	.globl _PX0
                                     30 	.globl _RD
                                     31 	.globl _WR
                                     32 	.globl _T1
                                     33 	.globl _T0
                                     34 	.globl _INT1
                                     35 	.globl _INT0
                                     36 	.globl _TXD
                                     37 	.globl _RXD
                                     38 	.globl _P3_7
                                     39 	.globl _P3_6
                                     40 	.globl _P3_5
                                     41 	.globl _P3_4
                                     42 	.globl _P3_3
                                     43 	.globl _P3_2
                                     44 	.globl _P3_1
                                     45 	.globl _P3_0
                                     46 	.globl _EA
                                     47 	.globl _ES
                                     48 	.globl _ET1
                                     49 	.globl _EX1
                                     50 	.globl _ET0
                                     51 	.globl _EX0
                                     52 	.globl _P2_7
                                     53 	.globl _P2_6
                                     54 	.globl _P2_5
                                     55 	.globl _P2_4
                                     56 	.globl _P2_3
                                     57 	.globl _P2_2
                                     58 	.globl _P2_1
                                     59 	.globl _P2_0
                                     60 	.globl _SM0
                                     61 	.globl _SM1
                                     62 	.globl _SM2
                                     63 	.globl _REN
                                     64 	.globl _TB8
                                     65 	.globl _RB8
                                     66 	.globl _TI
                                     67 	.globl _RI
                                     68 	.globl _P1_7
                                     69 	.globl _P1_6
                                     70 	.globl _P1_5
                                     71 	.globl _P1_4
                                     72 	.globl _P1_3
                                     73 	.globl _P1_2
                                     74 	.globl _P1_1
                                     75 	.globl _P1_0
                                     76 	.globl _TF1
                                     77 	.globl _TR1
                                     78 	.globl _TF0
                                     79 	.globl _TR0
                                     80 	.globl _IE1
                                     81 	.globl _IT1
                                     82 	.globl _IE0
                                     83 	.globl _IT0
                                     84 	.globl _P0_7
                                     85 	.globl _P0_6
                                     86 	.globl _P0_5
                                     87 	.globl _P0_4
                                     88 	.globl _P0_3
                                     89 	.globl _P0_2
                                     90 	.globl _P0_1
                                     91 	.globl _P0_0
                                     92 	.globl _B
                                     93 	.globl _ACC
                                     94 	.globl _PSW
                                     95 	.globl _IP
                                     96 	.globl _P3
                                     97 	.globl _IE
                                     98 	.globl _P2
                                     99 	.globl _SBUF
                                    100 	.globl _SCON
                                    101 	.globl _P1
                                    102 	.globl _TH1
                                    103 	.globl _TH0
                                    104 	.globl _TL1
                                    105 	.globl _TL0
                                    106 	.globl _TMOD
                                    107 	.globl _TCON
                                    108 	.globl _PCON
                                    109 	.globl _DPH
                                    110 	.globl _DPL
                                    111 	.globl _SP
                                    112 	.globl _P0
                                    113 	.globl _displayOnOffControl_PARM_3
                                    114 	.globl _displayOnOffControl_PARM_2
                                    115 	.globl _displayOnOffControl_PARM_1
                                    116 	.globl _numDays
                                    117 	.globl _year
                                    118 	.globl _month
                                    119 	.globl _days
                                    120 	.globl _hours
                                    121 	.globl _minutes
                                    122 	.globl _seconds
                                    123 	.globl _position
                                    124 	.globl _entryModeSet
                                    125 	.globl _setDdRamAddress
                                    126 	.globl _displayOnOffControl
                                    127 	.globl _functionSet
                                    128 	.globl _sendChar
                                    129 	.globl _sendString
                                    130 	.globl _delay
                                    131 	.globl _big_delay
                                    132 	.globl _timer_delay
                                    133 	.globl _timeMode
                                    134 	.globl _dateMode
                                    135 	.globl _updateTime
                                    136 	.globl _updateDate
                                    137 ;--------------------------------------------------------
                                    138 ; special function registers
                                    139 ;--------------------------------------------------------
                                    140 	.area RSEG    (ABS,DATA)
      000000                        141 	.org 0x0000
                           000080   142 _P0	=	0x0080
                           000081   143 _SP	=	0x0081
                           000082   144 _DPL	=	0x0082
                           000083   145 _DPH	=	0x0083
                           000087   146 _PCON	=	0x0087
                           000088   147 _TCON	=	0x0088
                           000089   148 _TMOD	=	0x0089
                           00008A   149 _TL0	=	0x008a
                           00008B   150 _TL1	=	0x008b
                           00008C   151 _TH0	=	0x008c
                           00008D   152 _TH1	=	0x008d
                           000090   153 _P1	=	0x0090
                           000098   154 _SCON	=	0x0098
                           000099   155 _SBUF	=	0x0099
                           0000A0   156 _P2	=	0x00a0
                           0000A8   157 _IE	=	0x00a8
                           0000B0   158 _P3	=	0x00b0
                           0000B8   159 _IP	=	0x00b8
                           0000D0   160 _PSW	=	0x00d0
                           0000E0   161 _ACC	=	0x00e0
                           0000F0   162 _B	=	0x00f0
                                    163 ;--------------------------------------------------------
                                    164 ; special function bits
                                    165 ;--------------------------------------------------------
                                    166 	.area RSEG    (ABS,DATA)
      000000                        167 	.org 0x0000
                           000080   168 _P0_0	=	0x0080
                           000081   169 _P0_1	=	0x0081
                           000082   170 _P0_2	=	0x0082
                           000083   171 _P0_3	=	0x0083
                           000084   172 _P0_4	=	0x0084
                           000085   173 _P0_5	=	0x0085
                           000086   174 _P0_6	=	0x0086
                           000087   175 _P0_7	=	0x0087
                           000088   176 _IT0	=	0x0088
                           000089   177 _IE0	=	0x0089
                           00008A   178 _IT1	=	0x008a
                           00008B   179 _IE1	=	0x008b
                           00008C   180 _TR0	=	0x008c
                           00008D   181 _TF0	=	0x008d
                           00008E   182 _TR1	=	0x008e
                           00008F   183 _TF1	=	0x008f
                           000090   184 _P1_0	=	0x0090
                           000091   185 _P1_1	=	0x0091
                           000092   186 _P1_2	=	0x0092
                           000093   187 _P1_3	=	0x0093
                           000094   188 _P1_4	=	0x0094
                           000095   189 _P1_5	=	0x0095
                           000096   190 _P1_6	=	0x0096
                           000097   191 _P1_7	=	0x0097
                           000098   192 _RI	=	0x0098
                           000099   193 _TI	=	0x0099
                           00009A   194 _RB8	=	0x009a
                           00009B   195 _TB8	=	0x009b
                           00009C   196 _REN	=	0x009c
                           00009D   197 _SM2	=	0x009d
                           00009E   198 _SM1	=	0x009e
                           00009F   199 _SM0	=	0x009f
                           0000A0   200 _P2_0	=	0x00a0
                           0000A1   201 _P2_1	=	0x00a1
                           0000A2   202 _P2_2	=	0x00a2
                           0000A3   203 _P2_3	=	0x00a3
                           0000A4   204 _P2_4	=	0x00a4
                           0000A5   205 _P2_5	=	0x00a5
                           0000A6   206 _P2_6	=	0x00a6
                           0000A7   207 _P2_7	=	0x00a7
                           0000A8   208 _EX0	=	0x00a8
                           0000A9   209 _ET0	=	0x00a9
                           0000AA   210 _EX1	=	0x00aa
                           0000AB   211 _ET1	=	0x00ab
                           0000AC   212 _ES	=	0x00ac
                           0000AF   213 _EA	=	0x00af
                           0000B0   214 _P3_0	=	0x00b0
                           0000B1   215 _P3_1	=	0x00b1
                           0000B2   216 _P3_2	=	0x00b2
                           0000B3   217 _P3_3	=	0x00b3
                           0000B4   218 _P3_4	=	0x00b4
                           0000B5   219 _P3_5	=	0x00b5
                           0000B6   220 _P3_6	=	0x00b6
                           0000B7   221 _P3_7	=	0x00b7
                           0000B0   222 _RXD	=	0x00b0
                           0000B1   223 _TXD	=	0x00b1
                           0000B2   224 _INT0	=	0x00b2
                           0000B3   225 _INT1	=	0x00b3
                           0000B4   226 _T0	=	0x00b4
                           0000B5   227 _T1	=	0x00b5
                           0000B6   228 _WR	=	0x00b6
                           0000B7   229 _RD	=	0x00b7
                           0000B8   230 _PX0	=	0x00b8
                           0000B9   231 _PT0	=	0x00b9
                           0000BA   232 _PX1	=	0x00ba
                           0000BB   233 _PT1	=	0x00bb
                           0000BC   234 _PS	=	0x00bc
                           0000D0   235 _P	=	0x00d0
                           0000D1   236 _F1	=	0x00d1
                           0000D2   237 _OV	=	0x00d2
                           0000D3   238 _RS0	=	0x00d3
                           0000D4   239 _RS1	=	0x00d4
                           0000D5   240 _F0	=	0x00d5
                           0000D6   241 _AC	=	0x00d6
                           0000D7   242 _CY	=	0x00d7
                                    243 ;--------------------------------------------------------
                                    244 ; overlayable register banks
                                    245 ;--------------------------------------------------------
                                    246 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        247 	.ds 8
                                    248 	.area REG_BANK_1	(REL,OVR,DATA)
      000008                        249 	.ds 8
                                    250 ;--------------------------------------------------------
                                    251 ; overlayable bit register bank
                                    252 ;--------------------------------------------------------
                                    253 	.area BIT_BANK	(REL,OVR,DATA)
      000021                        254 bits:
      000021                        255 	.ds 1
                           008000   256 	b0 = bits[0]
                           008100   257 	b1 = bits[1]
                           008200   258 	b2 = bits[2]
                           008300   259 	b3 = bits[3]
                           008400   260 	b4 = bits[4]
                           008500   261 	b5 = bits[5]
                           008600   262 	b6 = bits[6]
                           008700   263 	b7 = bits[7]
                                    264 ;--------------------------------------------------------
                                    265 ; internal ram data
                                    266 ;--------------------------------------------------------
                                    267 	.area DSEG    (DATA)
      000030                        268 _position::
      000030                        269 	.ds 2
      000032                        270 _seconds::
      000032                        271 	.ds 3
      000035                        272 _minutes::
      000035                        273 	.ds 3
      000038                        274 _hours::
      000038                        275 	.ds 3
      00003B                        276 _days::
      00003B                        277 	.ds 3
      00003E                        278 _month::
      00003E                        279 	.ds 3
      000041                        280 _year::
      000041                        281 	.ds 3
      000044                        282 _numDays::
      000044                        283 	.ds 24
                                    284 ;--------------------------------------------------------
                                    285 ; overlayable items in internal ram 
                                    286 ;--------------------------------------------------------
                                    287 	.area	OSEG    (OVR,DATA)
                                    288 	.area	OSEG    (OVR,DATA)
                                    289 	.area	OSEG    (OVR,DATA)
                                    290 ;--------------------------------------------------------
                                    291 ; Stack segment in internal ram 
                                    292 ;--------------------------------------------------------
                                    293 	.area	SSEG
      000060                        294 __start__stack:
      000060                        295 	.ds	1
                                    296 
                                    297 ;--------------------------------------------------------
                                    298 ; indirectly addressable internal ram data
                                    299 ;--------------------------------------------------------
                                    300 	.area ISEG    (DATA)
                                    301 ;--------------------------------------------------------
                                    302 ; absolute internal ram data
                                    303 ;--------------------------------------------------------
                                    304 	.area IABS    (ABS,DATA)
                                    305 	.area IABS    (ABS,DATA)
                                    306 ;--------------------------------------------------------
                                    307 ; bit data
                                    308 ;--------------------------------------------------------
                                    309 	.area BSEG    (BIT)
      000000                        310 _displayOnOffControl_PARM_1:
      000000                        311 	.ds 1
      000001                        312 _displayOnOffControl_PARM_2:
      000001                        313 	.ds 1
      000002                        314 _displayOnOffControl_PARM_3:
      000002                        315 	.ds 1
                                    316 ;--------------------------------------------------------
                                    317 ; paged external ram data
                                    318 ;--------------------------------------------------------
                                    319 	.area PSEG    (PAG,XDATA)
                                    320 ;--------------------------------------------------------
                                    321 ; external ram data
                                    322 ;--------------------------------------------------------
                                    323 	.area XSEG    (XDATA)
                                    324 ;--------------------------------------------------------
                                    325 ; absolute external ram data
                                    326 ;--------------------------------------------------------
                                    327 	.area XABS    (ABS,XDATA)
                                    328 ;--------------------------------------------------------
                                    329 ; external initialized ram data
                                    330 ;--------------------------------------------------------
                                    331 	.area XISEG   (XDATA)
                                    332 	.area HOME    (CODE)
                                    333 	.area GSINIT0 (CODE)
                                    334 	.area GSINIT1 (CODE)
                                    335 	.area GSINIT2 (CODE)
                                    336 	.area GSINIT3 (CODE)
                                    337 	.area GSINIT4 (CODE)
                                    338 	.area GSINIT5 (CODE)
                                    339 	.area GSINIT  (CODE)
                                    340 	.area GSFINAL (CODE)
                                    341 	.area CSEG    (CODE)
                                    342 ;--------------------------------------------------------
                                    343 ; interrupt vector 
                                    344 ;--------------------------------------------------------
                                    345 	.area HOME    (CODE)
      000000                        346 __interrupt_vect:
      000000 02 03 6F         [24]  347 	ljmp	__sdcc_gsinit_startup
      000003 02 03 75         [24]  348 	ljmp	_int0_isr
      000006                        349 	.ds	5
      00000B 32               [24]  350 	reti
      00000C                        351 	.ds	7
      000013 02 03 D0         [24]  352 	ljmp	_int2_isr
                                    353 ;--------------------------------------------------------
                                    354 ; global & static initialisations
                                    355 ;--------------------------------------------------------
                                    356 	.area HOME    (CODE)
                                    357 	.area GSINIT  (CODE)
                                    358 	.area GSFINAL (CODE)
                                    359 	.area GSINIT  (CODE)
                                    360 	.globl __sdcc_gsinit_startup
                                    361 	.globl __sdcc_program_startup
                                    362 	.globl __start__stack
                                    363 	.globl __mcs51_genXINIT
                                    364 	.globl __mcs51_genXRAMCLEAR
                                    365 	.globl __mcs51_genRAMCLEAR
                                    366 	.area GSFINAL (CODE)
      000065 02 00 16         [24]  367 	ljmp	__sdcc_program_startup
                                    368 ;--------------------------------------------------------
                                    369 ; Home
                                    370 ;--------------------------------------------------------
                                    371 	.area HOME    (CODE)
                                    372 	.area HOME    (CODE)
      000016                        373 __sdcc_program_startup:
      000016 02 00 68         [24]  374 	ljmp	_main
                                    375 ;	return from main will return to caller
                                    376 ;--------------------------------------------------------
                                    377 ; code
                                    378 ;--------------------------------------------------------
                                    379 	.area CSEG    (CODE)
                                    380 ;------------------------------------------------------------
                                    381 ;Allocation info for local variables in function 'main'
                                    382 ;------------------------------------------------------------
                                    383 ;	hw4.c:70: void main(void) {
                                    384 ;	-----------------------------------------
                                    385 ;	 function main
                                    386 ;	-----------------------------------------
      000068                        387 _main:
                           000007   388 	ar7 = 0x07
                           000006   389 	ar6 = 0x06
                           000005   390 	ar5 = 0x05
                           000004   391 	ar4 = 0x04
                           000003   392 	ar3 = 0x03
                           000002   393 	ar2 = 0x02
                           000001   394 	ar1 = 0x01
                           000000   395 	ar0 = 0x00
                                    396 ;	hw4.c:72: seconds[0] = '0';
      000068 75 32 30         [24]  397 	mov	_seconds,#0x30
                                    398 ;	hw4.c:73: seconds[1] = '0';
      00006B 75 33 30         [24]  399 	mov	(_seconds + 0x0001),#0x30
                                    400 ;	hw4.c:74: minutes[0] = '0';
      00006E 75 35 30         [24]  401 	mov	_minutes,#0x30
                                    402 ;	hw4.c:75: minutes[1] = '0';
      000071 75 36 30         [24]  403 	mov	(_minutes + 0x0001),#0x30
                                    404 ;	hw4.c:76: hours[0] = '0';
      000074 75 38 30         [24]  405 	mov	_hours,#0x30
                                    406 ;	hw4.c:77: hours[1] = '0';
      000077 75 39 30         [24]  407 	mov	(_hours + 0x0001),#0x30
                                    408 ;	hw4.c:78: seconds[2] = 0;
      00007A 75 34 00         [24]  409 	mov	(_seconds + 0x0002),#0x00
                                    410 ;	hw4.c:79: minutes[2] = 0;
      00007D 75 37 00         [24]  411 	mov	(_minutes + 0x0002),#0x00
                                    412 ;	hw4.c:80: hours[2] = 0;
      000080 75 3A 00         [24]  413 	mov	(_hours + 0x0002),#0x00
                                    414 ;	hw4.c:81: days[0] = '0';
      000083 75 3B 30         [24]  415 	mov	_days,#0x30
                                    416 ;	hw4.c:82: days[1] = '1';
      000086 75 3C 31         [24]  417 	mov	(_days + 0x0001),#0x31
                                    418 ;	hw4.c:83: month[0] = '0';
      000089 75 3E 30         [24]  419 	mov	_month,#0x30
                                    420 ;	hw4.c:84: month[1] = '1';
      00008C 75 3F 31         [24]  421 	mov	(_month + 0x0001),#0x31
                                    422 ;	hw4.c:85: year[0] = '0';
      00008F 75 41 30         [24]  423 	mov	_year,#0x30
                                    424 ;	hw4.c:86: year[1] = '0';
      000092 75 42 30         [24]  425 	mov	(_year + 0x0001),#0x30
                                    426 ;	hw4.c:87: seconds[2] = 0;
      000095 75 34 00         [24]  427 	mov	(_seconds + 0x0002),#0x00
                                    428 ;	hw4.c:88: minutes[2] = 0;
      000098 75 37 00         [24]  429 	mov	(_minutes + 0x0002),#0x00
                                    430 ;	hw4.c:89: hours[2] = 0;
      00009B 75 3A 00         [24]  431 	mov	(_hours + 0x0002),#0x00
                                    432 ;	hw4.c:92: numDays[0]= 31 ;
      00009E 75 44 1F         [24]  433 	mov	(_numDays + 0),#0x1F
      0000A1 75 45 00         [24]  434 	mov	(_numDays + 1),#0x00
                                    435 ;	hw4.c:93: numDays[1]= 28 ;
      0000A4 75 46 1C         [24]  436 	mov	((_numDays + 0x0002) + 0),#0x1C
      0000A7 75 47 00         [24]  437 	mov	((_numDays + 0x0002) + 1),#0x00
                                    438 ;	hw4.c:94: numDays[2]= 31 ;
      0000AA 75 48 1F         [24]  439 	mov	((_numDays + 0x0004) + 0),#0x1F
      0000AD 75 49 00         [24]  440 	mov	((_numDays + 0x0004) + 1),#0x00
                                    441 ;	hw4.c:95: numDays[3]= 30 ;
      0000B0 75 4A 1E         [24]  442 	mov	((_numDays + 0x0006) + 0),#0x1E
      0000B3 75 4B 00         [24]  443 	mov	((_numDays + 0x0006) + 1),#0x00
                                    444 ;	hw4.c:96: numDays[4]= 31 ;
      0000B6 75 4C 1F         [24]  445 	mov	((_numDays + 0x0008) + 0),#0x1F
      0000B9 75 4D 00         [24]  446 	mov	((_numDays + 0x0008) + 1),#0x00
                                    447 ;	hw4.c:97: numDays[5]= 30 ;
      0000BC 75 4E 1E         [24]  448 	mov	((_numDays + 0x000a) + 0),#0x1E
      0000BF 75 4F 00         [24]  449 	mov	((_numDays + 0x000a) + 1),#0x00
                                    450 ;	hw4.c:98: numDays[6]= 31 ;
      0000C2 75 50 1F         [24]  451 	mov	((_numDays + 0x000c) + 0),#0x1F
      0000C5 75 51 00         [24]  452 	mov	((_numDays + 0x000c) + 1),#0x00
                                    453 ;	hw4.c:99: numDays[7]= 31 ;
      0000C8 75 52 1F         [24]  454 	mov	((_numDays + 0x000e) + 0),#0x1F
      0000CB 75 53 00         [24]  455 	mov	((_numDays + 0x000e) + 1),#0x00
                                    456 ;	hw4.c:100: numDays[8]= 30 ;
      0000CE 75 54 1E         [24]  457 	mov	((_numDays + 0x0010) + 0),#0x1E
      0000D1 75 55 00         [24]  458 	mov	((_numDays + 0x0010) + 1),#0x00
                                    459 ;	hw4.c:101: numDays[9]= 31 ;
      0000D4 75 56 1F         [24]  460 	mov	((_numDays + 0x0012) + 0),#0x1F
      0000D7 75 57 00         [24]  461 	mov	((_numDays + 0x0012) + 1),#0x00
                                    462 ;	hw4.c:102: numDays[10]= 30 ;
      0000DA 75 58 1E         [24]  463 	mov	((_numDays + 0x0014) + 0),#0x1E
      0000DD 75 59 00         [24]  464 	mov	((_numDays + 0x0014) + 1),#0x00
                                    465 ;	hw4.c:103: numDays[11]= 31 ;
      0000E0 75 5A 1F         [24]  466 	mov	((_numDays + 0x0016) + 0),#0x1F
      0000E3 75 5B 00         [24]  467 	mov	((_numDays + 0x0016) + 1),#0x00
                                    468 ;	hw4.c:106: IT0 = 1;   // make INT0 to edge triggered
      0000E6 D2 88            [12]  469 	setb	_IT0
                                    470 ;	hw4.c:107: IT1 = 1;   // make INT1 to edge triggered
      0000E8 D2 8A            [12]  471 	setb	_IT1
                                    472 ;	hw4.c:108: IE = 0x85;  //enable external interupt0	
      0000EA 75 A8 85         [24]  473 	mov	_IE,#0x85
                                    474 ;	hw4.c:110: functionSet();
      0000ED 12 02 F0         [24]  475 	lcall	_functionSet
                                    476 ;	hw4.c:111: entryModeSet(); // increment and no shift
      0000F0 12 02 B7         [24]  477 	lcall	_entryModeSet
                                    478 ;	hw4.c:112: displayOnOffControl(1, 1, 1); // display on, cursor on and blinking on
      0000F3 D2 00            [12]  479 	setb	_displayOnOffControl_PARM_1
      0000F5 D2 01            [12]  480 	setb	_displayOnOffControl_PARM_2
      0000F7 D2 02            [12]  481 	setb	_displayOnOffControl_PARM_3
      0000F9 12 02 D3         [24]  482 	lcall	_displayOnOffControl
                                    483 ;	hw4.c:115: setDdRamAddress(0x00); // set address to start of first line
      0000FC 75 82 00         [24]  484 	mov	dpl,#0x00
      0000FF 12 02 C3         [24]  485 	lcall	_setDdRamAddress
                                    486 ;	hw4.c:116: sendString(hours);
      000102 90 00 38         [24]  487 	mov	dptr,#_hours
      000105 75 F0 40         [24]  488 	mov	b,#0x40
      000108 12 03 09         [24]  489 	lcall	_sendString
                                    490 ;	hw4.c:117: sendChar(':');
      00010B 75 82 3A         [24]  491 	mov	dpl,#0x3A
      00010E 12 02 FC         [24]  492 	lcall	_sendChar
                                    493 ;	hw4.c:118: sendString(minutes);
      000111 90 00 35         [24]  494 	mov	dptr,#_minutes
      000114 75 F0 40         [24]  495 	mov	b,#0x40
      000117 12 03 09         [24]  496 	lcall	_sendString
                                    497 ;	hw4.c:119: sendChar(':');
      00011A 75 82 3A         [24]  498 	mov	dpl,#0x3A
      00011D 12 02 FC         [24]  499 	lcall	_sendChar
                                    500 ;	hw4.c:120: sendString(seconds);
      000120 90 00 32         [24]  501 	mov	dptr,#_seconds
      000123 75 F0 40         [24]  502 	mov	b,#0x40
      000126 12 03 09         [24]  503 	lcall	_sendString
                                    504 ;	hw4.c:121: setDdRamAddress(0x40); // set address to start of second line
      000129 75 82 40         [24]  505 	mov	dpl,#0x40
      00012C 12 02 C3         [24]  506 	lcall	_setDdRamAddress
                                    507 ;	hw4.c:122: sendString(days);
      00012F 90 00 3B         [24]  508 	mov	dptr,#_days
      000132 75 F0 40         [24]  509 	mov	b,#0x40
      000135 12 03 09         [24]  510 	lcall	_sendString
                                    511 ;	hw4.c:123: sendChar('-');
      000138 75 82 2D         [24]  512 	mov	dpl,#0x2D
      00013B 12 02 FC         [24]  513 	lcall	_sendChar
                                    514 ;	hw4.c:124: sendString(month);
      00013E 90 00 3E         [24]  515 	mov	dptr,#_month
      000141 75 F0 40         [24]  516 	mov	b,#0x40
      000144 12 03 09         [24]  517 	lcall	_sendString
                                    518 ;	hw4.c:125: sendChar('-');
      000147 75 82 2D         [24]  519 	mov	dpl,#0x2D
      00014A 12 02 FC         [24]  520 	lcall	_sendChar
                                    521 ;	hw4.c:126: sendString(year);
      00014D 90 00 41         [24]  522 	mov	dptr,#_year
      000150 75 F0 40         [24]  523 	mov	b,#0x40
      000153 12 03 09         [24]  524 	lcall	_sendString
                                    525 ;	hw4.c:128: while (1) {
      000156                        526 00130$:
                                    527 ;	hw4.c:132: P1 = ~ seconds[1];
      000156 E5 33            [12]  528 	mov	a,(_seconds + 0x0001)
      000158 F4               [12]  529 	cpl	a
      000159 F5 90            [12]  530 	mov	_P1,a
                                    531 ;	hw4.c:133: timer_delay();
      00015B 12 03 54         [24]  532 	lcall	_timer_delay
                                    533 ;	hw4.c:134: seconds[1]++;
      00015E AF 33            [24]  534 	mov	r7,(_seconds + 0x0001)
      000160 0F               [12]  535 	inc	r7
      000161 8F 33            [24]  536 	mov	(_seconds + 0x0001),r7
                                    537 ;	hw4.c:135: if (seconds[1] == 58){
      000163 BF 3A 02         [24]  538 	cjne	r7,#0x3A,00179$
      000166 80 03            [24]  539 	sjmp	00180$
      000168                        540 00179$:
      000168 02 02 A5         [24]  541 	ljmp	00128$
      00016B                        542 00180$:
                                    543 ;	hw4.c:136: seconds[1] = '0';
      00016B 75 33 30         [24]  544 	mov	(_seconds + 0x0001),#0x30
                                    545 ;	hw4.c:137: seconds[0] ++;
      00016E AF 32            [24]  546 	mov	r7,_seconds
      000170 0F               [12]  547 	inc	r7
      000171 8F 32            [24]  548 	mov	_seconds,r7
                                    549 ;	hw4.c:138: if(seconds [0] == '6'){
      000173 BF 36 02         [24]  550 	cjne	r7,#0x36,00181$
      000176 80 03            [24]  551 	sjmp	00182$
      000178                        552 00181$:
      000178 02 02 A5         [24]  553 	ljmp	00128$
      00017B                        554 00182$:
                                    555 ;	hw4.c:139: seconds[0] = '0';
      00017B 75 32 30         [24]  556 	mov	_seconds,#0x30
                                    557 ;	hw4.c:140: minutes[1] ++;
      00017E AF 36            [24]  558 	mov	r7,(_minutes + 0x0001)
      000180 0F               [12]  559 	inc	r7
      000181 8F 36            [24]  560 	mov	(_minutes + 0x0001),r7
                                    561 ;	hw4.c:141: if(minutes[1] == 58){
      000183 BF 3A 02         [24]  562 	cjne	r7,#0x3A,00183$
      000186 80 03            [24]  563 	sjmp	00184$
      000188                        564 00183$:
      000188 02 02 96         [24]  565 	ljmp	00124$
      00018B                        566 00184$:
                                    567 ;	hw4.c:142: minutes[1] = '0';
      00018B 75 36 30         [24]  568 	mov	(_minutes + 0x0001),#0x30
                                    569 ;	hw4.c:143: minutes[0] ++;
      00018E AF 35            [24]  570 	mov	r7,_minutes
      000190 0F               [12]  571 	inc	r7
      000191 8F 35            [24]  572 	mov	_minutes,r7
                                    573 ;	hw4.c:144: if(minutes[0] == '6'){
      000193 BF 36 02         [24]  574 	cjne	r7,#0x36,00185$
      000196 80 03            [24]  575 	sjmp	00186$
      000198                        576 00185$:
      000198 02 02 96         [24]  577 	ljmp	00124$
      00019B                        578 00186$:
                                    579 ;	hw4.c:145: minutes[0] = '0';
      00019B 75 35 30         [24]  580 	mov	_minutes,#0x30
                                    581 ;	hw4.c:146: hours[1] ++;
      00019E AF 39            [24]  582 	mov	r7,(_hours + 0x0001)
      0001A0 0F               [12]  583 	inc	r7
      0001A1 8F 39            [24]  584 	mov	(_hours + 0x0001),r7
                                    585 ;	hw4.c:148: if((hours[1] == 58) || (hours[1] == '4' && hours[0] == '2' ) ){
      0001A3 BF 3A 02         [24]  586 	cjne	r7,#0x3A,00187$
      0001A6 80 14            [24]  587 	sjmp	00117$
      0001A8                        588 00187$:
      0001A8 74 34            [12]  589 	mov	a,#0x34
      0001AA B5 39 02         [24]  590 	cjne	a,(_hours + 0x0001),00188$
      0001AD 80 03            [24]  591 	sjmp	00189$
      0001AF                        592 00188$:
      0001AF 02 02 87         [24]  593 	ljmp	00118$
      0001B2                        594 00189$:
      0001B2 74 32            [12]  595 	mov	a,#0x32
      0001B4 B5 38 02         [24]  596 	cjne	a,_hours,00190$
      0001B7 80 03            [24]  597 	sjmp	00191$
      0001B9                        598 00190$:
      0001B9 02 02 87         [24]  599 	ljmp	00118$
      0001BC                        600 00191$:
      0001BC                        601 00117$:
                                    602 ;	hw4.c:149: hours[1] = '0';
      0001BC 75 39 30         [24]  603 	mov	(_hours + 0x0001),#0x30
                                    604 ;	hw4.c:150: hours[0] ++;
      0001BF AF 38            [24]  605 	mov	r7,_hours
      0001C1 0F               [12]  606 	inc	r7
      0001C2 8F 38            [24]  607 	mov	_hours,r7
                                    608 ;	hw4.c:151: if (hours[0] == '3'){
      0001C4 BF 33 02         [24]  609 	cjne	r7,#0x33,00192$
      0001C7 80 03            [24]  610 	sjmp	00193$
      0001C9                        611 00192$:
      0001C9 02 02 87         [24]  612 	ljmp	00118$
      0001CC                        613 00193$:
                                    614 ;	hw4.c:152: hours[0] = '0';
      0001CC 75 38 30         [24]  615 	mov	_hours,#0x30
                                    616 ;	hw4.c:154: if (atoi(days) == numDays[atoi(month)-1] ){
      0001CF 90 00 3B         [24]  617 	mov	dptr,#_days
      0001D2 75 F0 40         [24]  618 	mov	b,#0x40
      0001D5 12 07 EA         [24]  619 	lcall	_atoi
      0001D8 AE 82            [24]  620 	mov	r6,dpl
      0001DA AF 83            [24]  621 	mov	r7,dph
      0001DC 90 00 3E         [24]  622 	mov	dptr,#_month
      0001DF 75 F0 40         [24]  623 	mov	b,#0x40
      0001E2 C0 07            [24]  624 	push	ar7
      0001E4 C0 06            [24]  625 	push	ar6
      0001E6 12 07 EA         [24]  626 	lcall	_atoi
      0001E9 AC 82            [24]  627 	mov	r4,dpl
      0001EB D0 06            [24]  628 	pop	ar6
      0001ED D0 07            [24]  629 	pop	ar7
      0001EF 1C               [12]  630 	dec	r4
      0001F0 EC               [12]  631 	mov	a,r4
      0001F1 2C               [12]  632 	add	a,r4
      0001F2 24 44            [12]  633 	add	a,#_numDays
      0001F4 F9               [12]  634 	mov	r1,a
      0001F5 87 04            [24]  635 	mov	ar4,@r1
      0001F7 09               [12]  636 	inc	r1
      0001F8 87 05            [24]  637 	mov	ar5,@r1
      0001FA 19               [12]  638 	dec	r1
      0001FB EE               [12]  639 	mov	a,r6
      0001FC B5 04 06         [24]  640 	cjne	a,ar4,00194$
      0001FF EF               [12]  641 	mov	a,r7
      000200 B5 05 02         [24]  642 	cjne	a,ar5,00194$
      000203 80 03            [24]  643 	sjmp	00195$
      000205                        644 00194$:
      000205 02 02 67         [24]  645 	ljmp	00112$
      000208                        646 00195$:
                                    647 ;	hw4.c:155: days[1] = '0';
      000208 75 3C 30         [24]  648 	mov	(_days + 0x0001),#0x30
                                    649 ;	hw4.c:156: days[0] = '0';
      00020B 75 3B 30         [24]  650 	mov	_days,#0x30
                                    651 ;	hw4.c:157: month[1]++;
      00020E AF 3F            [24]  652 	mov	r7,(_month + 0x0001)
      000210 0F               [12]  653 	inc	r7
      000211 8F 3F            [24]  654 	mov	(_month + 0x0001),r7
                                    655 ;	hw4.c:158: if((month[1] == 58) || (month[1] == '3' && month[0] == '1' ) ){
      000213 BF 3A 02         [24]  656 	cjne	r7,#0x3A,00196$
      000216 80 0A            [24]  657 	sjmp	00107$
      000218                        658 00196$:
      000218 74 33            [12]  659 	mov	a,#0x33
      00021A B5 3F 3B         [24]  660 	cjne	a,(_month + 0x0001),00108$
      00021D 74 31            [12]  661 	mov	a,#0x31
      00021F B5 3E 36         [24]  662 	cjne	a,_month,00108$
      000222                        663 00107$:
                                    664 ;	hw4.c:159: month[1] = '0';
      000222 75 3F 30         [24]  665 	mov	(_month + 0x0001),#0x30
                                    666 ;	hw4.c:160: month[0] ++;
      000225 AF 3E            [24]  667 	mov	r7,_month
      000227 0F               [12]  668 	inc	r7
      000228 8F 3E            [24]  669 	mov	_month,r7
                                    670 ;	hw4.c:161: if (month[0] == '2'){
      00022A BF 32 2B         [24]  671 	cjne	r7,#0x32,00108$
                                    672 ;	hw4.c:162: month[0] = '0';
      00022D 75 3E 30         [24]  673 	mov	_month,#0x30
                                    674 ;	hw4.c:163: month[1] = '1';
      000230 75 3F 31         [24]  675 	mov	(_month + 0x0001),#0x31
                                    676 ;	hw4.c:164: year[1] ++;
      000233 AF 42            [24]  677 	mov	r7,(_year + 0x0001)
      000235 0F               [12]  678 	inc	r7
      000236 8F 42            [24]  679 	mov	(_year + 0x0001),r7
                                    680 ;	hw4.c:165: if ( year[1] == 58){
      000238 BF 3A 0E         [24]  681 	cjne	r7,#0x3A,00104$
                                    682 ;	hw4.c:166: year[1] = '0';
      00023B 75 42 30         [24]  683 	mov	(_year + 0x0001),#0x30
                                    684 ;	hw4.c:167: year[0] ++;
      00023E AF 41            [24]  685 	mov	r7,_year
      000240 0F               [12]  686 	inc	r7
      000241 8F 41            [24]  687 	mov	_year,r7
                                    688 ;	hw4.c:168: if (year[0] == 58){
      000243 BF 3A 03         [24]  689 	cjne	r7,#0x3A,00104$
                                    690 ;	hw4.c:169: year[0] = '0';
      000246 75 41 30         [24]  691 	mov	_year,#0x30
      000249                        692 00104$:
                                    693 ;	hw4.c:172: setDdRamAddress(0x46); //setting adress to beginning of year
      000249 75 82 46         [24]  694 	mov	dpl,#0x46
      00024C 12 02 C3         [24]  695 	lcall	_setDdRamAddress
                                    696 ;	hw4.c:173: sendString(year);
      00024F 90 00 41         [24]  697 	mov	dptr,#_year
      000252 75 F0 40         [24]  698 	mov	b,#0x40
      000255 12 03 09         [24]  699 	lcall	_sendString
      000258                        700 00108$:
                                    701 ;	hw4.c:176: setDdRamAddress(0x43); //setting adress to beginning of months
      000258 75 82 43         [24]  702 	mov	dpl,#0x43
      00025B 12 02 C3         [24]  703 	lcall	_setDdRamAddress
                                    704 ;	hw4.c:177: sendString(month);
      00025E 90 00 3E         [24]  705 	mov	dptr,#_month
      000261 75 F0 40         [24]  706 	mov	b,#0x40
      000264 12 03 09         [24]  707 	lcall	_sendString
      000267                        708 00112$:
                                    709 ;	hw4.c:179: days[1] ++;
      000267 AF 3C            [24]  710 	mov	r7,(_days + 0x0001)
      000269 0F               [12]  711 	inc	r7
      00026A 8F 3C            [24]  712 	mov	(_days + 0x0001),r7
                                    713 ;	hw4.c:180: if ((days[1] == 58) ){
      00026C BF 3A 09         [24]  714 	cjne	r7,#0x3A,00114$
                                    715 ;	hw4.c:181: days[1] = '0';
      00026F 75 3C 30         [24]  716 	mov	(_days + 0x0001),#0x30
                                    717 ;	hw4.c:182: days[0] ++;
      000272 E5 3B            [12]  718 	mov	a,_days
      000274 FF               [12]  719 	mov	r7,a
      000275 04               [12]  720 	inc	a
      000276 F5 3B            [12]  721 	mov	_days,a
      000278                        722 00114$:
                                    723 ;	hw4.c:184: setDdRamAddress(0x40); //setting adress to beginning of line 2 (days)
      000278 75 82 40         [24]  724 	mov	dpl,#0x40
      00027B 12 02 C3         [24]  725 	lcall	_setDdRamAddress
                                    726 ;	hw4.c:185: sendString(days);
      00027E 90 00 3B         [24]  727 	mov	dptr,#_days
      000281 75 F0 40         [24]  728 	mov	b,#0x40
      000284 12 03 09         [24]  729 	lcall	_sendString
      000287                        730 00118$:
                                    731 ;	hw4.c:188: setDdRamAddress(0x00); //setting adress to beginning of line 1 (hours)
      000287 75 82 00         [24]  732 	mov	dpl,#0x00
      00028A 12 02 C3         [24]  733 	lcall	_setDdRamAddress
                                    734 ;	hw4.c:189: sendString(hours);		
      00028D 90 00 38         [24]  735 	mov	dptr,#_hours
      000290 75 F0 40         [24]  736 	mov	b,#0x40
      000293 12 03 09         [24]  737 	lcall	_sendString
      000296                        738 00124$:
                                    739 ;	hw4.c:192: setDdRamAddress(0x03); // setting adress to beginning of minutes
      000296 75 82 03         [24]  740 	mov	dpl,#0x03
      000299 12 02 C3         [24]  741 	lcall	_setDdRamAddress
                                    742 ;	hw4.c:193: sendString(minutes);
      00029C 90 00 35         [24]  743 	mov	dptr,#_minutes
      00029F 75 F0 40         [24]  744 	mov	b,#0x40
      0002A2 12 03 09         [24]  745 	lcall	_sendString
      0002A5                        746 00128$:
                                    747 ;	hw4.c:197: setDdRamAddress(0x06); // setting adress to beggining of seconds
      0002A5 75 82 06         [24]  748 	mov	dpl,#0x06
      0002A8 12 02 C3         [24]  749 	lcall	_setDdRamAddress
                                    750 ;	hw4.c:198: sendString(seconds);
      0002AB 90 00 32         [24]  751 	mov	dptr,#_seconds
      0002AE 75 F0 40         [24]  752 	mov	b,#0x40
      0002B1 12 03 09         [24]  753 	lcall	_sendString
      0002B4 02 01 56         [24]  754 	ljmp	00130$
                                    755 ;------------------------------------------------------------
                                    756 ;Allocation info for local variables in function 'entryModeSet'
                                    757 ;------------------------------------------------------------
                                    758 ;	hw4.c:202: void entryModeSet() {
                                    759 ;	-----------------------------------------
                                    760 ;	 function entryModeSet
                                    761 ;	-----------------------------------------
      0002B7                        762 _entryModeSet:
                                    763 ;	hw4.c:203: RS = 0;
      0002B7 C2 A3            [12]  764 	clr	_P2_3
                                    765 ;	hw4.c:204: P1 = 0x06;  
      0002B9 75 90 06         [24]  766 	mov	_P1,#0x06
                                    767 ;	hw4.c:205: E = 1;
      0002BC D2 A2            [12]  768 	setb	_P2_2
                                    769 ;	hw4.c:206: E = 0;
      0002BE C2 A2            [12]  770 	clr	_P2_2
                                    771 ;	hw4.c:207: delay();
      0002C0 02 03 36         [24]  772 	ljmp	_delay
                                    773 ;------------------------------------------------------------
                                    774 ;Allocation info for local variables in function 'setDdRamAddress'
                                    775 ;------------------------------------------------------------
                                    776 ;address                   Allocated to registers r7 
                                    777 ;------------------------------------------------------------
                                    778 ;	hw4.c:210: void setDdRamAddress(char address) {  // Determine the place to place the next character - First LCD location address in 00h for line 1 and 40h for line 2
                                    779 ;	-----------------------------------------
                                    780 ;	 function setDdRamAddress
                                    781 ;	-----------------------------------------
      0002C3                        782 _setDdRamAddress:
      0002C3 AF 82            [24]  783 	mov	r7,dpl
                                    784 ;	hw4.c:211: RS = 0;
      0002C5 C2 A3            [12]  785 	clr	_P2_3
                                    786 ;	hw4.c:212: P1 = address | 0x80;  // set the MSB to detect that this is an address
      0002C7 74 80            [12]  787 	mov	a,#0x80
      0002C9 4F               [12]  788 	orl	a,r7
      0002CA F5 90            [12]  789 	mov	_P1,a
                                    790 ;	hw4.c:213: E = 1;
      0002CC D2 A2            [12]  791 	setb	_P2_2
                                    792 ;	hw4.c:214: E = 0;
      0002CE C2 A2            [12]  793 	clr	_P2_2
                                    794 ;	hw4.c:215: delay();
      0002D0 02 03 36         [24]  795 	ljmp	_delay
                                    796 ;------------------------------------------------------------
                                    797 ;Allocation info for local variables in function 'displayOnOffControl'
                                    798 ;------------------------------------------------------------
                                    799 ;	hw4.c:218: void displayOnOffControl(__bit display, __bit cursor, __bit blinking) {
                                    800 ;	-----------------------------------------
                                    801 ;	 function displayOnOffControl
                                    802 ;	-----------------------------------------
      0002D3                        803 _displayOnOffControl:
                                    804 ;	hw4.c:219: P1_7 = 0;
      0002D3 C2 97            [12]  805 	clr	_P1_7
                                    806 ;	hw4.c:220: P1_6 = 0;
      0002D5 C2 96            [12]  807 	clr	_P1_6
                                    808 ;	hw4.c:221: P1_5 = 0;
      0002D7 C2 95            [12]  809 	clr	_P1_5
                                    810 ;	hw4.c:222: P1_4 = 0;
      0002D9 C2 94            [12]  811 	clr	_P1_4
                                    812 ;	hw4.c:223: P1_3 = 1;
      0002DB D2 93            [12]  813 	setb	_P1_3
                                    814 ;	hw4.c:224: P1_2 = display;
      0002DD A2 00            [12]  815 	mov	c,_displayOnOffControl_PARM_1
      0002DF 92 92            [24]  816 	mov	_P1_2,c
                                    817 ;	hw4.c:225: P1_1 = cursor;
      0002E1 A2 01            [12]  818 	mov	c,_displayOnOffControl_PARM_2
      0002E3 92 91            [24]  819 	mov	_P1_1,c
                                    820 ;	hw4.c:226: P1_0 = blinking;
      0002E5 A2 02            [12]  821 	mov	c,_displayOnOffControl_PARM_3
      0002E7 92 90            [24]  822 	mov	_P1_0,c
                                    823 ;	hw4.c:227: E = 1;
      0002E9 D2 A2            [12]  824 	setb	_P2_2
                                    825 ;	hw4.c:228: E = 0;
      0002EB C2 A2            [12]  826 	clr	_P2_2
                                    827 ;	hw4.c:229: delay();
      0002ED 02 03 36         [24]  828 	ljmp	_delay
                                    829 ;------------------------------------------------------------
                                    830 ;Allocation info for local variables in function 'functionSet'
                                    831 ;------------------------------------------------------------
                                    832 ;	hw4.c:232: void functionSet(void) {
                                    833 ;	-----------------------------------------
                                    834 ;	 function functionSet
                                    835 ;	-----------------------------------------
      0002F0                        836 _functionSet:
                                    837 ;	hw4.c:233: RS = 0;
      0002F0 C2 A3            [12]  838 	clr	_P2_3
                                    839 ;	hw4.c:234: P1 = 0x38; // 8-bit mode, 2 lines LCD
      0002F2 75 90 38         [24]  840 	mov	_P1,#0x38
                                    841 ;	hw4.c:235: E = 1;
      0002F5 D2 A2            [12]  842 	setb	_P2_2
                                    843 ;	hw4.c:236: E = 0;
      0002F7 C2 A2            [12]  844 	clr	_P2_2
                                    845 ;	hw4.c:237: delay();
      0002F9 02 03 36         [24]  846 	ljmp	_delay
                                    847 ;------------------------------------------------------------
                                    848 ;Allocation info for local variables in function 'sendChar'
                                    849 ;------------------------------------------------------------
                                    850 ;c                         Allocated to registers r7 
                                    851 ;------------------------------------------------------------
                                    852 ;	hw4.c:240: void sendChar(char c) {  // Function to send one character to be displayed on the LCD
                                    853 ;	-----------------------------------------
                                    854 ;	 function sendChar
                                    855 ;	-----------------------------------------
      0002FC                        856 _sendChar:
      0002FC AF 82            [24]  857 	mov	r7,dpl
                                    858 ;	hw4.c:241: RS = 1;
      0002FE D2 A3            [12]  859 	setb	_P2_3
                                    860 ;	hw4.c:242: P1 = c;
      000300 8F 90            [24]  861 	mov	_P1,r7
                                    862 ;	hw4.c:243: E = 1;
      000302 D2 A2            [12]  863 	setb	_P2_2
                                    864 ;	hw4.c:244: E = 0;
      000304 C2 A2            [12]  865 	clr	_P2_2
                                    866 ;	hw4.c:245: delay();
      000306 02 03 36         [24]  867 	ljmp	_delay
                                    868 ;------------------------------------------------------------
                                    869 ;Allocation info for local variables in function 'sendString'
                                    870 ;------------------------------------------------------------
                                    871 ;str                       Allocated to registers 
                                    872 ;c                         Allocated to registers r3 
                                    873 ;------------------------------------------------------------
                                    874 ;	hw4.c:248: void sendString(char* str) {  // Function to send a string of characters to be displayed on the lCD
                                    875 ;	-----------------------------------------
                                    876 ;	 function sendString
                                    877 ;	-----------------------------------------
      000309                        878 _sendString:
      000309 AD 82            [24]  879 	mov	r5,dpl
      00030B AE 83            [24]  880 	mov	r6,dph
      00030D AF F0            [24]  881 	mov	r7,b
                                    882 ;	hw4.c:250: while (c = *str++) {
      00030F                        883 00101$:
      00030F 8D 82            [24]  884 	mov	dpl,r5
      000311 8E 83            [24]  885 	mov	dph,r6
      000313 8F F0            [24]  886 	mov	b,r7
      000315 12 08 CD         [24]  887 	lcall	__gptrget
      000318 FC               [12]  888 	mov	r4,a
      000319 A3               [24]  889 	inc	dptr
      00031A AD 82            [24]  890 	mov	r5,dpl
      00031C AE 83            [24]  891 	mov	r6,dph
      00031E EC               [12]  892 	mov	a,r4
      00031F FB               [12]  893 	mov	r3,a
      000320 60 13            [24]  894 	jz	00104$
                                    895 ;	hw4.c:251: sendChar(c);
      000322 8B 82            [24]  896 	mov	dpl,r3
      000324 C0 07            [24]  897 	push	ar7
      000326 C0 06            [24]  898 	push	ar6
      000328 C0 05            [24]  899 	push	ar5
      00032A 12 02 FC         [24]  900 	lcall	_sendChar
      00032D D0 05            [24]  901 	pop	ar5
      00032F D0 06            [24]  902 	pop	ar6
      000331 D0 07            [24]  903 	pop	ar7
      000333 80 DA            [24]  904 	sjmp	00101$
      000335                        905 00104$:
      000335 22               [24]  906 	ret
                                    907 ;------------------------------------------------------------
                                    908 ;Allocation info for local variables in function 'delay'
                                    909 ;------------------------------------------------------------
                                    910 ;c                         Allocated to registers r7 
                                    911 ;------------------------------------------------------------
                                    912 ;	hw4.c:255: void delay(void) {
                                    913 ;	-----------------------------------------
                                    914 ;	 function delay
                                    915 ;	-----------------------------------------
      000336                        916 _delay:
                                    917 ;	hw4.c:257: for (c = 0; c < 50; c++);
      000336 7F 32            [12]  918 	mov	r7,#0x32
      000338                        919 00104$:
      000338 EF               [12]  920 	mov	a,r7
      000339 14               [12]  921 	dec	a
      00033A FE               [12]  922 	mov	r6,a
      00033B FF               [12]  923 	mov	r7,a
      00033C 70 FA            [24]  924 	jnz	00104$
      00033E 22               [24]  925 	ret
                                    926 ;------------------------------------------------------------
                                    927 ;Allocation info for local variables in function 'big_delay'
                                    928 ;------------------------------------------------------------
                                    929 ;c                         Allocated to registers r6 r7 
                                    930 ;------------------------------------------------------------
                                    931 ;	hw4.c:260: void big_delay(void) {
                                    932 ;	-----------------------------------------
                                    933 ;	 function big_delay
                                    934 ;	-----------------------------------------
      00033F                        935 _big_delay:
                                    936 ;	hw4.c:262: for (c = 0; c < 755; c++);
      00033F 7E F3            [12]  937 	mov	r6,#0xF3
      000341 7F 02            [12]  938 	mov	r7,#0x02
      000343                        939 00104$:
      000343 EE               [12]  940 	mov	a,r6
      000344 24 FF            [12]  941 	add	a,#0xFF
      000346 FC               [12]  942 	mov	r4,a
      000347 EF               [12]  943 	mov	a,r7
      000348 34 FF            [12]  944 	addc	a,#0xFF
      00034A FD               [12]  945 	mov	r5,a
      00034B 8C 06            [24]  946 	mov	ar6,r4
      00034D 8D 07            [24]  947 	mov	ar7,r5
      00034F EC               [12]  948 	mov	a,r4
      000350 4D               [12]  949 	orl	a,r5
      000351 70 F0            [24]  950 	jnz	00104$
      000353 22               [24]  951 	ret
                                    952 ;------------------------------------------------------------
                                    953 ;Allocation info for local variables in function 'timer_delay'
                                    954 ;------------------------------------------------------------
                                    955 ;a                         Allocated to registers r7 
                                    956 ;------------------------------------------------------------
                                    957 ;	hw4.c:265: void timer_delay(void){
                                    958 ;	-----------------------------------------
                                    959 ;	 function timer_delay
                                    960 ;	-----------------------------------------
      000354                        961 _timer_delay:
                                    962 ;	hw4.c:268: TMOD = 0x01;
      000354 75 89 01         [24]  963 	mov	_TMOD,#0x01
                                    964 ;	hw4.c:269: while (a != 0){
      000357 7F 01            [12]  965 	mov	r7,#0x01
      000359                        966 00104$:
      000359 EF               [12]  967 	mov	a,r7
      00035A 60 12            [24]  968 	jz	00107$
                                    969 ;	hw4.c:270: TL0 = 0xAF;
      00035C 75 8A AF         [24]  970 	mov	_TL0,#0xAF
                                    971 ;	hw4.c:271: TH0 = 0x3C;
      00035F 75 8C 3C         [24]  972 	mov	_TH0,#0x3C
                                    973 ;	hw4.c:272: TR0 = 1;
      000362 D2 8C            [12]  974 	setb	_TR0
                                    975 ;	hw4.c:273: while (!TF0) ;
      000364                        976 00101$:
      000364 30 8D FD         [24]  977 	jnb	_TF0,00101$
                                    978 ;	hw4.c:274: TR0 = 0;
      000367 C2 8C            [12]  979 	clr	_TR0
                                    980 ;	hw4.c:275: TF0 = 0;
      000369 C2 8D            [12]  981 	clr	_TF0
                                    982 ;	hw4.c:276: a = a-1;
      00036B 1F               [12]  983 	dec	r7
      00036C 80 EB            [24]  984 	sjmp	00104$
      00036E                        985 00107$:
      00036E 22               [24]  986 	ret
                                    987 ;------------------------------------------------------------
                                    988 ;Allocation info for local variables in function '_sdcc_gsinit_startup'
                                    989 ;------------------------------------------------------------
                                    990 ;	hw4.c:283: void _sdcc_gsinit_startup(void) {
                                    991 ;	-----------------------------------------
                                    992 ;	 function _sdcc_gsinit_startup
                                    993 ;	-----------------------------------------
      00036F                        994 __sdcc_gsinit_startup:
                                    995 ;	hw4.c:287: __endasm;
      00036F 75 81 5F         [24]  996 	mov sp, #0x5F
                                    997 ;	hw4.c:288: main();
      000372 02 00 68         [24]  998 	ljmp	_main
                                    999 ;------------------------------------------------------------
                                   1000 ;Allocation info for local variables in function 'int0_isr'
                                   1001 ;------------------------------------------------------------
                                   1002 ;	hw4.c:291: void int0_isr (void) __interrupt (0) __using (1){
                                   1003 ;	-----------------------------------------
                                   1004 ;	 function int0_isr
                                   1005 ;	-----------------------------------------
      000375                       1006 _int0_isr:
                           00000F  1007 	ar7 = 0x0F
                           00000E  1008 	ar6 = 0x0E
                           00000D  1009 	ar5 = 0x0D
                           00000C  1010 	ar4 = 0x0C
                           00000B  1011 	ar3 = 0x0B
                           00000A  1012 	ar2 = 0x0A
                           000009  1013 	ar1 = 0x09
                           000008  1014 	ar0 = 0x08
      000375 C0 21            [24] 1015 	push	bits
      000377 C0 E0            [24] 1016 	push	acc
      000379 C0 F0            [24] 1017 	push	b
      00037B C0 82            [24] 1018 	push	dpl
      00037D C0 83            [24] 1019 	push	dph
      00037F C0 07            [24] 1020 	push	(0+7)
      000381 C0 06            [24] 1021 	push	(0+6)
      000383 C0 05            [24] 1022 	push	(0+5)
      000385 C0 04            [24] 1023 	push	(0+4)
      000387 C0 03            [24] 1024 	push	(0+3)
      000389 C0 02            [24] 1025 	push	(0+2)
      00038B C0 01            [24] 1026 	push	(0+1)
      00038D C0 00            [24] 1027 	push	(0+0)
      00038F C0 D0            [24] 1028 	push	psw
      000391 75 D0 08         [24] 1029 	mov	psw,#0x08
                                   1030 ;	hw4.c:292: position = 0;
      000394 E4               [12] 1031 	clr	a
      000395 F5 30            [12] 1032 	mov	_position,a
      000397 F5 31            [12] 1033 	mov	(_position + 1),a
                                   1034 ;	hw4.c:293: setDdRamAddress(position);
      000399 75 82 00         [24] 1035 	mov	dpl,#0x00
      00039C 75 D0 00         [24] 1036 	mov	psw,#0x00
      00039F 12 02 C3         [24] 1037 	lcall	_setDdRamAddress
      0003A2 75 D0 08         [24] 1038 	mov	psw,#0x08
                                   1039 ;	hw4.c:294: while (P3_2 == 0){
      0003A5                       1040 00101$:
      0003A5 20 B2 0B         [24] 1041 	jb	_P3_2,00104$
                                   1042 ;	hw4.c:295: timeMode();
      0003A8 75 D0 00         [24] 1043 	mov	psw,#0x00
      0003AB 12 04 2C         [24] 1044 	lcall	_timeMode
      0003AE 75 D0 08         [24] 1045 	mov	psw,#0x08
      0003B1 80 F2            [24] 1046 	sjmp	00101$
      0003B3                       1047 00104$:
      0003B3 D0 D0            [24] 1048 	pop	psw
      0003B5 D0 00            [24] 1049 	pop	(0+0)
      0003B7 D0 01            [24] 1050 	pop	(0+1)
      0003B9 D0 02            [24] 1051 	pop	(0+2)
      0003BB D0 03            [24] 1052 	pop	(0+3)
      0003BD D0 04            [24] 1053 	pop	(0+4)
      0003BF D0 05            [24] 1054 	pop	(0+5)
      0003C1 D0 06            [24] 1055 	pop	(0+6)
      0003C3 D0 07            [24] 1056 	pop	(0+7)
      0003C5 D0 83            [24] 1057 	pop	dph
      0003C7 D0 82            [24] 1058 	pop	dpl
      0003C9 D0 F0            [24] 1059 	pop	b
      0003CB D0 E0            [24] 1060 	pop	acc
      0003CD D0 21            [24] 1061 	pop	bits
      0003CF 32               [24] 1062 	reti
                                   1063 ;------------------------------------------------------------
                                   1064 ;Allocation info for local variables in function 'int2_isr'
                                   1065 ;------------------------------------------------------------
                                   1066 ;	hw4.c:299: void int2_isr (void) __interrupt (2) __using (1){
                                   1067 ;	-----------------------------------------
                                   1068 ;	 function int2_isr
                                   1069 ;	-----------------------------------------
      0003D0                       1070 _int2_isr:
      0003D0 C0 21            [24] 1071 	push	bits
      0003D2 C0 E0            [24] 1072 	push	acc
      0003D4 C0 F0            [24] 1073 	push	b
      0003D6 C0 82            [24] 1074 	push	dpl
      0003D8 C0 83            [24] 1075 	push	dph
      0003DA C0 07            [24] 1076 	push	(0+7)
      0003DC C0 06            [24] 1077 	push	(0+6)
      0003DE C0 05            [24] 1078 	push	(0+5)
      0003E0 C0 04            [24] 1079 	push	(0+4)
      0003E2 C0 03            [24] 1080 	push	(0+3)
      0003E4 C0 02            [24] 1081 	push	(0+2)
      0003E6 C0 01            [24] 1082 	push	(0+1)
      0003E8 C0 00            [24] 1083 	push	(0+0)
      0003EA C0 D0            [24] 1084 	push	psw
      0003EC 75 D0 08         [24] 1085 	mov	psw,#0x08
                                   1086 ;	hw4.c:300: position = 40;
      0003EF 75 30 28         [24] 1087 	mov	_position,#0x28
      0003F2 75 31 00         [24] 1088 	mov	(_position + 1),#0x00
                                   1089 ;	hw4.c:301: setDdRamAddress(position);
      0003F5 75 82 28         [24] 1090 	mov	dpl,#0x28
      0003F8 75 D0 00         [24] 1091 	mov	psw,#0x00
      0003FB 12 02 C3         [24] 1092 	lcall	_setDdRamAddress
      0003FE 75 D0 08         [24] 1093 	mov	psw,#0x08
                                   1094 ;	hw4.c:302: while (P3_3 == 0){
      000401                       1095 00101$:
      000401 20 B3 0B         [24] 1096 	jb	_P3_3,00104$
                                   1097 ;	hw4.c:303: dateMode();
      000404 75 D0 00         [24] 1098 	mov	psw,#0x00
      000407 12 04 FF         [24] 1099 	lcall	_dateMode
      00040A 75 D0 08         [24] 1100 	mov	psw,#0x08
      00040D 80 F2            [24] 1101 	sjmp	00101$
      00040F                       1102 00104$:
      00040F D0 D0            [24] 1103 	pop	psw
      000411 D0 00            [24] 1104 	pop	(0+0)
      000413 D0 01            [24] 1105 	pop	(0+1)
      000415 D0 02            [24] 1106 	pop	(0+2)
      000417 D0 03            [24] 1107 	pop	(0+3)
      000419 D0 04            [24] 1108 	pop	(0+4)
      00041B D0 05            [24] 1109 	pop	(0+5)
      00041D D0 06            [24] 1110 	pop	(0+6)
      00041F D0 07            [24] 1111 	pop	(0+7)
      000421 D0 83            [24] 1112 	pop	dph
      000423 D0 82            [24] 1113 	pop	dpl
      000425 D0 F0            [24] 1114 	pop	b
      000427 D0 E0            [24] 1115 	pop	acc
      000429 D0 21            [24] 1116 	pop	bits
      00042B 32               [24] 1117 	reti
                                   1118 ;------------------------------------------------------------
                                   1119 ;Allocation info for local variables in function 'timeMode'
                                   1120 ;------------------------------------------------------------
                                   1121 ;row                       Allocated to registers r7 
                                   1122 ;col                       Allocated to registers r4 
                                   1123 ;i                         Allocated to registers r6 
                                   1124 ;gotkey                    Allocated to registers r2 
                                   1125 ;------------------------------------------------------------
                                   1126 ;	hw4.c:307: void timeMode(void){
                                   1127 ;	-----------------------------------------
                                   1128 ;	 function timeMode
                                   1129 ;	-----------------------------------------
      00042C                       1130 _timeMode:
                           000007  1131 	ar7 = 0x07
                           000006  1132 	ar6 = 0x06
                           000005  1133 	ar5 = 0x05
                           000004  1134 	ar4 = 0x04
                           000003  1135 	ar3 = 0x03
                           000002  1136 	ar2 = 0x02
                           000001  1137 	ar1 = 0x01
                           000000  1138 	ar0 = 0x00
                                   1139 ;	hw4.c:319: row = 0xf7;  // The first row (connected to P0.3) will be zero
      00042C 7F F7            [12] 1140 	mov	r7,#0xF7
                                   1141 ;	hw4.c:320: for (i=0;i<4;++i){ // loop over the 4 rows
      00042E 7E 00            [12] 1142 	mov	r6,#0x00
      000430 7D 00            [12] 1143 	mov	r5,#0x00
      000432                       1144 00128$:
                                   1145 ;	hw4.c:322: P0 = 0xff;     // Initialize the 4 rows to '1' and set the column ports to inputs
      000432 75 80 FF         [24] 1146 	mov	_P0,#0xFF
                                   1147 ;	hw4.c:323: P0 = P0 & row; // clear one row at a time
      000435 EF               [12] 1148 	mov	a,r7
      000436 52 80            [12] 1149 	anl	_P0,a
                                   1150 ;	hw4.c:324: col = P0 & 0x70;  // Read the 3 columns
      000438 74 70            [12] 1151 	mov	a,#0x70
      00043A 55 80            [12] 1152 	anl	a,_P0
      00043C FC               [12] 1153 	mov	r4,a
                                   1154 ;	hw4.c:326: if (col != 0x70){ // If any column is zero i.e. a key is pressed
      00043D BC 70 03         [24] 1155 	cjne	r4,#0x70,00171$
      000440 02 04 EC         [24] 1156 	ljmp	00126$
      000443                       1157 00171$:
                                   1158 ;	hw4.c:327: col = (~col) & 0x70;  // because the selected column returns zero
      000443 EC               [12] 1159 	mov	a,r4
      000444 F4               [12] 1160 	cpl	a
      000445 FB               [12] 1161 	mov	r3,a
      000446 74 70            [12] 1162 	mov	a,#0x70
      000448 5B               [12] 1163 	anl	a,r3
                                   1164 ;	hw4.c:328: col = col >> 5;       // The column variable now contain the number of the selected column
      000449 C4               [12] 1165 	swap	a
      00044A 03               [12] 1166 	rr	a
      00044B 54 07            [12] 1167 	anl	a,#0x07
      00044D FC               [12] 1168 	mov	r4,a
                                   1169 ;	hw4.c:331: if (i == 3 && col == 0 ){
      00044E E4               [12] 1170 	clr	a
      00044F BE 03 01         [24] 1171 	cjne	r6,#0x03,00172$
      000452 04               [12] 1172 	inc	a
      000453                       1173 00172$:
      000453 FB               [12] 1174 	mov	r3,a
      000454 60 07            [24] 1175 	jz	00110$
      000456 EC               [12] 1176 	mov	a,r4
      000457 70 04            [24] 1177 	jnz	00110$
                                   1178 ;	hw4.c:332: gotkey = '#';
      000459 7A 23            [12] 1179 	mov	r2,#0x23
      00045B 80 1F            [24] 1180 	sjmp	00111$
      00045D                       1181 00110$:
                                   1182 ;	hw4.c:334: else if (i == 3 && col == 2){
      00045D EB               [12] 1183 	mov	a,r3
      00045E 60 07            [24] 1184 	jz	00106$
      000460 BC 02 04         [24] 1185 	cjne	r4,#0x02,00106$
                                   1186 ;	hw4.c:335: gotkey = '*';
      000463 7A 2A            [12] 1187 	mov	r2,#0x2A
      000465 80 15            [24] 1188 	sjmp	00111$
      000467                       1189 00106$:
                                   1190 ;	hw4.c:337: else if (i == 3 && col == 1){
      000467 EB               [12] 1191 	mov	a,r3
      000468 60 07            [24] 1192 	jz	00102$
      00046A BC 01 04         [24] 1193 	cjne	r4,#0x01,00102$
                                   1194 ;	hw4.c:338: gotkey = '0';
      00046D 7A 30            [12] 1195 	mov	r2,#0x30
      00046F 80 0B            [24] 1196 	sjmp	00111$
      000471                       1197 00102$:
                                   1198 ;	hw4.c:343: gotkey = (3*(i+1) - col) + 48 ;
      000471 EE               [12] 1199 	mov	a,r6
      000472 04               [12] 1200 	inc	a
      000473 75 F0 03         [24] 1201 	mov	b,#0x03
      000476 A4               [48] 1202 	mul	ab
      000477 C3               [12] 1203 	clr	c
      000478 9C               [12] 1204 	subb	a,r4
      000479 24 30            [12] 1205 	add	a,#0x30
      00047B FA               [12] 1206 	mov	r2,a
      00047C                       1207 00111$:
                                   1208 ;	hw4.c:348: big_delay();
      00047C C0 02            [24] 1209 	push	ar2
      00047E 12 03 3F         [24] 1210 	lcall	_big_delay
      000481 D0 02            [24] 1211 	pop	ar2
                                   1212 ;	hw4.c:349: if (gotkey == '#'){
      000483 BA 23 20         [24] 1213 	cjne	r2,#0x23,00123$
                                   1214 ;	hw4.c:350: position++;
      000486 05 30            [12] 1215 	inc	_position
      000488 E4               [12] 1216 	clr	a
      000489 B5 30 02         [24] 1217 	cjne	a,_position,00184$
      00048C 05 31            [12] 1218 	inc	(_position + 1)
      00048E                       1219 00184$:
                                   1220 ;	hw4.c:351: if (position == 8){
      00048E 74 08            [12] 1221 	mov	a,#0x08
      000490 B5 30 06         [24] 1222 	cjne	a,_position,00185$
      000493 E4               [12] 1223 	clr	a
      000494 B5 31 02         [24] 1224 	cjne	a,(_position + 1),00185$
      000497 80 02            [24] 1225 	sjmp	00186$
      000499                       1226 00185$:
      000499 80 05            [24] 1227 	sjmp	00114$
      00049B                       1228 00186$:
                                   1229 ;	hw4.c:352: position = 0;
      00049B E4               [12] 1230 	clr	a
      00049C F5 30            [12] 1231 	mov	_position,a
      00049E F5 31            [12] 1232 	mov	(_position + 1),a
      0004A0                       1233 00114$:
                                   1234 ;	hw4.c:354: setDdRamAddress(position);// moving cursor to right
      0004A0 85 30 82         [24] 1235 	mov	dpl,_position
      0004A3 02 02 C3         [24] 1236 	ljmp	_setDdRamAddress
      0004A6                       1237 00123$:
                                   1238 ;	hw4.c:356: else if (gotkey == '*'){
      0004A6 BA 2A 1F         [24] 1239 	cjne	r2,#0x2A,00120$
                                   1240 ;	hw4.c:357: position--;
      0004A9 15 30            [12] 1241 	dec	_position
      0004AB 74 FF            [12] 1242 	mov	a,#0xFF
      0004AD B5 30 02         [24] 1243 	cjne	a,_position,00189$
      0004B0 15 31            [12] 1244 	dec	(_position + 1)
      0004B2                       1245 00189$:
                                   1246 ;	hw4.c:358: if (position == -1){
      0004B2 74 FF            [12] 1247 	mov	a,#0xFF
      0004B4 B5 30 0B         [24] 1248 	cjne	a,_position,00116$
      0004B7 74 FF            [12] 1249 	mov	a,#0xFF
      0004B9 B5 31 06         [24] 1250 	cjne	a,(_position + 1),00116$
                                   1251 ;	hw4.c:359: position = 7;
      0004BC 75 30 07         [24] 1252 	mov	_position,#0x07
      0004BF 75 31 00         [24] 1253 	mov	(_position + 1),#0x00
      0004C2                       1254 00116$:
                                   1255 ;	hw4.c:361: setDdRamAddress(position);// moving cursor to left
      0004C2 85 30 82         [24] 1256 	mov	dpl,_position
      0004C5 02 02 C3         [24] 1257 	ljmp	_setDdRamAddress
      0004C8                       1258 00120$:
                                   1259 ;	hw4.c:364: updateTime(gotkey);
      0004C8 8A 82            [24] 1260 	mov	dpl,r2
      0004CA 12 05 D7         [24] 1261 	lcall	_updateTime
                                   1262 ;	hw4.c:365: position++;
      0004CD 05 30            [12] 1263 	inc	_position
      0004CF E4               [12] 1264 	clr	a
      0004D0 B5 30 02         [24] 1265 	cjne	a,_position,00192$
      0004D3 05 31            [12] 1266 	inc	(_position + 1)
      0004D5                       1267 00192$:
                                   1268 ;	hw4.c:366: if (position == 8){
      0004D5 74 08            [12] 1269 	mov	a,#0x08
      0004D7 B5 30 06         [24] 1270 	cjne	a,_position,00193$
      0004DA E4               [12] 1271 	clr	a
      0004DB B5 31 02         [24] 1272 	cjne	a,(_position + 1),00193$
      0004DE 80 01            [24] 1273 	sjmp	00194$
      0004E0                       1274 00193$:
      0004E0 22               [24] 1275 	ret
      0004E1                       1276 00194$:
                                   1277 ;	hw4.c:367: position = 0;
      0004E1 E4               [12] 1278 	clr	a
      0004E2 F5 30            [12] 1279 	mov	_position,a
      0004E4 F5 31            [12] 1280 	mov	(_position + 1),a
                                   1281 ;	hw4.c:368: setDdRamAddress(position);
      0004E6 75 82 00         [24] 1282 	mov	dpl,#0x00
                                   1283 ;	hw4.c:371: break;  // Since a key was detected -> Exit the for loop
      0004E9 02 02 C3         [24] 1284 	ljmp	_setDdRamAddress
      0004EC                       1285 00126$:
                                   1286 ;	hw4.c:373: row = row >> 1;   // No key is detected yet, try the next row
      0004EC EF               [12] 1287 	mov	a,r7
      0004ED C3               [12] 1288 	clr	c
      0004EE 13               [12] 1289 	rrc	a
      0004EF FF               [12] 1290 	mov	r7,a
                                   1291 ;	hw4.c:374: row = row | 0xf0; // Only one of the least 4 significant bits is '0' at a time 
      0004F0 43 07 F0         [24] 1292 	orl	ar7,#0xF0
                                   1293 ;	hw4.c:320: for (i=0;i<4;++i){ // loop over the 4 rows
      0004F3 0D               [12] 1294 	inc	r5
      0004F4 8D 06            [24] 1295 	mov	ar6,r5
      0004F6 BD 04 00         [24] 1296 	cjne	r5,#0x04,00195$
      0004F9                       1297 00195$:
      0004F9 50 03            [24] 1298 	jnc	00196$
      0004FB 02 04 32         [24] 1299 	ljmp	00128$
      0004FE                       1300 00196$:
      0004FE 22               [24] 1301 	ret
                                   1302 ;------------------------------------------------------------
                                   1303 ;Allocation info for local variables in function 'dateMode'
                                   1304 ;------------------------------------------------------------
                                   1305 ;row                       Allocated to registers r7 
                                   1306 ;col                       Allocated to registers r4 
                                   1307 ;i                         Allocated to registers r6 
                                   1308 ;gotkey                    Allocated to registers r2 
                                   1309 ;------------------------------------------------------------
                                   1310 ;	hw4.c:378: void dateMode(void){
                                   1311 ;	-----------------------------------------
                                   1312 ;	 function dateMode
                                   1313 ;	-----------------------------------------
      0004FF                       1314 _dateMode:
                                   1315 ;	hw4.c:383: row = 0xf7;  // The first row (connected to P0.3) will be zero
      0004FF 7F F7            [12] 1316 	mov	r7,#0xF7
                                   1317 ;	hw4.c:384: for (i=0;i<4;++i){ // loop over the 4 rows
      000501 7E 00            [12] 1318 	mov	r6,#0x00
      000503 7D 00            [12] 1319 	mov	r5,#0x00
      000505                       1320 00128$:
                                   1321 ;	hw4.c:386: P0 = 0xff;     // Initialize the 4 rows to '1' and set the column ports to inputs
      000505 75 80 FF         [24] 1322 	mov	_P0,#0xFF
                                   1323 ;	hw4.c:387: P0 = P0 & row; // clear one row at a time
      000508 EF               [12] 1324 	mov	a,r7
      000509 52 80            [12] 1325 	anl	_P0,a
                                   1326 ;	hw4.c:388: col = P0 & 0x70;  // Read the 3 columns
      00050B 74 70            [12] 1327 	mov	a,#0x70
      00050D 55 80            [12] 1328 	anl	a,_P0
      00050F FC               [12] 1329 	mov	r4,a
                                   1330 ;	hw4.c:390: if (col != 0x70){ // If any column is zero i.e. a key is pressed
      000510 BC 70 03         [24] 1331 	cjne	r4,#0x70,00171$
      000513 02 05 C4         [24] 1332 	ljmp	00126$
      000516                       1333 00171$:
                                   1334 ;	hw4.c:391: col = (~col) & 0x70;  // because the selected column returns zero
      000516 EC               [12] 1335 	mov	a,r4
      000517 F4               [12] 1336 	cpl	a
      000518 FB               [12] 1337 	mov	r3,a
      000519 74 70            [12] 1338 	mov	a,#0x70
      00051B 5B               [12] 1339 	anl	a,r3
                                   1340 ;	hw4.c:392: col = col >> 5;       // The column variable now contain the number of the selected column
      00051C C4               [12] 1341 	swap	a
      00051D 03               [12] 1342 	rr	a
      00051E 54 07            [12] 1343 	anl	a,#0x07
      000520 FC               [12] 1344 	mov	r4,a
                                   1345 ;	hw4.c:395: if (i == 3 && col == 0 ){
      000521 E4               [12] 1346 	clr	a
      000522 BE 03 01         [24] 1347 	cjne	r6,#0x03,00172$
      000525 04               [12] 1348 	inc	a
      000526                       1349 00172$:
      000526 FB               [12] 1350 	mov	r3,a
      000527 60 07            [24] 1351 	jz	00110$
      000529 EC               [12] 1352 	mov	a,r4
      00052A 70 04            [24] 1353 	jnz	00110$
                                   1354 ;	hw4.c:396: gotkey = '#';
      00052C 7A 23            [12] 1355 	mov	r2,#0x23
      00052E 80 1F            [24] 1356 	sjmp	00111$
      000530                       1357 00110$:
                                   1358 ;	hw4.c:398: else if (i == 3 && col == 2){
      000530 EB               [12] 1359 	mov	a,r3
      000531 60 07            [24] 1360 	jz	00106$
      000533 BC 02 04         [24] 1361 	cjne	r4,#0x02,00106$
                                   1362 ;	hw4.c:399: gotkey = '*';
      000536 7A 2A            [12] 1363 	mov	r2,#0x2A
      000538 80 15            [24] 1364 	sjmp	00111$
      00053A                       1365 00106$:
                                   1366 ;	hw4.c:401: else if (i == 3 && col == 1){
      00053A EB               [12] 1367 	mov	a,r3
      00053B 60 07            [24] 1368 	jz	00102$
      00053D BC 01 04         [24] 1369 	cjne	r4,#0x01,00102$
                                   1370 ;	hw4.c:402: gotkey = '0';
      000540 7A 30            [12] 1371 	mov	r2,#0x30
      000542 80 0B            [24] 1372 	sjmp	00111$
      000544                       1373 00102$:
                                   1374 ;	hw4.c:407: gotkey = (3*(i+1) - col) + 48 ;
      000544 EE               [12] 1375 	mov	a,r6
      000545 04               [12] 1376 	inc	a
      000546 75 F0 03         [24] 1377 	mov	b,#0x03
      000549 A4               [48] 1378 	mul	ab
      00054A C3               [12] 1379 	clr	c
      00054B 9C               [12] 1380 	subb	a,r4
      00054C 24 30            [12] 1381 	add	a,#0x30
      00054E FA               [12] 1382 	mov	r2,a
      00054F                       1383 00111$:
                                   1384 ;	hw4.c:409: big_delay();
      00054F C0 02            [24] 1385 	push	ar2
      000551 12 03 3F         [24] 1386 	lcall	_big_delay
      000554 D0 02            [24] 1387 	pop	ar2
                                   1388 ;	hw4.c:410: if (gotkey == '#'){
      000556 BA 23 21         [24] 1389 	cjne	r2,#0x23,00123$
                                   1390 ;	hw4.c:411: position++;
      000559 05 30            [12] 1391 	inc	_position
      00055B E4               [12] 1392 	clr	a
      00055C B5 30 02         [24] 1393 	cjne	a,_position,00184$
      00055F 05 31            [12] 1394 	inc	(_position + 1)
      000561                       1395 00184$:
                                   1396 ;	hw4.c:412: if (position == 48){
      000561 74 30            [12] 1397 	mov	a,#0x30
      000563 B5 30 06         [24] 1398 	cjne	a,_position,00185$
      000566 E4               [12] 1399 	clr	a
      000567 B5 31 02         [24] 1400 	cjne	a,(_position + 1),00185$
      00056A 80 02            [24] 1401 	sjmp	00186$
      00056C                       1402 00185$:
      00056C 80 06            [24] 1403 	sjmp	00114$
      00056E                       1404 00186$:
                                   1405 ;	hw4.c:413: position = 40;
      00056E 75 30 28         [24] 1406 	mov	_position,#0x28
      000571 75 31 00         [24] 1407 	mov	(_position + 1),#0x00
      000574                       1408 00114$:
                                   1409 ;	hw4.c:415: setDdRamAddress(position);// moving cursor to right
      000574 85 30 82         [24] 1410 	mov	dpl,_position
      000577 02 02 C3         [24] 1411 	ljmp	_setDdRamAddress
      00057A                       1412 00123$:
                                   1413 ;	hw4.c:417: else if (gotkey == '*'){
      00057A BA 2A 22         [24] 1414 	cjne	r2,#0x2A,00120$
                                   1415 ;	hw4.c:418: position--;
      00057D 15 30            [12] 1416 	dec	_position
      00057F 74 FF            [12] 1417 	mov	a,#0xFF
      000581 B5 30 02         [24] 1418 	cjne	a,_position,00189$
      000584 15 31            [12] 1419 	dec	(_position + 1)
      000586                       1420 00189$:
                                   1421 ;	hw4.c:419: if (position == 39){
      000586 74 27            [12] 1422 	mov	a,#0x27
      000588 B5 30 06         [24] 1423 	cjne	a,_position,00190$
      00058B E4               [12] 1424 	clr	a
      00058C B5 31 02         [24] 1425 	cjne	a,(_position + 1),00190$
      00058F 80 02            [24] 1426 	sjmp	00191$
      000591                       1427 00190$:
      000591 80 06            [24] 1428 	sjmp	00116$
      000593                       1429 00191$:
                                   1430 ;	hw4.c:420: position = 47;
      000593 75 30 2F         [24] 1431 	mov	_position,#0x2F
      000596 75 31 00         [24] 1432 	mov	(_position + 1),#0x00
      000599                       1433 00116$:
                                   1434 ;	hw4.c:422: setDdRamAddress(position);// moving cursor to left
      000599 85 30 82         [24] 1435 	mov	dpl,_position
      00059C 02 02 C3         [24] 1436 	ljmp	_setDdRamAddress
      00059F                       1437 00120$:
                                   1438 ;	hw4.c:425: updateDate(gotkey);
      00059F 8A 82            [24] 1439 	mov	dpl,r2
      0005A1 12 06 C3         [24] 1440 	lcall	_updateDate
                                   1441 ;	hw4.c:426: position++;
      0005A4 05 30            [12] 1442 	inc	_position
      0005A6 E4               [12] 1443 	clr	a
      0005A7 B5 30 02         [24] 1444 	cjne	a,_position,00192$
      0005AA 05 31            [12] 1445 	inc	(_position + 1)
      0005AC                       1446 00192$:
                                   1447 ;	hw4.c:427: if (position == 48){
      0005AC 74 30            [12] 1448 	mov	a,#0x30
      0005AE B5 30 06         [24] 1449 	cjne	a,_position,00193$
      0005B1 E4               [12] 1450 	clr	a
      0005B2 B5 31 02         [24] 1451 	cjne	a,(_position + 1),00193$
      0005B5 80 01            [24] 1452 	sjmp	00194$
      0005B7                       1453 00193$:
      0005B7 22               [24] 1454 	ret
      0005B8                       1455 00194$:
                                   1456 ;	hw4.c:428: position = 40;
      0005B8 75 30 28         [24] 1457 	mov	_position,#0x28
      0005BB 75 31 00         [24] 1458 	mov	(_position + 1),#0x00
                                   1459 ;	hw4.c:429: setDdRamAddress(position);
      0005BE 75 82 28         [24] 1460 	mov	dpl,#0x28
                                   1461 ;	hw4.c:432: break;  // Since a key was detected -> Exit the for loop
      0005C1 02 02 C3         [24] 1462 	ljmp	_setDdRamAddress
      0005C4                       1463 00126$:
                                   1464 ;	hw4.c:434: row = row >> 1;   // No key is detected yet, try the next row
      0005C4 EF               [12] 1465 	mov	a,r7
      0005C5 C3               [12] 1466 	clr	c
      0005C6 13               [12] 1467 	rrc	a
      0005C7 FF               [12] 1468 	mov	r7,a
                                   1469 ;	hw4.c:435: row = row | 0xf0; // Only one of the least 4 significant bits is '0' at a time 
      0005C8 43 07 F0         [24] 1470 	orl	ar7,#0xF0
                                   1471 ;	hw4.c:384: for (i=0;i<4;++i){ // loop over the 4 rows
      0005CB 0D               [12] 1472 	inc	r5
      0005CC 8D 06            [24] 1473 	mov	ar6,r5
      0005CE BD 04 00         [24] 1474 	cjne	r5,#0x04,00195$
      0005D1                       1475 00195$:
      0005D1 50 03            [24] 1476 	jnc	00196$
      0005D3 02 05 05         [24] 1477 	ljmp	00128$
      0005D6                       1478 00196$:
      0005D6 22               [24] 1479 	ret
                                   1480 ;------------------------------------------------------------
                                   1481 ;Allocation info for local variables in function 'updateTime'
                                   1482 ;------------------------------------------------------------
                                   1483 ;new                       Allocated to registers r7 
                                   1484 ;------------------------------------------------------------
                                   1485 ;	hw4.c:441: void updateTime(char new){
                                   1486 ;	-----------------------------------------
                                   1487 ;	 function updateTime
                                   1488 ;	-----------------------------------------
      0005D7                       1489 _updateTime:
      0005D7 AF 82            [24] 1490 	mov	r7,dpl
                                   1491 ;	hw4.c:443: if(position ==  0|| position == 1){
      0005D9 E5 30            [12] 1492 	mov	a,_position
      0005DB 45 31            [12] 1493 	orl	a,(_position + 1)
      0005DD 60 0D            [24] 1494 	jz	00129$
      0005DF 74 01            [12] 1495 	mov	a,#0x01
      0005E1 B5 30 06         [24] 1496 	cjne	a,_position,00172$
      0005E4 E4               [12] 1497 	clr	a
      0005E5 B5 31 02         [24] 1498 	cjne	a,(_position + 1),00172$
      0005E8 80 02            [24] 1499 	sjmp	00173$
      0005EA                       1500 00172$:
      0005EA 80 4A            [24] 1501 	sjmp	00130$
      0005EC                       1502 00173$:
      0005EC                       1503 00129$:
                                   1504 ;	hw4.c:444: if (position == 0){
      0005EC E5 30            [12] 1505 	mov	a,_position
      0005EE 45 31            [12] 1506 	orl	a,(_position + 1)
      0005F0 70 24            [24] 1507 	jnz	00109$
                                   1508 ;	hw4.c:446: if (new > '2' || (new == '2' && hours[1] >'3') ) {
      0005F2 C3               [12] 1509 	clr	c
      0005F3 74 B2            [12] 1510 	mov	a,#(0x32 ^ 0x80)
      0005F5 8F F0            [24] 1511 	mov	b,r7
      0005F7 63 F0 80         [24] 1512 	xrl	b,#0x80
      0005FA 95 F0            [12] 1513 	subb	a,b
      0005FC 40 09            [24] 1514 	jc	00101$
      0005FE BF 32 10         [24] 1515 	cjne	r7,#0x32,00102$
      000601 E5 39            [12] 1516 	mov	a,(_hours + 0x0001)
      000603 24 CC            [12] 1517 	add	a,#0xff - 0x33
      000605 50 0A            [24] 1518 	jnc	00102$
      000607                       1519 00101$:
                                   1520 ;	hw4.c:447: position --;
      000607 15 30            [12] 1521 	dec	_position
      000609 74 FF            [12] 1522 	mov	a,#0xFF
      00060B B5 30 02         [24] 1523 	cjne	a,_position,00179$
      00060E 15 31            [12] 1524 	dec	(_position + 1)
      000610                       1525 00179$:
                                   1526 ;	hw4.c:448: return;
      000610 22               [24] 1527 	ret
      000611                       1528 00102$:
                                   1529 ;	hw4.c:450: hours[0] = new;
      000611 8F 38            [24] 1530 	mov	_hours,r7
      000613 02 06 BE         [24] 1531 	ljmp	00131$
      000616                       1532 00109$:
                                   1533 ;	hw4.c:454: if(hours[0] == '2' && new > '3'){
      000616 74 32            [12] 1534 	mov	a,#0x32
      000618 B5 38 16         [24] 1535 	cjne	a,_hours,00106$
      00061B C3               [12] 1536 	clr	c
      00061C 74 B3            [12] 1537 	mov	a,#(0x33 ^ 0x80)
      00061E 8F F0            [24] 1538 	mov	b,r7
      000620 63 F0 80         [24] 1539 	xrl	b,#0x80
      000623 95 F0            [12] 1540 	subb	a,b
      000625 50 0A            [24] 1541 	jnc	00106$
                                   1542 ;	hw4.c:455: position --;
      000627 15 30            [12] 1543 	dec	_position
      000629 74 FF            [12] 1544 	mov	a,#0xFF
      00062B B5 30 02         [24] 1545 	cjne	a,_position,00183$
      00062E 15 31            [12] 1546 	dec	(_position + 1)
      000630                       1547 00183$:
                                   1548 ;	hw4.c:456: return;
      000630 22               [24] 1549 	ret
      000631                       1550 00106$:
                                   1551 ;	hw4.c:458: hours[1] = new;
      000631 8F 39            [24] 1552 	mov	(_hours + 0x0001),r7
      000633 02 06 BE         [24] 1553 	ljmp	00131$
      000636                       1554 00130$:
                                   1555 ;	hw4.c:462: else if (position == 3 || position == 4){
      000636 74 03            [12] 1556 	mov	a,#0x03
      000638 B5 30 08         [24] 1557 	cjne	a,_position,00184$
      00063B E4               [12] 1558 	clr	a
      00063C B5 31 04         [24] 1559 	cjne	a,(_position + 1),00184$
      00063F 74 01            [12] 1560 	mov	a,#0x01
      000641 80 01            [24] 1561 	sjmp	00185$
      000643                       1562 00184$:
      000643 E4               [12] 1563 	clr	a
      000644                       1564 00185$:
      000644 FE               [12] 1565 	mov	r6,a
      000645 70 0D            [24] 1566 	jnz	00125$
      000647 74 04            [12] 1567 	mov	a,#0x04
      000649 B5 30 06         [24] 1568 	cjne	a,_position,00187$
      00064C E4               [12] 1569 	clr	a
      00064D B5 31 02         [24] 1570 	cjne	a,(_position + 1),00187$
      000650 80 02            [24] 1571 	sjmp	00188$
      000652                       1572 00187$:
      000652 80 21            [24] 1573 	sjmp	00126$
      000654                       1574 00188$:
      000654                       1575 00125$:
                                   1576 ;	hw4.c:463: if (position == 3){
      000654 EE               [12] 1577 	mov	a,r6
      000655 60 1A            [24] 1578 	jz	00114$
                                   1579 ;	hw4.c:465: if (new > '5'){
      000657 C3               [12] 1580 	clr	c
      000658 74 B5            [12] 1581 	mov	a,#(0x35 ^ 0x80)
      00065A 8F F0            [24] 1582 	mov	b,r7
      00065C 63 F0 80         [24] 1583 	xrl	b,#0x80
      00065F 95 F0            [12] 1584 	subb	a,b
      000661 50 0A            [24] 1585 	jnc	00112$
                                   1586 ;	hw4.c:466: position --;
      000663 15 30            [12] 1587 	dec	_position
      000665 74 FF            [12] 1588 	mov	a,#0xFF
      000667 B5 30 02         [24] 1589 	cjne	a,_position,00191$
      00066A 15 31            [12] 1590 	dec	(_position + 1)
      00066C                       1591 00191$:
                                   1592 ;	hw4.c:467: return;
      00066C 22               [24] 1593 	ret
      00066D                       1594 00112$:
                                   1595 ;	hw4.c:469: minutes[0] = new;
      00066D 8F 35            [24] 1596 	mov	_minutes,r7
      00066F 80 4D            [24] 1597 	sjmp	00131$
      000671                       1598 00114$:
                                   1599 ;	hw4.c:472: minutes[1] = new;
      000671 8F 36            [24] 1600 	mov	(_minutes + 0x0001),r7
      000673 80 49            [24] 1601 	sjmp	00131$
      000675                       1602 00126$:
                                   1603 ;	hw4.c:476: else if (position == 6 || position == 7){
      000675 74 06            [12] 1604 	mov	a,#0x06
      000677 B5 30 08         [24] 1605 	cjne	a,_position,00192$
      00067A E4               [12] 1606 	clr	a
      00067B B5 31 04         [24] 1607 	cjne	a,(_position + 1),00192$
      00067E 74 01            [12] 1608 	mov	a,#0x01
      000680 80 01            [24] 1609 	sjmp	00193$
      000682                       1610 00192$:
      000682 E4               [12] 1611 	clr	a
      000683                       1612 00193$:
      000683 FE               [12] 1613 	mov	r6,a
      000684 70 0D            [24] 1614 	jnz	00121$
      000686 74 07            [12] 1615 	mov	a,#0x07
      000688 B5 30 06         [24] 1616 	cjne	a,_position,00195$
      00068B E4               [12] 1617 	clr	a
      00068C B5 31 02         [24] 1618 	cjne	a,(_position + 1),00195$
      00068F 80 02            [24] 1619 	sjmp	00196$
      000691                       1620 00195$:
      000691 80 21            [24] 1621 	sjmp	00122$
      000693                       1622 00196$:
      000693                       1623 00121$:
                                   1624 ;	hw4.c:477: if (position == 6){
      000693 EE               [12] 1625 	mov	a,r6
      000694 60 1A            [24] 1626 	jz	00119$
                                   1627 ;	hw4.c:479: if (new > '5'){
      000696 C3               [12] 1628 	clr	c
      000697 74 B5            [12] 1629 	mov	a,#(0x35 ^ 0x80)
      000699 8F F0            [24] 1630 	mov	b,r7
      00069B 63 F0 80         [24] 1631 	xrl	b,#0x80
      00069E 95 F0            [12] 1632 	subb	a,b
      0006A0 50 0A            [24] 1633 	jnc	00117$
                                   1634 ;	hw4.c:480: position --;
      0006A2 15 30            [12] 1635 	dec	_position
      0006A4 74 FF            [12] 1636 	mov	a,#0xFF
      0006A6 B5 30 02         [24] 1637 	cjne	a,_position,00199$
      0006A9 15 31            [12] 1638 	dec	(_position + 1)
      0006AB                       1639 00199$:
                                   1640 ;	hw4.c:481: return;
      0006AB 22               [24] 1641 	ret
      0006AC                       1642 00117$:
                                   1643 ;	hw4.c:483: seconds[0] = new;
      0006AC 8F 32            [24] 1644 	mov	_seconds,r7
      0006AE 80 0E            [24] 1645 	sjmp	00131$
      0006B0                       1646 00119$:
                                   1647 ;	hw4.c:486: seconds[1] = new;
      0006B0 8F 33            [24] 1648 	mov	(_seconds + 0x0001),r7
      0006B2 80 0A            [24] 1649 	sjmp	00131$
      0006B4                       1650 00122$:
                                   1651 ;	hw4.c:491: position --;
      0006B4 15 30            [12] 1652 	dec	_position
      0006B6 74 FF            [12] 1653 	mov	a,#0xFF
      0006B8 B5 30 02         [24] 1654 	cjne	a,_position,00200$
      0006BB 15 31            [12] 1655 	dec	(_position + 1)
      0006BD                       1656 00200$:
                                   1657 ;	hw4.c:492: return;
      0006BD 22               [24] 1658 	ret
      0006BE                       1659 00131$:
                                   1660 ;	hw4.c:494: sendChar(new);
      0006BE 8F 82            [24] 1661 	mov	dpl,r7
      0006C0 02 02 FC         [24] 1662 	ljmp	_sendChar
                                   1663 ;------------------------------------------------------------
                                   1664 ;Allocation info for local variables in function 'updateDate'
                                   1665 ;------------------------------------------------------------
                                   1666 ;new                       Allocated to registers r7 
                                   1667 ;temp                      Allocated to registers r5 r6 
                                   1668 ;------------------------------------------------------------
                                   1669 ;	hw4.c:497: void updateDate(char new){ 
                                   1670 ;	-----------------------------------------
                                   1671 ;	 function updateDate
                                   1672 ;	-----------------------------------------
      0006C3                       1673 _updateDate:
      0006C3 AF 82            [24] 1674 	mov	r7,dpl
                                   1675 ;	hw4.c:500: if(position ==  40|| position == 41){
      0006C5 74 28            [12] 1676 	mov	a,#0x28
      0006C7 B5 30 08         [24] 1677 	cjne	a,_position,00166$
      0006CA E4               [12] 1678 	clr	a
      0006CB B5 31 04         [24] 1679 	cjne	a,(_position + 1),00166$
      0006CE 74 01            [12] 1680 	mov	a,#0x01
      0006D0 80 01            [24] 1681 	sjmp	00167$
      0006D2                       1682 00166$:
      0006D2 E4               [12] 1683 	clr	a
      0006D3                       1684 00167$:
      0006D3 FE               [12] 1685 	mov	r6,a
      0006D4 70 0D            [24] 1686 	jnz	00127$
      0006D6 74 29            [12] 1687 	mov	a,#0x29
      0006D8 B5 30 06         [24] 1688 	cjne	a,_position,00169$
      0006DB E4               [12] 1689 	clr	a
      0006DC B5 31 02         [24] 1690 	cjne	a,(_position + 1),00169$
      0006DF 80 02            [24] 1691 	sjmp	00170$
      0006E1                       1692 00169$:
      0006E1 80 6C            [24] 1693 	sjmp	00128$
      0006E3                       1694 00170$:
      0006E3                       1695 00127$:
                                   1696 ;	hw4.c:503: if (position == 40){
      0006E3 EE               [12] 1697 	mov	a,r6
      0006E4 60 64            [24] 1698 	jz	00104$
                                   1699 ;	hw4.c:504: temp = ((new-48) * 10) + (days[1] -48) ;// new date if accepting user input
      0006E6 EF               [12] 1700 	mov	a,r7
      0006E7 FD               [12] 1701 	mov	r5,a
      0006E8 33               [12] 1702 	rlc	a
      0006E9 95 E0            [12] 1703 	subb	a,acc
      0006EB FE               [12] 1704 	mov	r6,a
      0006EC ED               [12] 1705 	mov	a,r5
      0006ED 24 D0            [12] 1706 	add	a,#0xD0
      0006EF F5 5E            [12] 1707 	mov	__mulint_PARM_2,a
      0006F1 EE               [12] 1708 	mov	a,r6
      0006F2 34 FF            [12] 1709 	addc	a,#0xFF
      0006F4 F5 5F            [12] 1710 	mov	(__mulint_PARM_2 + 1),a
      0006F6 90 00 0A         [24] 1711 	mov	dptr,#0x000A
      0006F9 C0 07            [24] 1712 	push	ar7
      0006FB 12 08 B0         [24] 1713 	lcall	__mulint
      0006FE AD 82            [24] 1714 	mov	r5,dpl
      000700 AE 83            [24] 1715 	mov	r6,dph
      000702 AB 3C            [24] 1716 	mov	r3,(_days + 0x0001)
      000704 7C 00            [12] 1717 	mov	r4,#0x00
      000706 EB               [12] 1718 	mov	a,r3
      000707 24 D0            [12] 1719 	add	a,#0xD0
      000709 FB               [12] 1720 	mov	r3,a
      00070A EC               [12] 1721 	mov	a,r4
      00070B 34 FF            [12] 1722 	addc	a,#0xFF
      00070D FC               [12] 1723 	mov	r4,a
      00070E EB               [12] 1724 	mov	a,r3
      00070F 2D               [12] 1725 	add	a,r5
      000710 FD               [12] 1726 	mov	r5,a
      000711 EC               [12] 1727 	mov	a,r4
      000712 3E               [12] 1728 	addc	a,r6
      000713 FE               [12] 1729 	mov	r6,a
                                   1730 ;	hw4.c:506: if( temp > numDays[atoi(month)-1] ){ // if past max date of currently set month, dont update
      000714 90 00 3E         [24] 1731 	mov	dptr,#_month
      000717 75 F0 40         [24] 1732 	mov	b,#0x40
      00071A C0 06            [24] 1733 	push	ar6
      00071C C0 05            [24] 1734 	push	ar5
      00071E 12 07 EA         [24] 1735 	lcall	_atoi
      000721 AB 82            [24] 1736 	mov	r3,dpl
      000723 D0 05            [24] 1737 	pop	ar5
      000725 D0 06            [24] 1738 	pop	ar6
      000727 D0 07            [24] 1739 	pop	ar7
      000729 1B               [12] 1740 	dec	r3
      00072A EB               [12] 1741 	mov	a,r3
      00072B 2B               [12] 1742 	add	a,r3
      00072C 24 44            [12] 1743 	add	a,#_numDays
      00072E F9               [12] 1744 	mov	r1,a
      00072F 87 03            [24] 1745 	mov	ar3,@r1
      000731 09               [12] 1746 	inc	r1
      000732 87 04            [24] 1747 	mov	ar4,@r1
      000734 C3               [12] 1748 	clr	c
      000735 EB               [12] 1749 	mov	a,r3
      000736 9D               [12] 1750 	subb	a,r5
      000737 EC               [12] 1751 	mov	a,r4
      000738 9E               [12] 1752 	subb	a,r6
      000739 50 0A            [24] 1753 	jnc	00102$
                                   1754 ;	hw4.c:507: position --;
      00073B 15 30            [12] 1755 	dec	_position
      00073D 74 FF            [12] 1756 	mov	a,#0xFF
      00073F B5 30 02         [24] 1757 	cjne	a,_position,00173$
      000742 15 31            [12] 1758 	dec	(_position + 1)
      000744                       1759 00173$:
                                   1760 ;	hw4.c:508: return;
      000744 22               [24] 1761 	ret
      000745                       1762 00102$:
                                   1763 ;	hw4.c:510: days[0] = new;
      000745 8F 3B            [24] 1764 	mov	_days,r7
      000747 02 07 E5         [24] 1765 	ljmp	00129$
      00074A                       1766 00104$:
                                   1767 ;	hw4.c:526: days[1] = new;
      00074A 8F 3C            [24] 1768 	mov	(_days + 0x0001),r7
      00074C 02 07 E5         [24] 1769 	ljmp	00129$
      00074F                       1770 00128$:
                                   1771 ;	hw4.c:533: else if (position == 43 || position == 44){
      00074F 74 2B            [12] 1772 	mov	a,#0x2B
      000751 B5 30 08         [24] 1773 	cjne	a,_position,00174$
      000754 E4               [12] 1774 	clr	a
      000755 B5 31 04         [24] 1775 	cjne	a,(_position + 1),00174$
      000758 74 01            [12] 1776 	mov	a,#0x01
      00075A 80 01            [24] 1777 	sjmp	00175$
      00075C                       1778 00174$:
      00075C E4               [12] 1779 	clr	a
      00075D                       1780 00175$:
      00075D FE               [12] 1781 	mov	r6,a
      00075E 70 0D            [24] 1782 	jnz	00123$
      000760 74 2C            [12] 1783 	mov	a,#0x2C
      000762 B5 30 06         [24] 1784 	cjne	a,_position,00177$
      000765 E4               [12] 1785 	clr	a
      000766 B5 31 02         [24] 1786 	cjne	a,(_position + 1),00177$
      000769 80 02            [24] 1787 	sjmp	00178$
      00076B                       1788 00177$:
      00076B 80 45            [24] 1789 	sjmp	00124$
      00076D                       1790 00178$:
      00076D                       1791 00123$:
                                   1792 ;	hw4.c:534: if (position == 43){
      00076D EE               [12] 1793 	mov	a,r6
      00076E 60 23            [24] 1794 	jz	00114$
                                   1795 ;	hw4.c:536: if(new > '1' || (new == '1' && month[1] > '2') ){
      000770 C3               [12] 1796 	clr	c
      000771 74 B1            [12] 1797 	mov	a,#(0x31 ^ 0x80)
      000773 8F F0            [24] 1798 	mov	b,r7
      000775 63 F0 80         [24] 1799 	xrl	b,#0x80
      000778 95 F0            [12] 1800 	subb	a,b
      00077A 40 09            [24] 1801 	jc	00106$
      00077C BF 31 10         [24] 1802 	cjne	r7,#0x31,00107$
      00077F E5 3F            [12] 1803 	mov	a,(_month + 0x0001)
      000781 24 CD            [12] 1804 	add	a,#0xff - 0x32
      000783 50 0A            [24] 1805 	jnc	00107$
      000785                       1806 00106$:
                                   1807 ;	hw4.c:537: position --;
      000785 15 30            [12] 1808 	dec	_position
      000787 74 FF            [12] 1809 	mov	a,#0xFF
      000789 B5 30 02         [24] 1810 	cjne	a,_position,00184$
      00078C 15 31            [12] 1811 	dec	(_position + 1)
      00078E                       1812 00184$:
                                   1813 ;	hw4.c:538: return;
      00078E 22               [24] 1814 	ret
      00078F                       1815 00107$:
                                   1816 ;	hw4.c:540: month[0] = new;
      00078F 8F 3E            [24] 1817 	mov	_month,r7
      000791 80 52            [24] 1818 	sjmp	00129$
      000793                       1819 00114$:
                                   1820 ;	hw4.c:544: if(month[0] == '1' && new > '2'){
      000793 74 31            [12] 1821 	mov	a,#0x31
      000795 B5 3E 16         [24] 1822 	cjne	a,_month,00111$
      000798 C3               [12] 1823 	clr	c
      000799 74 B2            [12] 1824 	mov	a,#(0x32 ^ 0x80)
      00079B 8F F0            [24] 1825 	mov	b,r7
      00079D 63 F0 80         [24] 1826 	xrl	b,#0x80
      0007A0 95 F0            [12] 1827 	subb	a,b
      0007A2 50 0A            [24] 1828 	jnc	00111$
                                   1829 ;	hw4.c:545: position --;
      0007A4 15 30            [12] 1830 	dec	_position
      0007A6 74 FF            [12] 1831 	mov	a,#0xFF
      0007A8 B5 30 02         [24] 1832 	cjne	a,_position,00188$
      0007AB 15 31            [12] 1833 	dec	(_position + 1)
      0007AD                       1834 00188$:
                                   1835 ;	hw4.c:546: return;
      0007AD 22               [24] 1836 	ret
      0007AE                       1837 00111$:
                                   1838 ;	hw4.c:548: month[1] = new;
      0007AE 8F 3F            [24] 1839 	mov	(_month + 0x0001),r7
      0007B0 80 33            [24] 1840 	sjmp	00129$
      0007B2                       1841 00124$:
                                   1842 ;	hw4.c:552: else if (position == 46 || position == 47){
      0007B2 74 2E            [12] 1843 	mov	a,#0x2E
      0007B4 B5 30 08         [24] 1844 	cjne	a,_position,00189$
      0007B7 E4               [12] 1845 	clr	a
      0007B8 B5 31 04         [24] 1846 	cjne	a,(_position + 1),00189$
      0007BB 74 01            [12] 1847 	mov	a,#0x01
      0007BD 80 01            [24] 1848 	sjmp	00190$
      0007BF                       1849 00189$:
      0007BF E4               [12] 1850 	clr	a
      0007C0                       1851 00190$:
      0007C0 FE               [12] 1852 	mov	r6,a
      0007C1 70 0D            [24] 1853 	jnz	00119$
      0007C3 74 2F            [12] 1854 	mov	a,#0x2F
      0007C5 B5 30 06         [24] 1855 	cjne	a,_position,00192$
      0007C8 E4               [12] 1856 	clr	a
      0007C9 B5 31 02         [24] 1857 	cjne	a,(_position + 1),00192$
      0007CC 80 02            [24] 1858 	sjmp	00193$
      0007CE                       1859 00192$:
      0007CE 80 0B            [24] 1860 	sjmp	00120$
      0007D0                       1861 00193$:
      0007D0                       1862 00119$:
                                   1863 ;	hw4.c:553: if (position == 46){
      0007D0 EE               [12] 1864 	mov	a,r6
      0007D1 60 04            [24] 1865 	jz	00117$
                                   1866 ;	hw4.c:554: year[0] = new;
      0007D3 8F 41            [24] 1867 	mov	_year,r7
      0007D5 80 0E            [24] 1868 	sjmp	00129$
      0007D7                       1869 00117$:
                                   1870 ;	hw4.c:557: year[1] = new;
      0007D7 8F 42            [24] 1871 	mov	(_year + 0x0001),r7
      0007D9 80 0A            [24] 1872 	sjmp	00129$
      0007DB                       1873 00120$:
                                   1874 ;	hw4.c:562: position --;
      0007DB 15 30            [12] 1875 	dec	_position
      0007DD 74 FF            [12] 1876 	mov	a,#0xFF
      0007DF B5 30 02         [24] 1877 	cjne	a,_position,00195$
      0007E2 15 31            [12] 1878 	dec	(_position + 1)
      0007E4                       1879 00195$:
                                   1880 ;	hw4.c:563: return;
      0007E4 22               [24] 1881 	ret
      0007E5                       1882 00129$:
                                   1883 ;	hw4.c:565: sendChar(new);
      0007E5 8F 82            [24] 1884 	mov	dpl,r7
      0007E7 02 02 FC         [24] 1885 	ljmp	_sendChar
                                   1886 	.area CSEG    (CODE)
                                   1887 	.area CONST   (CODE)
                                   1888 	.area XINIT   (CODE)
                                   1889 	.area CABS    (ABS,CODE)
