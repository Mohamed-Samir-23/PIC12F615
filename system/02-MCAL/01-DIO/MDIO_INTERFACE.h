/*
 * File:   MDIO_INTERFACE.h
 * Author: Mohamed Samir
 *
 * Created on August 12, 2023, 7:58 PM
 */
 
#ifndef _MDIO_INTERFACE_H_
#define	_MDIO_INTERFACE_H_

#pragma config FOSC = INTOSCIO  // Oscillator Selection bits (INTOSCIO oscillator: I/O function on GP4/OSC2/CLKOUT pin, I/O function on GP5/OSC1/CLKIN)
#pragma config WDTE = OFF       // Watchdog Timer Enable bit (WDT disabled and can be enabled by SWDTEN bit of the WDTCON register)
#pragma config PWRTE = ON       // Power-up Timer Enable bit (PWRT enabled)
#pragma config MCLRE = ON       // MCLR Pin Function Select bit (MCLR pin function is MCLR)
#pragma config CP = OFF         // Code Protection bit (Program memory code protection is disabled)
#pragma config IOSCFS = 8MHZ    // Internal Oscillator Frequency Select (8 MHz)
#pragma config BOREN = OFF      // Brown-out Reset Selection bits (BOR disabled)


#define MDIO_PIN0 0x01 	//0000 0001
#define MDIO_PIN1 0x02	//0000 0010
#define MDIO_PIN2 0x04	//0000 0100
#define MDIO_PIN3 0x08	//0000 1000
#define MDIO_PIN4 0x10	//0001 0000
#define MDIO_PIN5 0x20	//0010 0000

typedef enum
{
    GP0=0,
    GP1,
    GP2,
    GP3,
    GP4,
    GP5,
}PINS;

typedef enum
{
    MDIO_OUTPUT=0,
    MDIO_INPUT=1,
}MDIO_mode;


#define MDIO_LOW 1
#define MDIO_HIGH 2


Std_ReturnType MDIO_stderrSetPinDirection
(
    PINS ARG_udtPin, 
    MDIO_mode ARG_Mode
);

Std_ReturnType MDIO_stderrSetPinValue
(
    PINS ARG_udtPin,
    unit8_t ARG_u8Value
);

Std_ReturnType MDIO_stderrGetPinValue
(
    PINS ARG_udtPin, 
    unit8_t * ARG_u8Value
);


void MDIO_voidSetPortDirection
( 
    unit8_t ARG_u8Value
);

void MDIO_voidSetPortValue
( 
    unit8_t ARG_u8Value
);

Std_ReturnType MDIO_stderrGetPortValue
(
    unit8_t * ARG_u8Value
);

#endif

