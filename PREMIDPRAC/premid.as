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
	FNCALL	_main,_initLCD
	FNCALL	_main,_instCtrl
	FNCALL	_initLCD,_delay
	FNCALL	_initLCD,_instCtrl
	FNCALL	_instCtrl,_delay
	FNCALL	_dataCtrl,_delay
	FNROOT	_main
	global	_input
	global	_PORTB
_PORTB	set	0x6
	global	_PORTC
_PORTC	set	0x7
	global	_PORTD
_PORTD	set	0x8
	global	_RB1
_RB1	set	0x31
	global	_RB2
_RB2	set	0x32
	global	_RD4
_RD4	set	0x44
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
	file	"premid.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
_input:
       ds      2

	line	#
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
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
?_dataCtrl:	; 0 bytes @ 0x0
?_instCtrl:	; 0 bytes @ 0x0
?_initLCD:	; 0 bytes @ 0x0
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
??_dataCtrl:	; 0 bytes @ 0x6
??_instCtrl:	; 0 bytes @ 0x6
	global	dataCtrl@DATA
dataCtrl@DATA:	; 1 bytes @ 0x6
	global	instCtrl@INST
instCtrl@INST:	; 1 bytes @ 0x6
	ds	1
??_initLCD:	; 0 bytes @ 0x7
??_main:	; 0 bytes @ 0x7
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        0
;!    BSS         2
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      7       9
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
;!    _main->_instCtrl
;!    _initLCD->_instCtrl
;!    _instCtrl->_delay
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
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 0     0      0    1710
;!                           _dataCtrl
;!                              _delay
;!                            _initLCD
;!                           _instCtrl
;! ---------------------------------------------------------------------------------
;! (1) _initLCD                                              0     0      0     681
;!                              _delay
;!                           _instCtrl
;! ---------------------------------------------------------------------------------
;! (1) _instCtrl                                             1     1      0     348
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
;!   _initLCD
;!     _delay
;!     _instCtrl
;!       _delay
;!   _instCtrl
;!     _delay
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       0       0        0.0%
;!EEDATA             100      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      7       9       1       64.3%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!STACK                0      0       0       2        0.0%
;!ABS                  0      0       9       3        0.0%
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
;!DATA                 0      0       9      12        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 53 in file "C:\Users\USER\OneDrive\Documents\premid1-1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_dataCtrl
;;		_delay
;;		_initLCD
;;		_instCtrl
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"C:\Users\USER\OneDrive\Documents\premid1-1.c"
	line	53
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\Users\USER\OneDrive\Documents\premid1-1.c"
	line	53
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 5
; Regs used in _main: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	55
	
l567:	
;premid1-1.c: 55: TRISB = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	56
;premid1-1.c: 56: TRISC = 0x00;
	clrf	(135)^080h	;volatile
	line	57
	
l569:	
;premid1-1.c: 57: TRISD = 0xFF;
	movlw	(0FFh)
	movwf	(136)^080h	;volatile
	line	59
	
l571:	
;premid1-1.c: 59: PORTB = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	60
	
l573:	
;premid1-1.c: 60: PORTC = 0x00;
	clrf	(7)	;volatile
	line	62
	
l575:	
;premid1-1.c: 62: initLCD();
	fcall	_initLCD
	goto	l577
	line	64
;premid1-1.c: 64: while(1)
	
l39:	
	line	66
	
l577:	
;premid1-1.c: 65: {
;premid1-1.c: 66: instCtrl(0x01);
	movlw	(01h)
	fcall	_instCtrl
	line	67
	
l579:	
;premid1-1.c: 67: delay(2);
	movlw	low(02h)
	movwf	(delay@cnt)
	movlw	high(02h)
	movwf	((delay@cnt))+1
	fcall	_delay
	line	69
	
l581:	
;premid1-1.c: 69: instCtrl(0x80);
	movlw	(080h)
	fcall	_instCtrl
	line	70
	
l583:	
;premid1-1.c: 70: dataCtrl('H');
	movlw	(048h)
	fcall	_dataCtrl
	line	71
	
l585:	
;premid1-1.c: 71: dataCtrl('O');
	movlw	(04Fh)
	fcall	_dataCtrl
	line	72
	
l587:	
;premid1-1.c: 72: dataCtrl('W');
	movlw	(057h)
	fcall	_dataCtrl
	line	74
	
l589:	
;premid1-1.c: 74: instCtrl(0x84);
	movlw	(084h)
	fcall	_instCtrl
	line	75
	
l591:	
;premid1-1.c: 75: dataCtrl('M');
	movlw	(04Dh)
	fcall	_dataCtrl
	line	76
	
l593:	
;premid1-1.c: 76: dataCtrl('A');
	movlw	(041h)
	fcall	_dataCtrl
	line	77
	
l595:	
;premid1-1.c: 77: dataCtrl('N');
	movlw	(04Eh)
	fcall	_dataCtrl
	line	78
	
l597:	
;premid1-1.c: 78: dataCtrl('Y');
	movlw	(059h)
	fcall	_dataCtrl
	line	80
	
l599:	
;premid1-1.c: 80: instCtrl(0x89);
	movlw	(089h)
	fcall	_instCtrl
	line	81
	
l601:	
;premid1-1.c: 81: dataCtrl('T');
	movlw	(054h)
	fcall	_dataCtrl
	line	82
	
l603:	
;premid1-1.c: 82: dataCtrl('O');
	movlw	(04Fh)
	fcall	_dataCtrl
	line	84
	
l605:	
;premid1-1.c: 84: instCtrl(0x8C);
	movlw	(08Ch)
	fcall	_instCtrl
	line	85
	
l607:	
;premid1-1.c: 85: dataCtrl('P');
	movlw	(050h)
	fcall	_dataCtrl
	line	86
	
l609:	
;premid1-1.c: 86: dataCtrl('R');
	movlw	(052h)
	fcall	_dataCtrl
	line	87
	
l611:	
;premid1-1.c: 87: dataCtrl('I');
	movlw	(049h)
	fcall	_dataCtrl
	line	88
	
l613:	
;premid1-1.c: 88: dataCtrl('N');
	movlw	(04Eh)
	fcall	_dataCtrl
	line	89
	
l615:	
;premid1-1.c: 89: dataCtrl('T');
	movlw	(054h)
	fcall	_dataCtrl
	line	90
	
l617:	
;premid1-1.c: 90: dataCtrl('?');
	movlw	(03Fh)
	fcall	_dataCtrl
	line	92
	
l619:	
;premid1-1.c: 92: instCtrl(0xC0);
	movlw	(0C0h)
	fcall	_instCtrl
	line	95
;premid1-1.c: 95: while(RD4 == 0);
	goto	l40
	
l41:	
	
l40:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(68/8),(68)&7	;volatile
	goto	u51
	goto	u50
u51:
	goto	l40
u50:
	goto	l621
	
l42:	
	line	97
	
l621:	
;premid1-1.c: 97: delay(5);
	movlw	low(05h)
	movwf	(delay@cnt)
	movlw	high(05h)
	movwf	((delay@cnt))+1
	fcall	_delay
	line	99
;premid1-1.c: 99: instCtrl(0xC0);
	movlw	(0C0h)
	fcall	_instCtrl
	line	101
	
l623:	
;premid1-1.c: 101: if((PORTD & 0x0F) == 0x00)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(8),w	;volatile
	andlw	0Fh
	btfss	status,2
	goto	u61
	goto	u60
u61:
	goto	l629
u60:
	line	103
	
l625:	
;premid1-1.c: 102: {
;premid1-1.c: 103: dataCtrl('1');
	movlw	(031h)
	fcall	_dataCtrl
	line	104
	
l627:	
;premid1-1.c: 104: input = 1;
	movlw	low(01h)
	movwf	(_input)
	movlw	high(01h)
	movwf	((_input))+1
	line	105
;premid1-1.c: 105: }
	goto	l687
	line	106
	
l43:	
	
l629:	
;premid1-1.c: 106: else if((PORTD & 0x0F) == 0x01)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(8),w	;volatile
	andlw	0Fh
	xorlw	01h
	skipz
	goto	u71
	goto	u70
u71:
	goto	l635
u70:
	line	108
	
l631:	
;premid1-1.c: 107: {
;premid1-1.c: 108: dataCtrl('2');
	movlw	(032h)
	fcall	_dataCtrl
	line	109
	
l633:	
;premid1-1.c: 109: input = 2;
	movlw	low(02h)
	movwf	(_input)
	movlw	high(02h)
	movwf	((_input))+1
	line	110
;premid1-1.c: 110: }
	goto	l687
	line	111
	
l45:	
	
l635:	
;premid1-1.c: 111: else if((PORTD & 0x0F) == 0x02)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(8),w	;volatile
	andlw	0Fh
	xorlw	02h
	skipz
	goto	u81
	goto	u80
u81:
	goto	l641
u80:
	line	113
	
l637:	
;premid1-1.c: 112: {
;premid1-1.c: 113: dataCtrl('3');
	movlw	(033h)
	fcall	_dataCtrl
	line	114
	
l639:	
;premid1-1.c: 114: input = 3;
	movlw	low(03h)
	movwf	(_input)
	movlw	high(03h)
	movwf	((_input))+1
	line	115
;premid1-1.c: 115: }
	goto	l687
	line	116
	
l47:	
	
l641:	
;premid1-1.c: 116: else if((PORTD & 0x0F) == 0x04)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(8),w	;volatile
	andlw	0Fh
	xorlw	04h
	skipz
	goto	u91
	goto	u90
u91:
	goto	l647
u90:
	line	118
	
l643:	
;premid1-1.c: 117: {
;premid1-1.c: 118: dataCtrl('4');
	movlw	(034h)
	fcall	_dataCtrl
	line	119
	
l645:	
;premid1-1.c: 119: input = 4;
	movlw	low(04h)
	movwf	(_input)
	movlw	high(04h)
	movwf	((_input))+1
	line	120
;premid1-1.c: 120: }
	goto	l687
	line	121
	
l49:	
	
l647:	
;premid1-1.c: 121: else if((PORTD & 0x0F) == 0x05)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(8),w	;volatile
	andlw	0Fh
	xorlw	05h
	skipz
	goto	u101
	goto	u100
u101:
	goto	l653
u100:
	line	123
	
l649:	
;premid1-1.c: 122: {
;premid1-1.c: 123: dataCtrl('5');
	movlw	(035h)
	fcall	_dataCtrl
	line	124
	
l651:	
;premid1-1.c: 124: input = 5;
	movlw	low(05h)
	movwf	(_input)
	movlw	high(05h)
	movwf	((_input))+1
	line	125
;premid1-1.c: 125: }
	goto	l687
	line	126
	
l51:	
	
l653:	
;premid1-1.c: 126: else if((PORTD & 0x0F) == 0x06)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(8),w	;volatile
	andlw	0Fh
	xorlw	06h
	skipz
	goto	u111
	goto	u110
u111:
	goto	l659
u110:
	line	128
	
l655:	
;premid1-1.c: 127: {
;premid1-1.c: 128: dataCtrl('6');
	movlw	(036h)
	fcall	_dataCtrl
	line	129
	
l657:	
;premid1-1.c: 129: input = 6;
	movlw	low(06h)
	movwf	(_input)
	movlw	high(06h)
	movwf	((_input))+1
	line	130
;premid1-1.c: 130: }
	goto	l687
	line	131
	
l53:	
	
l659:	
;premid1-1.c: 131: else if((PORTD & 0x0F) == 0x08)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(8),w	;volatile
	andlw	0Fh
	xorlw	08h
	skipz
	goto	u121
	goto	u120
u121:
	goto	l665
u120:
	line	133
	
l661:	
;premid1-1.c: 132: {
;premid1-1.c: 133: dataCtrl('7');
	movlw	(037h)
	fcall	_dataCtrl
	line	134
	
l663:	
;premid1-1.c: 134: input = 7;
	movlw	low(07h)
	movwf	(_input)
	movlw	high(07h)
	movwf	((_input))+1
	line	135
;premid1-1.c: 135: }
	goto	l687
	line	136
	
l55:	
	
l665:	
;premid1-1.c: 136: else if((PORTD & 0x0F) == 0x09)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(8),w	;volatile
	andlw	0Fh
	xorlw	09h
	skipz
	goto	u131
	goto	u130
u131:
	goto	l671
u130:
	line	138
	
l667:	
;premid1-1.c: 137: {
;premid1-1.c: 138: dataCtrl('8');
	movlw	(038h)
	fcall	_dataCtrl
	line	139
	
l669:	
;premid1-1.c: 139: input = 8;
	movlw	low(08h)
	movwf	(_input)
	movlw	high(08h)
	movwf	((_input))+1
	line	140
;premid1-1.c: 140: }
	goto	l687
	line	141
	
l57:	
	
l671:	
;premid1-1.c: 141: else if((PORTD & 0x0F) == 0x0A)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(8),w	;volatile
	andlw	0Fh
	xorlw	0Ah
	skipz
	goto	u141
	goto	u140
u141:
	goto	l677
u140:
	line	143
	
l673:	
;premid1-1.c: 142: {
;premid1-1.c: 143: dataCtrl('9');
	movlw	(039h)
	fcall	_dataCtrl
	line	144
	
l675:	
;premid1-1.c: 144: input = 9;
	movlw	low(09h)
	movwf	(_input)
	movlw	high(09h)
	movwf	((_input))+1
	line	145
;premid1-1.c: 145: }
	goto	l687
	line	146
	
l59:	
	
l677:	
;premid1-1.c: 146: else if((PORTD & 0x0F) == 0x0D)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(8),w	;volatile
	andlw	0Fh
	xorlw	0Dh
	skipz
	goto	u151
	goto	u150
u151:
	goto	l683
u150:
	line	148
	
l679:	
;premid1-1.c: 147: {
;premid1-1.c: 148: dataCtrl('0');
	movlw	(030h)
	fcall	_dataCtrl
	line	149
	
l681:	
;premid1-1.c: 149: input = 0;
	clrf	(_input)
	clrf	(_input+1)
	line	150
;premid1-1.c: 150: }
	goto	l687
	line	151
	
l61:	
	line	153
	
l683:	
;premid1-1.c: 151: else
;premid1-1.c: 152: {
;premid1-1.c: 153: dataCtrl('?');
	movlw	(03Fh)
	fcall	_dataCtrl
	line	154
	
l685:	
;premid1-1.c: 154: input = 0;
	clrf	(_input)
	clrf	(_input+1)
	goto	l687
	line	155
	
l62:	
	goto	l687
	
l60:	
	goto	l687
	
l58:	
	goto	l687
	
l56:	
	goto	l687
	
l54:	
	goto	l687
	
l52:	
	goto	l687
	
l50:	
	goto	l687
	
l48:	
	goto	l687
	
l46:	
	goto	l687
	
l44:	
	line	157
	
l687:	
;premid1-1.c: 155: }
;premid1-1.c: 157: instCtrl(0x94);
	movlw	(094h)
	fcall	_instCtrl
	line	158
	
l689:	
;premid1-1.c: 158: dataCtrl('P');
	movlw	(050h)
	fcall	_dataCtrl
	line	159
	
l691:	
;premid1-1.c: 159: dataCtrl('R');
	movlw	(052h)
	fcall	_dataCtrl
	line	160
	
l693:	
;premid1-1.c: 160: dataCtrl('I');
	movlw	(049h)
	fcall	_dataCtrl
	line	161
	
l695:	
;premid1-1.c: 161: dataCtrl('N');
	movlw	(04Eh)
	fcall	_dataCtrl
	line	162
	
l697:	
;premid1-1.c: 162: dataCtrl('T');
	movlw	(054h)
	fcall	_dataCtrl
	line	163
	
l699:	
;premid1-1.c: 163: dataCtrl('I');
	movlw	(049h)
	fcall	_dataCtrl
	line	164
	
l701:	
;premid1-1.c: 164: dataCtrl('N');
	movlw	(04Eh)
	fcall	_dataCtrl
	line	165
	
l703:	
;premid1-1.c: 165: dataCtrl('G');
	movlw	(047h)
	fcall	_dataCtrl
	line	167
	
l705:	
;premid1-1.c: 167: instCtrl(0x9D);
	movlw	(09Dh)
	fcall	_instCtrl
	line	168
	
l707:	
;premid1-1.c: 168: dataCtrl('1');
	movlw	(031h)
	fcall	_dataCtrl
	line	170
	
l709:	
;premid1-1.c: 170: instCtrl(0x9F);
	movlw	(09Fh)
	fcall	_instCtrl
	line	171
	
l711:	
;premid1-1.c: 171: dataCtrl('O');
	movlw	(04Fh)
	fcall	_dataCtrl
	line	172
	
l713:	
;premid1-1.c: 172: dataCtrl('F');
	movlw	(046h)
	fcall	_dataCtrl
	line	174
	
l715:	
;premid1-1.c: 174: instCtrl(0xA2);
	movlw	(0A2h)
	fcall	_instCtrl
	line	175
	
l717:	
;premid1-1.c: 175: dataCtrl(input + '0');
	movf	(_input),w
	addlw	030h
	fcall	_dataCtrl
	line	178
;premid1-1.c: 178: while(RD4 == 1);
	goto	l63
	
l64:	
	
l63:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(68/8),(68)&7	;volatile
	goto	u161
	goto	u160
u161:
	goto	l63
u160:
	goto	l719
	
l65:	
	line	179
	
l719:	
;premid1-1.c: 179: delay(5);
	movlw	low(05h)
	movwf	(delay@cnt)
	movlw	high(05h)
	movwf	((delay@cnt))+1
	fcall	_delay
	goto	l577
	line	180
	
l66:	
	line	64
	goto	l577
	
l67:	
	line	181
	
l68:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_initLCD

;; *************** function _initLCD *****************
;; Defined at:
;;		line 43 in file "C:\Users\USER\OneDrive\Documents\premid1-1.c"
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
;;		_instCtrl
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	line	43
global __ptext1
__ptext1:	;psect for function _initLCD
psect	text1
	file	"C:\Users\USER\OneDrive\Documents\premid1-1.c"
	line	43
	global	__size_of_initLCD
	__size_of_initLCD	equ	__end_of_initLCD-_initLCD
	
_initLCD:	
;incstack = 0
	opt	stack 5
; Regs used in _initLCD: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	45
	
l565:	
;premid1-1.c: 45: delay(20);
	movlw	low(014h)
	movwf	(delay@cnt)
	movlw	high(014h)
	movwf	((delay@cnt))+1
	fcall	_delay
	line	46
;premid1-1.c: 46: instCtrl(0x38);
	movlw	(038h)
	fcall	_instCtrl
	line	47
;premid1-1.c: 47: instCtrl(0x08);
	movlw	(08h)
	fcall	_instCtrl
	line	48
;premid1-1.c: 48: instCtrl(0x01);
	movlw	(01h)
	fcall	_instCtrl
	line	49
;premid1-1.c: 49: instCtrl(0x06);
	movlw	(06h)
	fcall	_instCtrl
	line	50
;premid1-1.c: 50: instCtrl(0x0E);
	movlw	(0Eh)
	fcall	_instCtrl
	line	51
	
l36:	
	return
	opt stack 0
GLOBAL	__end_of_initLCD
	__end_of_initLCD:
	signat	_initLCD,88
	global	_instCtrl

;; *************** function _instCtrl *****************
;; Defined at:
;;		line 34 in file "C:\Users\USER\OneDrive\Documents\premid1-1.c"
;; Parameters:    Size  Location     Type
;;  INST            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  INST            1    6[COMMON] unsigned char 
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
;;		_initLCD
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	line	34
global __ptext2
__ptext2:	;psect for function _instCtrl
psect	text2
	file	"C:\Users\USER\OneDrive\Documents\premid1-1.c"
	line	34
	global	__size_of_instCtrl
	__size_of_instCtrl	equ	__end_of_instCtrl-_instCtrl
	
_instCtrl:	
;incstack = 0
	opt	stack 6
; Regs used in _instCtrl: [wreg+status,2+status,0+btemp+1+pclath+cstack]
;instCtrl@INST stored from wreg
	movwf	(instCtrl@INST)
	line	36
	
l545:	
;premid1-1.c: 36: PORTC = INST;
	movf	(instCtrl@INST),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	37
	
l547:	
;premid1-1.c: 37: RB1 = 0;
	bcf	(49/8),(49)&7	;volatile
	line	38
	
l549:	
;premid1-1.c: 38: RB2 = 1;
	bsf	(50/8),(50)&7	;volatile
	line	39
	
l551:	
;premid1-1.c: 39: delay(1);
	movlw	low(01h)
	movwf	(delay@cnt)
	movlw	high(01h)
	movwf	((delay@cnt))+1
	fcall	_delay
	line	40
	
l553:	
;premid1-1.c: 40: RB2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(50/8),(50)&7	;volatile
	line	41
	
l33:	
	return
	opt stack 0
GLOBAL	__end_of_instCtrl
	__end_of_instCtrl:
	signat	_instCtrl,4216
	global	_dataCtrl

;; *************** function _dataCtrl *****************
;; Defined at:
;;		line 25 in file "C:\Users\USER\OneDrive\Documents\premid1-1.c"
;; Parameters:    Size  Location     Type
;;  DATA            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  DATA            1    6[COMMON] unsigned char 
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
	line	25
global __ptext3
__ptext3:	;psect for function _dataCtrl
psect	text3
	file	"C:\Users\USER\OneDrive\Documents\premid1-1.c"
	line	25
	global	__size_of_dataCtrl
	__size_of_dataCtrl	equ	__end_of_dataCtrl-_dataCtrl
	
_dataCtrl:	
;incstack = 0
	opt	stack 6
; Regs used in _dataCtrl: [wreg+status,2+status,0+btemp+1+pclath+cstack]
;dataCtrl@DATA stored from wreg
	movwf	(dataCtrl@DATA)
	line	27
	
l555:	
;premid1-1.c: 27: PORTC = DATA;
	movf	(dataCtrl@DATA),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	28
	
l557:	
;premid1-1.c: 28: RB1 = 1;
	bsf	(49/8),(49)&7	;volatile
	line	29
	
l559:	
;premid1-1.c: 29: RB2 = 1;
	bsf	(50/8),(50)&7	;volatile
	line	30
	
l561:	
;premid1-1.c: 30: delay(1);
	movlw	low(01h)
	movwf	(delay@cnt)
	movlw	high(01h)
	movwf	((delay@cnt))+1
	fcall	_delay
	line	31
	
l563:	
;premid1-1.c: 31: RB2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(50/8),(50)&7	;volatile
	line	32
	
l30:	
	return
	opt stack 0
GLOBAL	__end_of_dataCtrl
	__end_of_dataCtrl:
	signat	_dataCtrl,4216
	global	_delay

;; *************** function _delay *****************
;; Defined at:
;;		line 16 in file "C:\Users\USER\OneDrive\Documents\premid1-1.c"
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
;;		_dataCtrl
;;		_instCtrl
;;		_initLCD
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1
	line	16
global __ptext4
__ptext4:	;psect for function _delay
psect	text4
	file	"C:\Users\USER\OneDrive\Documents\premid1-1.c"
	line	16
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
;incstack = 0
	opt	stack 6
; Regs used in _delay: [wreg+status,2+status,0+btemp+1]
	line	19
	
l525:	
;premid1-1.c: 18: int i, j;
;premid1-1.c: 19: for(i = cnt; i != 0; i--)
	movf	(delay@cnt+1),w
	clrf	(delay@i+1)
	addwf	(delay@i+1)
	movf	(delay@cnt),w
	clrf	(delay@i)
	addwf	(delay@i)

	
l527:	
	movf	((delay@i+1)),w
	iorwf	((delay@i)),w
	skipz
	goto	u11
	goto	u10
u11:
	goto	l531
u10:
	goto	l27
	
l529:	
	goto	l27
	line	20
	
l23:	
	line	21
	
l531:	
;premid1-1.c: 20: {
;premid1-1.c: 21: for(j = 0; j < 3000; j++) {;}
	clrf	(delay@j)
	clrf	(delay@j+1)
	
l533:	
	movf	(delay@j+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0BB8h))^80h
	subwf	btemp+1,w
	skipz
	goto	u25
	movlw	low(0BB8h)
	subwf	(delay@j),w
u25:

	skipc
	goto	u21
	goto	u20
u21:
	goto	l537
u20:
	goto	l541
	
l535:	
	goto	l541
	
l25:	
	
l537:	
	movlw	low(01h)
	addwf	(delay@j),f
	skipnc
	incf	(delay@j+1),f
	movlw	high(01h)
	addwf	(delay@j+1),f
	
l539:	
	movf	(delay@j+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0BB8h))^80h
	subwf	btemp+1,w
	skipz
	goto	u35
	movlw	low(0BB8h)
	subwf	(delay@j),w
u35:

	skipc
	goto	u31
	goto	u30
u31:
	goto	l537
u30:
	goto	l541
	
l26:	
	line	19
	
l541:	
	movlw	low(-1)
	addwf	(delay@i),f
	skipnc
	incf	(delay@i+1),f
	movlw	high(-1)
	addwf	(delay@i+1),f
	
l543:	
	movf	((delay@i+1)),w
	iorwf	((delay@i)),w
	skipz
	goto	u41
	goto	u40
u41:
	goto	l531
u40:
	goto	l27
	
l24:	
	line	23
	
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
