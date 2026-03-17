#include <xc.h>

#pragma config FOSC  = XT
#pragma config WDTE  = OFF
#pragma config PWRTE = ON
#pragma config BOREN = ON
#pragma config LVP   = OFF
#pragma config CPD   = OFF
#pragma config WRT   = OFF
#pragma config CP    = OFF

#define _XTAL_FREQ 1000000

unsigned int input;

void delay(int cnt)
{
    int i, j;
    for(i = cnt; i != 0; i--)
    {
        for(j = 0; j < 3000; j++) {;}
    }
}

void dataCtrl(unsigned char DATA)
{
    PORTC = DATA;
    RB1 = 1;   // RS = 1 for data
    RB2 = 1;   // EN = 1
    delay(1);
    RB2 = 0;   // EN = 0
}

void instCtrl(unsigned char INST)
{
    PORTC = INST;
    RB1 = 0;   // RS = 0 for instruction
    RB2 = 1;   // EN = 1
    delay(1);
    RB2 = 0;   // EN = 0
}

void initLCD(void)
{
    delay(20);
    instCtrl(0x38); // 8-bit, 2-line, 5x7
    instCtrl(0x08); // display off
    instCtrl(0x01); // clear display
    instCtrl(0x06); // entry mode
    instCtrl(0x0E); // display on, cursor on
}

void main(void)
{
    TRISB = 0x00;
    TRISC = 0x00;
    TRISD = 0xFF;

    PORTB = 0x00;
    PORTC = 0x00;

    initLCD();

    while(1)
    {
        instCtrl(0x01);
        delay(2);

        instCtrl(0x80);
        dataCtrl('H');
        dataCtrl('O');
        dataCtrl('W');

        instCtrl(0x84);
        dataCtrl('M');
        dataCtrl('A');
        dataCtrl('N');
        dataCtrl('Y');

        instCtrl(0x89);
        dataCtrl('T');
        dataCtrl('O');

        instCtrl(0x8C);
        dataCtrl('P');
        dataCtrl('R');
        dataCtrl('I');
        dataCtrl('N');
        dataCtrl('T');
        dataCtrl('?');

        instCtrl(0xC0);

        // Wait for DA / valid key signal on RD4
        while(RD4 == 0);

        delay(5); // debounce / settle time

        instCtrl(0xC0);

        if((PORTD & 0x0F) == 0x00)
        {
            dataCtrl('1');
            input = 1;
        }
        else if((PORTD & 0x0F) == 0x01)
        {
            dataCtrl('2');
            input = 2;
        }
        else if((PORTD & 0x0F) == 0x02)
        {
            dataCtrl('3');
            input = 3;
        }
        else if((PORTD & 0x0F) == 0x04)
        {
            dataCtrl('4');
            input = 4;
        }
        else if((PORTD & 0x0F) == 0x05)
        {
            dataCtrl('5');
            input = 5;
        }
        else if((PORTD & 0x0F) == 0x06)
        {
            dataCtrl('6');
            input = 6;
        }
        else if((PORTD & 0x0F) == 0x08)
        {
            dataCtrl('7');
            input = 7;
        }
        else if((PORTD & 0x0F) == 0x09)
        {
            dataCtrl('8');
            input = 8;
        }
        else if((PORTD & 0x0F) == 0x0A)
        {
            dataCtrl('9');
            input = 9;
        }
        else if((PORTD & 0x0F) == 0x0D)
        {
            dataCtrl('0');
            input = 0;
        }
        else
        {
            dataCtrl('?');
            input = 0;
        }

        instCtrl(0x94);
        dataCtrl('P');
        dataCtrl('R');
        dataCtrl('I');
        dataCtrl('N');
        dataCtrl('T');
        dataCtrl('I');
        dataCtrl('N');
        dataCtrl('G');

        instCtrl(0x9D);
        dataCtrl('1');

        instCtrl(0x9F);
        dataCtrl('O');
        dataCtrl('F');

        instCtrl(0xA2);
        dataCtrl(input + '0');

        // Wait for key release
        while(RD4 == 1);
        delay(5);
    }
}