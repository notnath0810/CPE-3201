opt subtitle "Microchip Technology Omniscient Code Generator (Lite mode) build 59893"

opt pagewidth 120

	opt lm

	processor	16F877A
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
# 49 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
INDF equ 00h ;# 
# 55 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR0 equ 01h ;# 
# 61 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCL equ 02h ;# 
# 67 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
STATUS equ 03h ;# 
# 154 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
FSR equ 04h ;# 
# 160 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTA equ 05h ;# 
# 209 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTB equ 06h ;# 
# 270 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTC equ 07h ;# 
# 331 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTD equ 08h ;# 
# 392 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTE equ 09h ;# 
# 423 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 442 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
INTCON equ 0Bh ;# 
# 519 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 580 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 619 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 625 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 631 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 637 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
T1CON equ 010h ;# 
# 711 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR2 equ 011h ;# 
# 717 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
T2CON equ 012h ;# 
# 787 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPBUF equ 013h ;# 
# 793 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPCON equ 014h ;# 
# 862 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1 equ 015h ;# 
# 868 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1L equ 015h ;# 
# 874 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1H equ 016h ;# 
# 880 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCP1CON equ 017h ;# 
# 937 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
RCSTA equ 018h ;# 
# 1031 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TXREG equ 019h ;# 
# 1037 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1043 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1049 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1055 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1061 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1118 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1124 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1219 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1288 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISA equ 085h ;# 
# 1337 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISB equ 086h ;# 
# 1398 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISC equ 087h ;# 
# 1459 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISD equ 088h ;# 
# 1520 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISE equ 089h ;# 
# 1576 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1637 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1676 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCON equ 08Eh ;# 
# 1709 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1770 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PR2 equ 092h ;# 
# 1776 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPADD equ 093h ;# 
# 1782 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 1950 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TXSTA equ 098h ;# 
# 2030 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SPBRG equ 099h ;# 
# 2036 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2105 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2169 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2175 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2233 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2239 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2245 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2251 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2257 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2301 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EECON2 equ 018Dh ;# 
	FNCALL	_main,_dataCtrl
	FNCALL	_main,_delay
	FNCALL	_main,_initializeLCD
	FNCALL	_main,_instructCtrl
	FNCALL	_initializeLCD,_delay
	FNCALL	_initializeLCD,_instructCtrl
	FNCALL	_instructCtrl,_delay
	FNCALL	_dataCtrl,_delay
	FNROOT	_main
	global	_PORTC
_PORTC	set	0x7
	global	_PORTD
_PORTD	set	0x8
	global	_RB0
_RB0	set	0x30
	global	_RB1
_RB1	set	0x31
	global	_RB2
_RB2	set	0x32
	global	_RD0
_RD0	set	0x40
	global	_OPTION_REG
_OPTION_REG	set	0x81
	global	_TRISB
_TRISB	set	0x86
	global	_TRISC
_TRISC	set	0x87
	global	_TRISD
_TRISD	set	0x88
psect	text0,local,class=CODE,delta=2,merge=1
; #config settings
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
	line	2761
global __ptext0
__ptext0:	;psect for function _delay
global __CFG_WDTE$OFF
__CFG_WDTE$OFF equ 0x0
global __CFG_PWRTE$ON
__CFG_PWRTE$ON equ 0x0
global __CFG_CP$OFF
__CFG_CP$OFF equ 0x0
global __CFG_BOREN$ON
__CFG_BOREN$ON equ 0x0
global __CFG_LVP$OFF
__CFG_LVP$OFF equ 0x0
global __CFG_CPD$OFF
__CFG_CPD$OFF equ 0x0
global __CFG_WRT$OFF
__CFG_WRT$OFF equ 0x0
global __CFG_FOSC$XT
__CFG_FOSC$XT equ 0x0
	file	"PracticalActivity2.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_delay:	; 0 bytes @ 0x0
?_instructCtrl:	; 0 bytes @ 0x0
?_initializeLCD:	; 0 bytes @ 0x0
?_dataCtrl:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
	global	delay@cnt
delay@cnt:	; 2 bytes @ 0x0
	ds	2
??_delay:	; 0 bytes @ 0x2
	global	delay@i
delay@i:	; 2 bytes @ 0x2
	ds	2
	global	delay@j
delay@j:	; 2 bytes @ 0x4
	ds	2
??_instructCtrl:	; 0 bytes @ 0x6
??_dataCtrl:	; 0 bytes @ 0x6
	global	instructCtrl@inst
instructCtrl@inst:	; 1 bytes @ 0x6
	global	dataCtrl@data_in
dataCtrl@data_in:	; 1 bytes @ 0x6
	ds	1
??_initializeLCD:	; 0 bytes @ 0x7
??_main:	; 0 bytes @ 0x7
	ds	1
	global	main@data
main@data:	; 1 bytes @ 0x8
	ds	1
	global	main@cnt
main@cnt:	; 2 bytes @ 0x9
	ds	2
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        0
;!    BSS         0
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14     11      11
;!    BANK0            80      0       0
;!    BANK1            80      0       0
;!    BANK3            96      0       0
;!    BANK2            96      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMMON
;!
;!    _main->_dataCtrl
;!    _main->_instructCtrl
;!    _initializeLCD->_instructCtrl
;!    _instructCtrl->_delay
;!    _dataCtrl->_delay
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 1, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 4     4      0    1785
;!                                              7 COMMON     4     4      0
;!                           _dataCtrl
;!                              _delay
;!                      _initializeLCD
;!                       _instructCtrl
;! ---------------------------------------------------------------------------------
;! (1) _initializeLCD                                        0     0      0     681
;!                              _delay
;!                       _instructCtrl
;! ---------------------------------------------------------------------------------
;! (1) _instructCtrl                                         1     1      0     348
;!                                              6 COMMON     1     1      0
;!                              _delay
;! ---------------------------------------------------------------------------------
;! (1) _dataCtrl                                             1     1      0     348
;!                                              6 COMMON     1     1      0
;!                              _delay
;! ---------------------------------------------------------------------------------
;! (2) _delay                                                6     4      2     333
;!                                              0 COMMON     6     4      2
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 2
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _dataCtrl
;!     _delay
;!   _delay
;!   _initializeLCD
;!     _delay
;!     _instructCtrl
;!       _delay
;!   _instructCtrl
;!     _delay
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       0       0        0.0%
;!EEDATA             100      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      B       B       1       78.6%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!STACK                0      0       0       2        0.0%
;!ABS                  0      0       0       3        0.0%
;!BITBANK0            50      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BANK0               50      0       0       5        0.0%
;!BITSFR2              0      0       0       5        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITBANK1            50      0       0       6        0.0%
;!BANK1               50      0       0       7        0.0%
;!BITBANK3            60      0       0       8        0.0%
;!BANK3               60      0       0       9        0.0%
;!BITBANK2            60      0       0      10        0.0%
;!BANK2               60      0       0      11        0.0%
;!DATA                 0      0       0      12        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 51 in file "Z:\CPE3201-Padas\PracticalActivities\PA2\PracticalActivity2.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  cnt             2    9[COMMON] int 
;;  data            1    8[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_dataCtrl
;;		_delay
;;		_initializeLCD
;;		_instructCtrl
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"Z:\CPE3201-Padas\PracticalActivities\PA2\PracticalActivity2.c"
	line	51
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"Z:\CPE3201-Padas\PracticalActivities\PA2\PracticalActivity2.c"
	line	51
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 5
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	52
	
l564:	
;PracticalActivity2.c: 52: OPTION_REG = 0xC0;
	movlw	(0C0h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(129)^080h	;volatile
	line	53
	
l566:	
;PracticalActivity2.c: 53: TRISB = 0x00;
	clrf	(134)^080h	;volatile
	line	54
	
l568:	
;PracticalActivity2.c: 54: TRISC = 0x00;
	clrf	(135)^080h	;volatile
	line	55
;PracticalActivity2.c: 55: TRISD = 0xF1;
	movlw	(0F1h)
	movwf	(136)^080h	;volatile
	line	57
	
l570:	
;PracticalActivity2.c: 57: int cnt = 0;
	clrf	(main@cnt)
	clrf	(main@cnt+1)
	line	61
	
l572:	
;PracticalActivity2.c: 59: unsigned char data;
;PracticalActivity2.c: 61: initializeLCD();
	fcall	_initializeLCD
	goto	l574
	line	63
;PracticalActivity2.c: 63: while(1) {
	
l39:	
	line	64
	
l574:	
;PracticalActivity2.c: 64: if(RD0 == 1) {
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(64/8),(64)&7	;volatile
	goto	u51
	goto	u50
u51:
	goto	l574
u50:
	line	65
	
l576:	
;PracticalActivity2.c: 65: data = PORTD & 0xF0;
	movf	(8),w	;volatile
	andlw	0F0h
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@data)
	line	66
	
l578:	
;PracticalActivity2.c: 66: cnt++;
	movlw	low(01h)
	addwf	(main@cnt),f
	skipnc
	incf	(main@cnt+1),f
	movlw	high(01h)
	addwf	(main@cnt+1),f
	line	68
;PracticalActivity2.c: 68: switch(data){
	goto	l606
	line	69
;PracticalActivity2.c: 69: case 0x00: dataCtrl('1');
	
l42:	
	
l580:	
	movlw	(031h)
	fcall	_dataCtrl
	line	70
;PracticalActivity2.c: 70: break;
	goto	l608
	line	72
;PracticalActivity2.c: 72: case 0x10: dataCtrl('2');
	
l44:	
	
l582:	
	movlw	(032h)
	fcall	_dataCtrl
	line	73
;PracticalActivity2.c: 73: break;
	goto	l608
	line	75
;PracticalActivity2.c: 75: case 0x20: dataCtrl('3');
	
l45:	
	
l584:	
	movlw	(033h)
	fcall	_dataCtrl
	line	76
;PracticalActivity2.c: 76: break;
	goto	l608
	line	78
;PracticalActivity2.c: 78: case 0x40: dataCtrl('4');
	
l46:	
	
l586:	
	movlw	(034h)
	fcall	_dataCtrl
	line	79
;PracticalActivity2.c: 79: break;
	goto	l608
	line	81
;PracticalActivity2.c: 81: case 0x50: dataCtrl('5');
	
l47:	
	
l588:	
	movlw	(035h)
	fcall	_dataCtrl
	line	82
;PracticalActivity2.c: 82: break;
	goto	l608
	line	84
;PracticalActivity2.c: 84: case 0x60: dataCtrl('6');
	
l48:	
	
l590:	
	movlw	(036h)
	fcall	_dataCtrl
	line	85
;PracticalActivity2.c: 85: break;
	goto	l608
	line	87
;PracticalActivity2.c: 87: case 0x80: dataCtrl('7');
	
l49:	
	
l592:	
	movlw	(037h)
	fcall	_dataCtrl
	line	88
;PracticalActivity2.c: 88: break;
	goto	l608
	line	90
;PracticalActivity2.c: 90: case 0x90: dataCtrl('8');
	
l50:	
	
l594:	
	movlw	(038h)
	fcall	_dataCtrl
	line	91
;PracticalActivity2.c: 91: break;
	goto	l608
	line	93
;PracticalActivity2.c: 93: case 0xA0: dataCtrl('9');
	
l51:	
	
l596:	
	movlw	(039h)
	fcall	_dataCtrl
	line	94
;PracticalActivity2.c: 94: break;
	goto	l608
	line	96
;PracticalActivity2.c: 96: case 0xD0: dataCtrl('0');
	
l52:	
	
l598:	
	movlw	(030h)
	fcall	_dataCtrl
	line	97
;PracticalActivity2.c: 97: break;
	goto	l608
	line	99
;PracticalActivity2.c: 99: case 0xC0: dataCtrl('*');
	
l53:	
	
l600:	
	movlw	(02Ah)
	fcall	_dataCtrl
	line	100
;PracticalActivity2.c: 100: break;
	goto	l608
	line	102
;PracticalActivity2.c: 102: case 0xE0: dataCtrl('#');
	
l54:	
	
l602:	
	movlw	(023h)
	fcall	_dataCtrl
	line	103
;PracticalActivity2.c: 103: break;
	goto	l608
	line	104
	
l604:	
;PracticalActivity2.c: 104: }
	goto	l608
	line	68
	
l41:	
	
l606:	
	movf	(main@data),w
	; Switch size 1, requested type "space"
; Number of cases is 12, Range of values is 0 to 224
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           37    19 (average)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l580
	xorlw	16^0	; case 16
	skipnz
	goto	l582
	xorlw	32^16	; case 32
	skipnz
	goto	l584
	xorlw	64^32	; case 64
	skipnz
	goto	l586
	xorlw	80^64	; case 80
	skipnz
	goto	l588
	xorlw	96^80	; case 96
	skipnz
	goto	l590
	xorlw	128^96	; case 128
	skipnz
	goto	l592
	xorlw	144^128	; case 144
	skipnz
	goto	l594
	xorlw	160^144	; case 160
	skipnz
	goto	l596
	xorlw	192^160	; case 192
	skipnz
	goto	l600
	xorlw	208^192	; case 208
	skipnz
	goto	l598
	xorlw	224^208	; case 224
	skipnz
	goto	l602
	goto	l608
	opt asmopt_on

	line	104
	
l43:	
	line	106
	
l608:	
;PracticalActivity2.c: 106: if(cnt == 20) {
	movlw	014h
	xorwf	(main@cnt),w
	iorwf	(main@cnt+1),w
	skipz
	goto	u61
	goto	u60
u61:
	goto	l612
u60:
	line	107
	
l610:	
;PracticalActivity2.c: 107: instructCtrl(0xC0);
	movlw	(0C0h)
	fcall	_instructCtrl
	line	108
;PracticalActivity2.c: 108: delay(10);
	movlw	low(0Ah)
	movwf	(delay@cnt)
	movlw	high(0Ah)
	movwf	((delay@cnt))+1
	fcall	_delay
	goto	l612
	line	109
	
l55:	
	line	111
	
l612:	
;PracticalActivity2.c: 109: }
;PracticalActivity2.c: 111: if(cnt == 40) {
	movlw	028h
	xorwf	(main@cnt),w
	iorwf	(main@cnt+1),w
	skipz
	goto	u71
	goto	u70
u71:
	goto	l616
u70:
	line	112
	
l614:	
;PracticalActivity2.c: 112: instructCtrl(0x94);
	movlw	(094h)
	fcall	_instructCtrl
	line	113
;PracticalActivity2.c: 113: delay(10);
	movlw	low(0Ah)
	movwf	(delay@cnt)
	movlw	high(0Ah)
	movwf	((delay@cnt))+1
	fcall	_delay
	goto	l616
	line	114
	
l56:	
	line	116
	
l616:	
;PracticalActivity2.c: 114: }
;PracticalActivity2.c: 116: if(cnt == 60) {
	movlw	03Ch
	xorwf	(main@cnt),w
	iorwf	(main@cnt+1),w
	skipz
	goto	u81
	goto	u80
u81:
	goto	l620
u80:
	line	117
	
l618:	
;PracticalActivity2.c: 117: instructCtrl(0xD4);
	movlw	(0D4h)
	fcall	_instructCtrl
	line	118
;PracticalActivity2.c: 118: delay(10);
	movlw	low(0Ah)
	movwf	(delay@cnt)
	movlw	high(0Ah)
	movwf	((delay@cnt))+1
	fcall	_delay
	goto	l620
	line	119
	
l57:	
	line	121
	
l620:	
;PracticalActivity2.c: 119: }
;PracticalActivity2.c: 121: if(cnt == 80) {
	movlw	050h
	xorwf	(main@cnt),w
	iorwf	(main@cnt+1),w
	skipz
	goto	u91
	goto	u90
u91:
	goto	l574
u90:
	line	122
	
l622:	
;PracticalActivity2.c: 122: initializeLCD();
	fcall	_initializeLCD
	line	123
	
l624:	
;PracticalActivity2.c: 123: cnt = 0;
	clrf	(main@cnt)
	clrf	(main@cnt+1)
	goto	l574
	line	124
	
l58:	
	goto	l574
	line	125
	
l40:	
	goto	l574
	line	126
	
l59:	
	line	63
	goto	l574
	
l60:	
	line	127
	
l61:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_initializeLCD

;; *************** function _initializeLCD *****************
;; Defined at:
;;		line 30 in file "Z:\CPE3201-Padas\PracticalActivities\PA2\PracticalActivity2.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_delay
;;		_instructCtrl
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	line	30
global __ptext1
__ptext1:	;psect for function _initializeLCD
psect	text1
	file	"Z:\CPE3201-Padas\PracticalActivities\PA2\PracticalActivity2.c"
	line	30
	global	__size_of_initializeLCD
	__size_of_initializeLCD	equ	__end_of_initializeLCD-_initializeLCD
	
_initializeLCD:	
;incstack = 0
	opt	stack 5
; Regs used in _initializeLCD: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	31
	
l550:	
;PracticalActivity2.c: 31: instructCtrl(0x38);
	movlw	(038h)
	fcall	_instructCtrl
	line	33
;PracticalActivity2.c: 33: delay(10);
	movlw	low(0Ah)
	movwf	(delay@cnt)
	movlw	high(0Ah)
	movwf	((delay@cnt))+1
	fcall	_delay
	line	35
;PracticalActivity2.c: 35: instructCtrl(0x0C);
	movlw	(0Ch)
	fcall	_instructCtrl
	line	36
;PracticalActivity2.c: 36: instructCtrl(0x01);
	movlw	(01h)
	fcall	_instructCtrl
	line	37
;PracticalActivity2.c: 37: instructCtrl(0x06);
	movlw	(06h)
	fcall	_instructCtrl
	line	38
;PracticalActivity2.c: 38: instructCtrl(0x0F);
	movlw	(0Fh)
	fcall	_instructCtrl
	line	39
	
l33:	
	return
	opt stack 0
GLOBAL	__end_of_initializeLCD
	__end_of_initializeLCD:
	signat	_initializeLCD,88
	global	_instructCtrl

;; *************** function _instructCtrl *****************
;; Defined at:
;;		line 20 in file "Z:\CPE3201-Padas\PracticalActivities\PA2\PracticalActivity2.c"
;; Parameters:    Size  Location     Type
;;  inst            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  inst            1    6[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay
;; This function is called by:
;;		_initializeLCD
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	line	20
global __ptext2
__ptext2:	;psect for function _instructCtrl
psect	text2
	file	"Z:\CPE3201-Padas\PracticalActivities\PA2\PracticalActivity2.c"
	line	20
	global	__size_of_instructCtrl
	__size_of_instructCtrl	equ	__end_of_instructCtrl-_instructCtrl
	
_instructCtrl:	
;incstack = 0
	opt	stack 6
; Regs used in _instructCtrl: [wreg+status,2+status,0+btemp+1+pclath+cstack]
;instructCtrl@inst stored from wreg
	movwf	(instructCtrl@inst)
	line	21
	
l538:	
;PracticalActivity2.c: 21: PORTC = inst;
	movf	(instructCtrl@inst),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	22
	
l540:	
;PracticalActivity2.c: 22: RB0 = 0;
	bcf	(48/8),(48)&7	;volatile
	line	23
	
l542:	
;PracticalActivity2.c: 23: RB2 = 0;
	bcf	(50/8),(50)&7	;volatile
	line	24
	
l544:	
;PracticalActivity2.c: 24: RB1 = 1;
	bsf	(49/8),(49)&7	;volatile
	line	25
	
l546:	
;PracticalActivity2.c: 25: delay(1);
	movlw	low(01h)
	movwf	(delay@cnt)
	movlw	high(01h)
	movwf	((delay@cnt))+1
	fcall	_delay
	line	27
	
l548:	
;PracticalActivity2.c: 27: RB1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(49/8),(49)&7	;volatile
	line	28
	
l30:	
	return
	opt stack 0
GLOBAL	__end_of_instructCtrl
	__end_of_instructCtrl:
	signat	_instructCtrl,4216
	global	_dataCtrl

;; *************** function _dataCtrl *****************
;; Defined at:
;;		line 41 in file "Z:\CPE3201-Padas\PracticalActivities\PA2\PracticalActivity2.c"
;; Parameters:    Size  Location     Type
;;  data_in         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data_in         1    6[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1
	line	41
global __ptext3
__ptext3:	;psect for function _dataCtrl
psect	text3
	file	"Z:\CPE3201-Padas\PracticalActivities\PA2\PracticalActivity2.c"
	line	41
	global	__size_of_dataCtrl
	__size_of_dataCtrl	equ	__end_of_dataCtrl-_dataCtrl
	
_dataCtrl:	
;incstack = 0
	opt	stack 6
; Regs used in _dataCtrl: [wreg+status,2+status,0+btemp+1+pclath+cstack]
;dataCtrl@data_in stored from wreg
	movwf	(dataCtrl@data_in)
	line	42
	
l552:	
;PracticalActivity2.c: 42: PORTC = data_in;
	movf	(dataCtrl@data_in),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	43
	
l554:	
;PracticalActivity2.c: 43: RB0 = 1;
	bsf	(48/8),(48)&7	;volatile
	line	44
	
l556:	
;PracticalActivity2.c: 44: RB2 = 0;
	bcf	(50/8),(50)&7	;volatile
	line	45
	
l558:	
;PracticalActivity2.c: 45: RB1 = 1;
	bsf	(49/8),(49)&7	;volatile
	line	46
	
l560:	
;PracticalActivity2.c: 46: delay(5);
	movlw	low(05h)
	movwf	(delay@cnt)
	movlw	high(05h)
	movwf	((delay@cnt))+1
	fcall	_delay
	line	48
	
l562:	
;PracticalActivity2.c: 48: RB1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(49/8),(49)&7	;volatile
	line	49
	
l36:	
	return
	opt stack 0
GLOBAL	__end_of_dataCtrl
	__end_of_dataCtrl:
	signat	_dataCtrl,4216
	global	_delay

;; *************** function _delay *****************
;; Defined at:
;;		line 14 in file "Z:\CPE3201-Padas\PracticalActivities\PA2\PracticalActivity2.c"
;; Parameters:    Size  Location     Type
;;  cnt             2    0[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  j               2    4[COMMON] int 
;;  i               2    2[COMMON] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         4       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_instructCtrl
;;		_initializeLCD
;;		_dataCtrl
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1
	line	14
global __ptext4
__ptext4:	;psect for function _delay
psect	text4
	file	"Z:\CPE3201-Padas\PracticalActivities\PA2\PracticalActivity2.c"
	line	14
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
;incstack = 0
	opt	stack 6
; Regs used in _delay: [wreg+status,2+status,0+btemp+1]
	line	16
	
l518:	
;PracticalActivity2.c: 15: int i, j;
;PracticalActivity2.c: 16: for(i = cnt; i != 0; i--)
	movf	(delay@cnt+1),w
	clrf	(delay@i+1)
	addwf	(delay@i+1)
	movf	(delay@cnt),w
	clrf	(delay@i)
	addwf	(delay@i)

	
l520:	
	movf	((delay@i+1)),w
	iorwf	((delay@i)),w
	skipz
	goto	u11
	goto	u10
u11:
	goto	l524
u10:
	goto	l27
	
l522:	
	goto	l27
	line	17
	
l23:	
	
l524:	
;PracticalActivity2.c: 17: for(j = 0; j < 1000; j++);
	clrf	(delay@j)
	clrf	(delay@j+1)
	
l526:	
	movf	(delay@j+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03E8h))^80h
	subwf	btemp+1,w
	skipz
	goto	u25
	movlw	low(03E8h)
	subwf	(delay@j),w
u25:

	skipc
	goto	u21
	goto	u20
u21:
	goto	l530
u20:
	goto	l534
	
l528:	
	goto	l534
	
l25:	
	
l530:	
	movlw	low(01h)
	addwf	(delay@j),f
	skipnc
	incf	(delay@j+1),f
	movlw	high(01h)
	addwf	(delay@j+1),f
	
l532:	
	movf	(delay@j+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03E8h))^80h
	subwf	btemp+1,w
	skipz
	goto	u35
	movlw	low(03E8h)
	subwf	(delay@j),w
u35:

	skipc
	goto	u31
	goto	u30
u31:
	goto	l530
u30:
	goto	l534
	
l26:	
	line	16
	
l534:	
	movlw	low(-1)
	addwf	(delay@i),f
	skipnc
	incf	(delay@i+1),f
	movlw	high(-1)
	addwf	(delay@i+1),f
	
l536:	
	movf	((delay@i+1)),w
	iorwf	((delay@i)),w
	skipz
	goto	u41
	goto	u40
u41:
	goto	l524
u40:
	goto	l27
	
l24:	
	line	18
	
l27:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
	signat	_delay,4216
global	___latbits
___latbits	equ	2
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp
	global	wtemp0
	wtemp set btemp
	wtemp0 set btemp
	global	wtemp1
	wtemp1 set btemp+2
	global	wtemp2
	wtemp2 set btemp+4
	global	wtemp3
	wtemp3 set btemp+6
	global	wtemp4
	wtemp4 set btemp+8
	global	wtemp5
	wtemp5 set btemp+10
	global	wtemp6
	wtemp6 set btemp+1
	global	ttemp
	global	ttemp0
	ttemp set btemp
	ttemp0 set btemp
	global	ttemp1
	ttemp1 set btemp+3
	global	ttemp2
	ttemp2 set btemp+6
	global	ttemp3
	ttemp3 set btemp+9
	global	ttemp4
	ttemp4 set btemp+1
	global	ltemp
	global	ltemp0
	ltemp set btemp
	ltemp0 set btemp
	global	ltemp1
	ltemp1 set btemp+4
	global	ltemp2
	ltemp2 set btemp+8
	global	ltemp3
	ltemp3 set btemp+2
	end
