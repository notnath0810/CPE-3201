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
	FNCALL	_main,_delay
	FNROOT	_main
	FNCALL	intlevel1,_ISR
	global	intlevel1
	FNROOT	intlevel1
	global	_count_flag
psect	idataBANK0,class=CODE,space=0,delta=2,noexec
global __pidataBANK0
__pidataBANK0:
	file	"C:\School Work\Embedded System\LE3\PracticalActivity3.c"
	line	27

;initializer for _count_flag
	retlw	01h
	retlw	0

	global	_segment
	global	_PORTC
_PORTC	set	0x7
	global	_PORTD
_PORTD	set	0x8
	global	_GIE
_GIE	set	0x5F
	global	_INTE
_INTE	set	0x5C
	global	_INTF
_INTF	set	0x59
	global	_PEIE
_PEIE	set	0x5E
	global	_TMR0IE
_TMR0IE	set	0x5D
	global	_TMR0IF
_TMR0IF	set	0x5A
	global	_OPTION_REG
_OPTION_REG	set	0x81
	global	_TRISB
_TRISB	set	0x86
	global	_TRISC
_TRISC	set	0x87
	global	_TRISD
_TRISD	set	0x88
; #config settings
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
	file	"PracticalActivity3.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_segment:
       ds      2

psect	dataBANK0,class=BANK0,space=1,noexec
global __pdataBANK0
__pdataBANK0:
	file	"C:\School Work\Embedded System\LE3\PracticalActivity3.c"
	line	27
_count_flag:
       ds      2

	file	"PracticalActivity3.as"
	line	#
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	line	#
; Initialize objects allocated to BANK0
	global __pidataBANK0
psect cinit,class=CODE,delta=2,merge=1
	fcall	__pidataBANK0+0		;fetch initializer
	movwf	__pdataBANK0+0&07fh		
	fcall	__pidataBANK0+1		;fetch initializer
	movwf	__pdataBANK0+1&07fh		
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_ISR:	; 0 bytes @ 0x0
??_ISR:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
	ds	6
	global	ISR@read
ISR@read:	; 2 bytes @ 0x6
	ds	2
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
?_delay:	; 0 bytes @ 0x0
	global	delay@counter
delay@counter:	; 2 bytes @ 0x0
	ds	2
??_delay:	; 0 bytes @ 0x2
	ds	1
	global	delay@of_count
delay@of_count:	; 2 bytes @ 0x3
	ds	2
??_main:	; 0 bytes @ 0x5
	global	main@i
main@i:	; 2 bytes @ 0x5
	ds	2
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        2
;!    BSS         2
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      8       8
;!    BANK0            80      7      11
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
;!    None.
;!
;!Critical Paths under _ISR in COMMON
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_delay
;!
;!Critical Paths under _ISR in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK2
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
;! (0) _main                                                 2     2      0     145
;!                                              5 BANK0      2     2      0
;!                              _delay
;! ---------------------------------------------------------------------------------
;! (1) _delay                                                5     3      2      99
;!                                              0 BANK0      5     3      2
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 1
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (2) _ISR                                                  8     8      0      23
;!                                              0 COMMON     8     8      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 2
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _delay
;!
;! _ISR (ROOT)
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BANK3               60      0       0       9        0.0%
;!BITBANK3            60      0       0       8        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!BANK2               60      0       0      11        0.0%
;!BITBANK2            60      0       0      10        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITSFR2              0      0       0       5        0.0%
;!BANK1               50      0       0       7        0.0%
;!BITBANK1            50      0       0       6        0.0%
;!SFR1                 0      0       0       2        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!BANK0               50      7       B       5       13.8%
;!BITBANK0            50      0       0       4        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!COMMON               E      8       8       1       57.1%
;!BITCOMMON            E      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!DATA                 0      0      13      12        0.0%
;!ABS                  0      0      13       3        0.0%
;!NULL                 0      0       0       0        0.0%
;!STACK                0      0       0       2        0.0%
;!EEDATA             100      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 106 in file "C:\School Work\Embedded System\LE3\PracticalActivity3.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2    5[BANK0 ] int 
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
;;      Locals:         0       2       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_delay
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"C:\School Work\Embedded System\LE3\PracticalActivity3.c"
	line	106
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\School Work\Embedded System\LE3\PracticalActivity3.c"
	line	106
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 6
; Regs used in _main: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	108
	
l693:	
;PracticalActivity3.c: 108: GIE = 1;
	bsf	(95/8),(95)&7	;volatile
	line	109
;PracticalActivity3.c: 109: INTE = 1;
	bsf	(92/8),(92)&7	;volatile
	line	110
;PracticalActivity3.c: 110: INTF = 0;
	bcf	(89/8),(89)&7	;volatile
	line	111
	
l695:	
;PracticalActivity3.c: 111: OPTION_REG = 0x43;
	movlw	(043h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(129)^080h	;volatile
	line	115
	
l697:	
;PracticalActivity3.c: 115: PEIE=1;
	bsf	(94/8),(94)&7	;volatile
	line	116
	
l699:	
;PracticalActivity3.c: 116: TMR0IE = 1;
	bsf	(93/8),(93)&7	;volatile
	line	117
	
l701:	
;PracticalActivity3.c: 117: TMR0IF = 0;
	bcf	(90/8),(90)&7	;volatile
	line	119
;PracticalActivity3.c: 119: TRISB = 0x01;
	movlw	(01h)
	movwf	(134)^080h	;volatile
	line	120
	
l703:	
;PracticalActivity3.c: 120: TRISC = 0x00;
	clrf	(135)^080h	;volatile
	line	121
	
l705:	
;PracticalActivity3.c: 121: TRISD= 0xFF;
	movlw	(0FFh)
	movwf	(136)^080h	;volatile
	line	122
	
l707:	
;PracticalActivity3.c: 122: PORTC = 0x05;
	movlw	(05h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	goto	l709
	line	125
;PracticalActivity3.c: 125: while (1)
	
l58:	
	line	127
	
l709:	
;PracticalActivity3.c: 126: {
;PracticalActivity3.c: 127: for(int i = 0 ; i<8 ; i ++)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@i)
	clrf	(main@i+1)
	
l711:	
	movf	(main@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u125
	movlw	low(08h)
	subwf	(main@i),w
u125:

	skipc
	goto	u121
	goto	u120
u121:
	goto	l715
u120:
	goto	l709
	
l713:	
	goto	l709
	line	128
	
l59:	
	line	129
	
l715:	
;PracticalActivity3.c: 128: {
;PracticalActivity3.c: 129: PORTC = segment;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_segment),w
	movwf	(7)	;volatile
	line	130
;PracticalActivity3.c: 130: segment++;
	movlw	low(01h)
	addwf	(_segment),f
	skipnc
	incf	(_segment+1),f
	movlw	high(01h)
	addwf	(_segment+1),f
	line	131
	
l717:	
;PracticalActivity3.c: 131: delay(195);
	movlw	low(0C3h)
	movwf	(delay@counter)
	movlw	high(0C3h)
	movwf	((delay@counter))+1
	fcall	_delay
	line	132
	
l719:	
;PracticalActivity3.c: 132: if(segment == 0x0A)
	movlw	0Ah
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(_segment),w
	iorwf	(_segment+1),w
	skipz
	goto	u131
	goto	u130
u131:
	goto	l723
u130:
	line	133
	
l721:	
;PracticalActivity3.c: 133: segment= 0x00;
	clrf	(_segment)
	clrf	(_segment+1)
	goto	l723
	
l61:	
	line	127
	
l723:	
	movlw	low(01h)
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(01h)
	addwf	(main@i+1),f
	
l725:	
	movf	(main@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u145
	movlw	low(08h)
	subwf	(main@i),w
u145:

	skipc
	goto	u141
	goto	u140
u141:
	goto	l715
u140:
	goto	l709
	
l60:	
	goto	l709
	line	136
	
l62:	
	line	125
	goto	l709
	
l63:	
	line	138
	
l64:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_delay

;; *************** function _delay *****************
;; Defined at:
;;		line 92 in file "C:\School Work\Embedded System\LE3\PracticalActivity3.c"
;; Parameters:    Size  Location     Type
;;  counter         2    0[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  of_count        2    3[BANK0 ] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	line	92
global __ptext1
__ptext1:	;psect for function _delay
psect	text1
	file	"C:\School Work\Embedded System\LE3\PracticalActivity3.c"
	line	92
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
;incstack = 0
	opt	stack 6
; Regs used in _delay: [wreg+status,2]
	line	94
	
l639:	
;PracticalActivity3.c: 94: int of_count = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(delay@of_count)
	clrf	(delay@of_count+1)
	line	96
;PracticalActivity3.c: 96: while(of_count < counter)
	goto	l647
	
l52:	
	line	98
	
l641:	
;PracticalActivity3.c: 97: {
;PracticalActivity3.c: 98: if(count_flag)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_count_flag+1),w
	iorwf	(_count_flag),w
	skipnz
	goto	u81
	goto	u80
u81:
	goto	l647
u80:
	line	100
	
l643:	
;PracticalActivity3.c: 99: {
;PracticalActivity3.c: 100: of_count++;
	movlw	low(01h)
	addwf	(delay@of_count),f
	skipnc
	incf	(delay@of_count+1),f
	movlw	high(01h)
	addwf	(delay@of_count+1),f
	line	101
	
l645:	
;PracticalActivity3.c: 101: count_flag=0;
	clrf	(_count_flag)
	clrf	(_count_flag+1)
	goto	l647
	line	102
	
l53:	
	goto	l647
	line	103
	
l51:	
	line	96
	
l647:	
	movf	(delay@of_count+1),w
	xorlw	80h
	movwf	(??_delay+0)+0
	movf	(delay@counter+1),w
	xorlw	80h
	subwf	(??_delay+0)+0,w
	skipz
	goto	u95
	movf	(delay@counter),w
	subwf	(delay@of_count),w
u95:

	skipc
	goto	u91
	goto	u90
u91:
	goto	l641
u90:
	goto	l55
	
l54:	
	line	104
	
l55:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
	signat	_delay,4216
	global	_ISR

;; *************** function _ISR *****************
;; Defined at:
;;		line 29 in file "C:\School Work\Embedded System\LE3\PracticalActivity3.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  read            2    6[COMMON] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          6       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	line	29
global __ptext2
__ptext2:	;psect for function _ISR
psect	text2
	file	"C:\School Work\Embedded System\LE3\PracticalActivity3.c"
	line	29
	global	__size_of_ISR
	__size_of_ISR	equ	__end_of_ISR-_ISR
	
_ISR:	
;incstack = 0
	opt	stack 6
; Regs used in _ISR: [wreg-fsr0h+status,2+status,0]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_ISR+2)
	movf	fsr0,w
	movwf	(??_ISR+3)
	movf	pclath,w
	movwf	(??_ISR+4)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	btemp+1,w
	movwf	(??_ISR+5)
	ljmp	_ISR
psect	text2
	line	31
	
i1l649:	
;PracticalActivity3.c: 31: GIE = 0;
	bcf	(95/8),(95)&7	;volatile
	line	32
;PracticalActivity3.c: 32: if (INTF)
	btfss	(89/8),(89)&7	;volatile
	goto	u10_21
	goto	u10_20
u10_21:
	goto	i1l31
u10_20:
	line	37
	
i1l651:	
;PracticalActivity3.c: 33: {
;PracticalActivity3.c: 36: int read;
;PracticalActivity3.c: 37: read = PORTD & 0x0F;
	movf	(8),w	;volatile
	andlw	0Fh
	movwf	(??_ISR+0)+0
	clrf	(??_ISR+0)+0+1
	movf	0+(??_ISR+0)+0,w
	movwf	(ISR@read)
	movf	1+(??_ISR+0)+0,w
	movwf	(ISR@read+1)
	line	39
;PracticalActivity3.c: 39: switch(read)
	goto	i1l679
	line	41
;PracticalActivity3.c: 40: {
;PracticalActivity3.c: 41: case 0x00:
	
i1l33:	
	line	42
	
i1l653:	
;PracticalActivity3.c: 42: segment=0x01;
	movlw	low(01h)
	movwf	(_segment)
	movlw	high(01h)
	movwf	((_segment))+1
	line	43
;PracticalActivity3.c: 43: break;
	goto	i1l34
	line	44
;PracticalActivity3.c: 44: case 0x01:
	
i1l35:	
	line	45
	
i1l655:	
;PracticalActivity3.c: 45: segment=0x02;
	movlw	low(02h)
	movwf	(_segment)
	movlw	high(02h)
	movwf	((_segment))+1
	line	46
;PracticalActivity3.c: 46: break;
	goto	i1l34
	line	47
;PracticalActivity3.c: 47: case 0x02:
	
i1l36:	
	line	48
	
i1l657:	
;PracticalActivity3.c: 48: segment=0x03;
	movlw	low(03h)
	movwf	(_segment)
	movlw	high(03h)
	movwf	((_segment))+1
	line	49
;PracticalActivity3.c: 49: break;
	goto	i1l34
	line	50
;PracticalActivity3.c: 50: case 0x04:
	
i1l37:	
	line	51
	
i1l659:	
;PracticalActivity3.c: 51: segment=0x04;
	movlw	low(04h)
	movwf	(_segment)
	movlw	high(04h)
	movwf	((_segment))+1
	line	52
;PracticalActivity3.c: 52: break;
	goto	i1l34
	line	53
;PracticalActivity3.c: 53: case 0x05:
	
i1l38:	
	line	54
	
i1l661:	
;PracticalActivity3.c: 54: segment=0x05;
	movlw	low(05h)
	movwf	(_segment)
	movlw	high(05h)
	movwf	((_segment))+1
	line	55
;PracticalActivity3.c: 55: break;
	goto	i1l34
	line	56
;PracticalActivity3.c: 56: case 0x06:
	
i1l39:	
	line	57
	
i1l663:	
;PracticalActivity3.c: 57: segment=0x06;
	movlw	low(06h)
	movwf	(_segment)
	movlw	high(06h)
	movwf	((_segment))+1
	line	58
;PracticalActivity3.c: 58: break;
	goto	i1l34
	line	59
;PracticalActivity3.c: 59: case 0x08:
	
i1l40:	
	line	60
	
i1l665:	
;PracticalActivity3.c: 60: segment=0x07;
	movlw	low(07h)
	movwf	(_segment)
	movlw	high(07h)
	movwf	((_segment))+1
	line	61
;PracticalActivity3.c: 61: break;
	goto	i1l34
	line	62
;PracticalActivity3.c: 62: case 0x09:
	
i1l41:	
	line	63
	
i1l667:	
;PracticalActivity3.c: 63: segment=0x08;
	movlw	low(08h)
	movwf	(_segment)
	movlw	high(08h)
	movwf	((_segment))+1
	line	64
;PracticalActivity3.c: 64: break;
	goto	i1l34
	line	65
;PracticalActivity3.c: 65: case 0x0A:
	
i1l42:	
	line	66
	
i1l669:	
;PracticalActivity3.c: 66: segment=0x09;
	movlw	low(09h)
	movwf	(_segment)
	movlw	high(09h)
	movwf	((_segment))+1
	line	67
;PracticalActivity3.c: 67: break;
	goto	i1l34
	line	68
;PracticalActivity3.c: 68: case 0x0C:
	
i1l43:	
	line	69
	
i1l671:	
;PracticalActivity3.c: 69: segment=0x00;
	clrf	(_segment)
	clrf	(_segment+1)
	line	70
;PracticalActivity3.c: 70: break;
	goto	i1l34
	line	71
;PracticalActivity3.c: 71: case 0x0D:
	
i1l44:	
	line	72
	
i1l673:	
;PracticalActivity3.c: 72: segment=0x00;
	clrf	(_segment)
	clrf	(_segment+1)
	line	73
;PracticalActivity3.c: 73: break;
	goto	i1l34
	line	74
;PracticalActivity3.c: 74: case 0x0E:
	
i1l45:	
	line	75
	
i1l675:	
;PracticalActivity3.c: 75: segment=0x00;
	clrf	(_segment)
	clrf	(_segment+1)
	line	76
;PracticalActivity3.c: 76: break;
	goto	i1l34
	line	77
	
i1l677:	
;PracticalActivity3.c: 77: }
	goto	i1l34
	line	39
	
i1l32:	
	
i1l679:	
	; Switch on 2 bytes has been partitioned into a top level switch of size 1, and 1 sub-switches
; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 0 to 0
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
; direct_byte           11     8 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	movf (ISR@read+1),w
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	i1l757
	goto	i1l34
	opt asmopt_on
	
i1l757:	
; Switch size 1, requested type "space"
; Number of cases is 12, Range of values is 0 to 14
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           37    19 (average)
; direct_byte           53     8 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	movf (ISR@read),w
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	i1l653
	xorlw	1^0	; case 1
	skipnz
	goto	i1l655
	xorlw	2^1	; case 2
	skipnz
	goto	i1l657
	xorlw	4^2	; case 4
	skipnz
	goto	i1l659
	xorlw	5^4	; case 5
	skipnz
	goto	i1l661
	xorlw	6^5	; case 6
	skipnz
	goto	i1l663
	xorlw	8^6	; case 8
	skipnz
	goto	i1l665
	xorlw	9^8	; case 9
	skipnz
	goto	i1l667
	xorlw	10^9	; case 10
	skipnz
	goto	i1l669
	xorlw	12^10	; case 12
	skipnz
	goto	i1l671
	xorlw	13^12	; case 13
	skipnz
	goto	i1l673
	xorlw	14^13	; case 14
	skipnz
	goto	i1l675
	goto	i1l34
	opt asmopt_on

	line	77
	
i1l34:	
	line	79
;PracticalActivity3.c: 79: INTF = 0;
	bcf	(89/8),(89)&7	;volatile
	line	82
;PracticalActivity3.c: 82: }
	goto	i1l685
	line	83
	
i1l31:	
;PracticalActivity3.c: 83: else if (TMR0IF)
	btfss	(90/8),(90)&7	;volatile
	goto	u11_21
	goto	u11_20
u11_21:
	goto	i1l685
u11_20:
	line	85
	
i1l681:	
;PracticalActivity3.c: 84: {
;PracticalActivity3.c: 85: TMR0IF = 0;
	bcf	(90/8),(90)&7	;volatile
	line	86
	
i1l683:	
;PracticalActivity3.c: 86: count_flag = 1;
	movlw	low(01h)
	movwf	(_count_flag)
	movlw	high(01h)
	movwf	((_count_flag))+1
	goto	i1l685
	line	87
	
i1l47:	
	goto	i1l685
	line	89
	
i1l46:	
	
i1l685:	
;PracticalActivity3.c: 87: }
;PracticalActivity3.c: 89: GIE = 1;
	bsf	(95/8),(95)&7	;volatile
	line	90
	
i1l48:	
	movf	(??_ISR+5),w
	movwf	btemp+1
	movf	(??_ISR+4),w
	movwf	pclath
	movf	(??_ISR+3),w
	movwf	fsr0
	swapf	(??_ISR+2)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_ISR
	__end_of_ISR:
	signat	_ISR,88
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
