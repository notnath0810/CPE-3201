//Nahaniel M. Padas 3/2/2026

#include <xc.h>

#pragma config FOSC = XT
#pragma config WDTE = OFF
#pragma config PWRTE = ON
#pragma config BOREN = ON
#pragma config LVP = OFF
#pragma config CPD = OFF
#pragma config WRT = OFF
#pragma config CP = OFF

void delay (int cnt){
	int i, j;
	for(i = cnt; i != 0; i--)
	for(j = 0; j < 1000; j++);
}

void instructCtrl(unsigned char inst) {
	PORTC = inst;
	RB0 = 0;
	RB2 = 0;
	RB1 = 1;
	delay(1);
	//for int cnt=0; cnt<100000; cnt++;
	RB1 = 0;
}

void initializeLCD() {
	instructCtrl(0x38);
	
	delay(10);
	
	instructCtrl(0x0C);
	instructCtrl(0x01);
	instructCtrl(0x06);
	instructCtrl(0x0F);
}

void dataCtrl(unsigned char data_in) {
	PORTC = data_in;
	RB0 = 1;
	RB2 = 0;
	RB1 = 1;
	delay(5);
	//for int cnt=0; cnt<100000; cnt++;
	RB1 = 0;
}

void main() {
	OPTION_REG =  0xC0;
	TRISB = 0x00;
	TRISC = 0x00;
	TRISD = 0xF1;
	
	int cnt = 0;
	
	unsigned char data;
	
	initializeLCD();
	
	while(1) {
		if(RD0 == 1) {
			data = PORTD & 0xF0;
			cnt++;
			
			switch(data){
				case 0x00: dataCtrl('1');
				break;

				case 0x10: dataCtrl('2');
				break;
				
				case 0x20: dataCtrl('3');
				break;

				case 0x40: dataCtrl('4');
				break;

				case 0x50: dataCtrl('5');
				break;
				
				case 0x60: dataCtrl('6');
				break;

				case 0x80: dataCtrl('7');
				break;

				case 0x90: dataCtrl('8');
				break;

				case 0xA0: dataCtrl('9');
				break;

				case 0xD0: dataCtrl('0');
				break;

				case 0xC0: dataCtrl('*');
				break;

				case 0xE0: dataCtrl('#');
				break;
			}

			if(cnt == 20) {
				instructCtrl(0xC0);
				delay(10);
			}

			if(cnt == 40) {
				instructCtrl(0x94);
				delay(10);
			}

			if(cnt == 60) {
				instructCtrl(0xD4);
				delay(10);
			}

			if(cnt == 80) {
				initializeLCD();
				cnt = 0;
			}
		}
	}
}