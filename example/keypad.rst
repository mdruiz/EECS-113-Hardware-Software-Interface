                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.5.0 #9253 (Jun 20 2015) (MINGW64)
                                      4 ; This file was generated Sat Apr 30 17:20:40 2016
                                      5 ;--------------------------------------------------------
                                      6 	.module keypad
                                      7 	.optsdcc -mmcs51 --model-small
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl _Main
                                     13 	.globl _CY
                                     14 	.globl _AC
                                     15 	.globl _F0
                                     16 	.globl _RS1
                                     17 	.globl _RS0
                                     18 	.globl _OV
                                     19 	.globl _F1
                                     20 	.globl _P
                                     21 	.globl _PS
                                     22 	.globl _PT1
                                     23 	.globl _PX1
                                     24 	.globl _PT0
                                     25 	.globl _PX0
                                     26 	.globl _RD
                                     27 	.globl _WR
                                     28 	.globl _T1
                                     29 	.globl _T0
                                     30 	.globl _INT1
                                     31 	.globl _INT0
                                     32 	.globl _TXD
                                     33 	.globl _RXD
                                     34 	.globl _P3_7
                                     35 	.globl _P3_6
                                     36 	.globl _P3_5
                                     37 	.globl _P3_4
                                     38 	.globl _P3_3
                                     39 	.globl _P3_2
                                     40 	.globl _P3_1
                                     41 	.globl _P3_0
                                     42 	.globl _EA
                                     43 	.globl _ES
                                     44 	.globl _ET1
                                     45 	.globl _EX1
                                     46 	.globl _ET0
                                     47 	.globl _EX0
                                     48 	.globl _P2_7
                                     49 	.globl _P2_6
                                     50 	.globl _P2_5
                                     51 	.globl _P2_4
                                     52 	.globl _P2_3
                                     53 	.globl _P2_2
                                     54 	.globl _P2_1
                                     55 	.globl _P2_0
                                     56 	.globl _SM0
                                     57 	.globl _SM1
                                     58 	.globl _SM2
                                     59 	.globl _REN
                                     60 	.globl _TB8
                                     61 	.globl _RB8
                                     62 	.globl _TI
                                     63 	.globl _RI
                                     64 	.globl _P1_7
                                     65 	.globl _P1_6
                                     66 	.globl _P1_5
                                     67 	.globl _P1_4
                                     68 	.globl _P1_3
                                     69 	.globl _P1_2
                                     70 	.globl _P1_1
                                     71 	.globl _P1_0
                                     72 	.globl _TF1
                                     73 	.globl _TR1
                                     74 	.globl _TF0
                                     75 	.globl _TR0
                                     76 	.globl _IE1
                                     77 	.globl _IT1
                                     78 	.globl _IE0
                                     79 	.globl _IT0
                                     80 	.globl _P0_7
                                     81 	.globl _P0_6
                                     82 	.globl _P0_5
                                     83 	.globl _P0_4
                                     84 	.globl _P0_3
                                     85 	.globl _P0_2
                                     86 	.globl _P0_1
                                     87 	.globl _P0_0
                                     88 	.globl _B
                                     89 	.globl _ACC
                                     90 	.globl _PSW
                                     91 	.globl _IP
                                     92 	.globl _P3
                                     93 	.globl _IE
                                     94 	.globl _P2
                                     95 	.globl _SBUF
                                     96 	.globl _SCON
                                     97 	.globl _P1
                                     98 	.globl _TH1
                                     99 	.globl _TH0
                                    100 	.globl _TL1
                                    101 	.globl _TL0
                                    102 	.globl _TMOD
                                    103 	.globl _TCON
                                    104 	.globl _PCON
                                    105 	.globl _DPH
                                    106 	.globl _DPL
                                    107 	.globl _SP
                                    108 	.globl _P0
                                    109 ;--------------------------------------------------------
                                    110 ; special function registers
                                    111 ;--------------------------------------------------------
                                    112 	.area RSEG    (ABS,DATA)
      000000                        113 	.org 0x0000
                           000080   114 _P0	=	0x0080
                           000081   115 _SP	=	0x0081
                           000082   116 _DPL	=	0x0082
                           000083   117 _DPH	=	0x0083
                           000087   118 _PCON	=	0x0087
                           000088   119 _TCON	=	0x0088
                           000089   120 _TMOD	=	0x0089
                           00008A   121 _TL0	=	0x008a
                           00008B   122 _TL1	=	0x008b
                           00008C   123 _TH0	=	0x008c
                           00008D   124 _TH1	=	0x008d
                           000090   125 _P1	=	0x0090
                           000098   126 _SCON	=	0x0098
                           000099   127 _SBUF	=	0x0099
                           0000A0   128 _P2	=	0x00a0
                           0000A8   129 _IE	=	0x00a8
                           0000B0   130 _P3	=	0x00b0
                           0000B8   131 _IP	=	0x00b8
                           0000D0   132 _PSW	=	0x00d0
                           0000E0   133 _ACC	=	0x00e0
                           0000F0   134 _B	=	0x00f0
                                    135 ;--------------------------------------------------------
                                    136 ; special function bits
                                    137 ;--------------------------------------------------------
                                    138 	.area RSEG    (ABS,DATA)
      000000                        139 	.org 0x0000
                           000080   140 _P0_0	=	0x0080
                           000081   141 _P0_1	=	0x0081
                           000082   142 _P0_2	=	0x0082
                           000083   143 _P0_3	=	0x0083
                           000084   144 _P0_4	=	0x0084
                           000085   145 _P0_5	=	0x0085
                           000086   146 _P0_6	=	0x0086
                           000087   147 _P0_7	=	0x0087
                           000088   148 _IT0	=	0x0088
                           000089   149 _IE0	=	0x0089
                           00008A   150 _IT1	=	0x008a
                           00008B   151 _IE1	=	0x008b
                           00008C   152 _TR0	=	0x008c
                           00008D   153 _TF0	=	0x008d
                           00008E   154 _TR1	=	0x008e
                           00008F   155 _TF1	=	0x008f
                           000090   156 _P1_0	=	0x0090
                           000091   157 _P1_1	=	0x0091
                           000092   158 _P1_2	=	0x0092
                           000093   159 _P1_3	=	0x0093
                           000094   160 _P1_4	=	0x0094
                           000095   161 _P1_5	=	0x0095
                           000096   162 _P1_6	=	0x0096
                           000097   163 _P1_7	=	0x0097
                           000098   164 _RI	=	0x0098
                           000099   165 _TI	=	0x0099
                           00009A   166 _RB8	=	0x009a
                           00009B   167 _TB8	=	0x009b
                           00009C   168 _REN	=	0x009c
                           00009D   169 _SM2	=	0x009d
                           00009E   170 _SM1	=	0x009e
                           00009F   171 _SM0	=	0x009f
                           0000A0   172 _P2_0	=	0x00a0
                           0000A1   173 _P2_1	=	0x00a1
                           0000A2   174 _P2_2	=	0x00a2
                           0000A3   175 _P2_3	=	0x00a3
                           0000A4   176 _P2_4	=	0x00a4
                           0000A5   177 _P2_5	=	0x00a5
                           0000A6   178 _P2_6	=	0x00a6
                           0000A7   179 _P2_7	=	0x00a7
                           0000A8   180 _EX0	=	0x00a8
                           0000A9   181 _ET0	=	0x00a9
                           0000AA   182 _EX1	=	0x00aa
                           0000AB   183 _ET1	=	0x00ab
                           0000AC   184 _ES	=	0x00ac
                           0000AF   185 _EA	=	0x00af
                           0000B0   186 _P3_0	=	0x00b0
                           0000B1   187 _P3_1	=	0x00b1
                           0000B2   188 _P3_2	=	0x00b2
                           0000B3   189 _P3_3	=	0x00b3
                           0000B4   190 _P3_4	=	0x00b4
                           0000B5   191 _P3_5	=	0x00b5
                           0000B6   192 _P3_6	=	0x00b6
                           0000B7   193 _P3_7	=	0x00b7
                           0000B0   194 _RXD	=	0x00b0
                           0000B1   195 _TXD	=	0x00b1
                           0000B2   196 _INT0	=	0x00b2
                           0000B3   197 _INT1	=	0x00b3
                           0000B4   198 _T0	=	0x00b4
                           0000B5   199 _T1	=	0x00b5
                           0000B6   200 _WR	=	0x00b6
                           0000B7   201 _RD	=	0x00b7
                           0000B8   202 _PX0	=	0x00b8
                           0000B9   203 _PT0	=	0x00b9
                           0000BA   204 _PX1	=	0x00ba
                           0000BB   205 _PT1	=	0x00bb
                           0000BC   206 _PS	=	0x00bc
                           0000D0   207 _P	=	0x00d0
                           0000D1   208 _F1	=	0x00d1
                           0000D2   209 _OV	=	0x00d2
                           0000D3   210 _RS0	=	0x00d3
                           0000D4   211 _RS1	=	0x00d4
                           0000D5   212 _F0	=	0x00d5
                           0000D6   213 _AC	=	0x00d6
                           0000D7   214 _CY	=	0x00d7
                                    215 ;--------------------------------------------------------
                                    216 ; overlayable register banks
                                    217 ;--------------------------------------------------------
                                    218 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        219 	.ds 8
                                    220 ;--------------------------------------------------------
                                    221 ; internal ram data
                                    222 ;--------------------------------------------------------
                                    223 	.area DSEG    (DATA)
                                    224 ;--------------------------------------------------------
                                    225 ; overlayable items in internal ram 
                                    226 ;--------------------------------------------------------
                                    227 	.area	OSEG    (OVR,DATA)
      000030                        228 _Main_keypad_1_2:
      000030                        229 	.ds 12
                                    230 ;--------------------------------------------------------
                                    231 ; indirectly addressable internal ram data
                                    232 ;--------------------------------------------------------
                                    233 	.area ISEG    (DATA)
                                    234 ;--------------------------------------------------------
                                    235 ; absolute internal ram data
                                    236 ;--------------------------------------------------------
                                    237 	.area IABS    (ABS,DATA)
                                    238 	.area IABS    (ABS,DATA)
                                    239 ;--------------------------------------------------------
                                    240 ; bit data
                                    241 ;--------------------------------------------------------
                                    242 	.area BSEG    (BIT)
                                    243 ;--------------------------------------------------------
                                    244 ; paged external ram data
                                    245 ;--------------------------------------------------------
                                    246 	.area PSEG    (PAG,XDATA)
                                    247 ;--------------------------------------------------------
                                    248 ; external ram data
                                    249 ;--------------------------------------------------------
                                    250 	.area XSEG    (XDATA)
                                    251 ;--------------------------------------------------------
                                    252 ; absolute external ram data
                                    253 ;--------------------------------------------------------
                                    254 	.area XABS    (ABS,XDATA)
                                    255 ;--------------------------------------------------------
                                    256 ; external initialized ram data
                                    257 ;--------------------------------------------------------
                                    258 	.area XISEG   (XDATA)
                                    259 	.area HOME    (CODE)
                                    260 	.area GSINIT0 (CODE)
                                    261 	.area GSINIT1 (CODE)
                                    262 	.area GSINIT2 (CODE)
                                    263 	.area GSINIT3 (CODE)
                                    264 	.area GSINIT4 (CODE)
                                    265 	.area GSINIT5 (CODE)
                                    266 	.area GSINIT  (CODE)
                                    267 	.area GSFINAL (CODE)
                                    268 	.area CSEG    (CODE)
                                    269 ;--------------------------------------------------------
                                    270 ; global & static initialisations
                                    271 ;--------------------------------------------------------
                                    272 	.area HOME    (CODE)
                                    273 	.area GSINIT  (CODE)
                                    274 	.area GSFINAL (CODE)
                                    275 	.area GSINIT  (CODE)
                                    276 ;--------------------------------------------------------
                                    277 ; Home
                                    278 ;--------------------------------------------------------
                                    279 	.area HOME    (CODE)
                                    280 	.area HOME    (CODE)
                                    281 ;--------------------------------------------------------
                                    282 ; code
                                    283 ;--------------------------------------------------------
                                    284 	.area CSEG    (CODE)
                                    285 ;------------------------------------------------------------
                                    286 ;Allocation info for local variables in function 'Main'
                                    287 ;------------------------------------------------------------
                                    288 ;row                       Allocated to registers r6 
                                    289 ;col                       Allocated to registers r3 
                                    290 ;keypad                    Allocated with name '_Main_keypad_1_2'
                                    291 ;i                         Allocated to registers r5 
                                    292 ;gotkey                    Allocated to registers r7 
                                    293 ;------------------------------------------------------------
                                    294 ;	keypad.c:16: void Main(void) {
                                    295 ;	-----------------------------------------
                                    296 ;	 function Main
                                    297 ;	-----------------------------------------
      000000                        298 _Main:
                           000007   299 	ar7 = 0x07
                           000006   300 	ar6 = 0x06
                           000005   301 	ar5 = 0x05
                           000004   302 	ar4 = 0x04
                           000003   303 	ar3 = 0x03
                           000002   304 	ar2 = 0x02
                           000001   305 	ar1 = 0x01
                           000000   306 	ar0 = 0x00
                                    307 ;	keypad.c:19: unsigned char keypad[4][3] = {   // This array contains the ASCII of the keypad keys
      000000 75 30 33         [24]  308 	mov	_Main_keypad_1_2,#0x33
      000003 75 31 32         [24]  309 	mov	(_Main_keypad_1_2 + 0x0001),#0x32
      000006 75 32 31         [24]  310 	mov	(_Main_keypad_1_2 + 0x0002),#0x31
      000009 75 33 36         [24]  311 	mov	(_Main_keypad_1_2 + 0x0003),#0x36
      00000C 75 34 35         [24]  312 	mov	(_Main_keypad_1_2 + 0x0004),#0x35
      00000F 75 35 34         [24]  313 	mov	(_Main_keypad_1_2 + 0x0005),#0x34
      000012 75 36 39         [24]  314 	mov	(_Main_keypad_1_2 + 0x0006),#0x39
      000015 75 37 38         [24]  315 	mov	(_Main_keypad_1_2 + 0x0007),#0x38
      000018 75 38 37         [24]  316 	mov	(_Main_keypad_1_2 + 0x0008),#0x37
      00001B 75 39 23         [24]  317 	mov	(_Main_keypad_1_2 + 0x0009),#0x23
      00001E 75 3A 30         [24]  318 	mov	(_Main_keypad_1_2 + 0x000a),#0x30
      000021 75 3B 2A         [24]  319 	mov	(_Main_keypad_1_2 + 0x000b),#0x2A
                                    320 ;	keypad.c:26: unsigned char gotkey = 0;
      000024 7F 00            [12]  321 	mov	r7,#0x00
                                    322 ;	keypad.c:27: while(1){
      000026                        323 00107$:
                                    324 ;	keypad.c:28: row = 0xf7;  // The first row (connected to P0.3) will be zero
      000026 7E F7            [12]  325 	mov	r6,#0xF7
                                    326 ;	keypad.c:30: for (i=0;i<4;++i){ // loop over the 4 rows
      000028 7D 00            [12]  327 	mov	r5,#0x00
      00002A 7C 00            [12]  328 	mov	r4,#0x00
      00002C                        329 00112$:
                                    330 ;	keypad.c:32: P0 = 0xff;     // Initialize the 4 rows to '1' and set the column ports to inputs
      00002C 75 80 FF         [24]  331 	mov	_P0,#0xFF
                                    332 ;	keypad.c:33: P0 = P0 & row; // clear one row at a time
      00002F EE               [12]  333 	mov	a,r6
      000030 52 80            [12]  334 	anl	_P0,a
                                    335 ;	keypad.c:34: col = P0 & 0x70;  // Read the 3 columns
      000032 74 70            [12]  336 	mov	a,#0x70
      000034 55 80            [12]  337 	anl	a,_P0
      000036 FB               [12]  338 	mov	r3,a
                                    339 ;	keypad.c:35: if (col != 0x70){ // If any column is zero i.e. a key is pressed
      000037 BB 70 02         [24]  340 	cjne	r3,#0x70,00131$
      00003A 80 19            [24]  341 	sjmp	00102$
      00003C                        342 00131$:
                                    343 ;	keypad.c:36: col = (~col) & 0x70;  // because the selected column returns zero
      00003C EB               [12]  344 	mov	a,r3
      00003D F4               [12]  345 	cpl	a
      00003E FA               [12]  346 	mov	r2,a
      00003F 74 70            [12]  347 	mov	a,#0x70
      000041 5A               [12]  348 	anl	a,r2
                                    349 ;	keypad.c:37: col = col >> 5;       // The column variable now contain the number of the selected column
      000042 C4               [12]  350 	swap	a
      000043 03               [12]  351 	rr	a
      000044 54 07            [12]  352 	anl	a,#0x07
      000046 FB               [12]  353 	mov	r3,a
                                    354 ;	keypad.c:38: gotkey = keypad[i][col]; // Get the ASCII of the corresponding pressed key
      000047 ED               [12]  355 	mov	a,r5
      000048 75 F0 03         [24]  356 	mov	b,#0x03
      00004B A4               [48]  357 	mul	ab
      00004C 24 30            [12]  358 	add	a,#_Main_keypad_1_2
      00004E FA               [12]  359 	mov	r2,a
      00004F 2B               [12]  360 	add	a,r3
      000050 F9               [12]  361 	mov	r1,a
      000051 87 07            [24]  362 	mov	ar7,@r1
                                    363 ;	keypad.c:39: break;  // Since a key was detected -> Exit the for loop
      000053 80 0F            [24]  364 	sjmp	00103$
      000055                        365 00102$:
                                    366 ;	keypad.c:41: row = row >> 1;   // No key is detected yet, try the next row
      000055 EE               [12]  367 	mov	a,r6
      000056 C3               [12]  368 	clr	c
      000057 13               [12]  369 	rrc	a
      000058 FE               [12]  370 	mov	r6,a
                                    371 ;	keypad.c:42: row = row | 0xf0; // Only one of the least 4 significant bits is '0' at a time 
      000059 43 06 F0         [24]  372 	orl	ar6,#0xF0
                                    373 ;	keypad.c:30: for (i=0;i<4;++i){ // loop over the 4 rows
      00005C 0C               [12]  374 	inc	r4
      00005D 8C 05            [24]  375 	mov	ar5,r4
      00005F BC 04 00         [24]  376 	cjne	r4,#0x04,00132$
      000062                        377 00132$:
      000062 40 C8            [24]  378 	jc	00112$
      000064                        379 00103$:
                                    380 ;	keypad.c:46: if (gotkey != 0){break;}  // Since a key was detected -> exit the while loop
      000064 EF               [12]  381 	mov	a,r7
      000065 60 BF            [24]  382 	jz	00107$
                                    383 ;	keypad.c:50: P1 = ~gotkey;  // Send the detected key to the output
      000067 EF               [12]  384 	mov	a,r7
      000068 F4               [12]  385 	cpl	a
      000069 F5 90            [12]  386 	mov	_P1,a
                                    387 ;	keypad.c:52: while(1){}
      00006B                        388 00110$:
      00006B 80 FE            [24]  389 	sjmp	00110$
                                    390 	.area CSEG    (CODE)
                                    391 	.area CONST   (CODE)
                                    392 	.area XINIT   (CODE)
                                    393 	.area CABS    (ABS,CODE)
