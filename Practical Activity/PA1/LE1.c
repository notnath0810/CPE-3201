// Nathaniel M. Padas
// Practical Activity 1

#include <xc.h>

#define _XTAL_FREQ 4000000   // 4 MHz crystal

// CONFIGURATION BITS
#pragma config FOSC = XT
#pragma config WDTE = OFF
#pragma config PWRTE = ON
#pragma config BOREN = ON
#pragma config LVP = OFF
#pragma config CPD = OFF
#pragma config WRT = OFF
#pragma config CP = OFF

void main()
{
    int i;

    ADCON1 = 0x06;     // Make PORTA digital (VERY IMPORTANT)
    TRISA = 0x01;      // RA0 = input, others output
    TRISB = 0x00;      // PORTB = output
    PORTB = 0x00;      // LED OFF

    while(1)
    {
        // Wait for button press
        if(RA0 == 1)
        {
            __delay_ms(20);      // Debounce delay

            if(RA0 == 1)         // Confirm still pressed
            {
                for(i = 0; i < 3; i++)
                {
                    RB0 = 1;     // LED ON
                    __delay_ms(300);

                    RB0 = 0;     // LED OFF
                    __delay_ms(300);
                }

                // Wait until button released
                while(RA0 == 1);
            }
        }
    }
}