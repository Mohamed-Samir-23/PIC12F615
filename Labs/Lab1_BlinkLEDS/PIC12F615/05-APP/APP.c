/*
 * File:   APP.c
 * Author: moham
 *
 * Created on July 30, 2023, 10:06 PM
 */


//#include <xc.h>
#define _XTAL_FREQ 8000000

/* Library Include */
#include "LSTD_TYPES.h"
#include "LBIT_MATH.h"
/*Delay Function*/
#include<builtins.h>
/* SWC Include */
#include "MDIO_INTERFACE.h"
#include "MADC_INTERFACE.h"

void main(void) {
    
    MADC_voidDisableAllADC();

    MDIO_stderrSetPinDirection(GP0,MDIO_OUTPUT);
    MDIO_stderrSetPinDirection(GP1,MDIO_OUTPUT);
    MDIO_stderrSetPinDirection(GP2,MDIO_OUTPUT);
    MDIO_stderrSetPinDirection(GP4,MDIO_OUTPUT);
    MDIO_stderrSetPinDirection(GP5,MDIO_OUTPUT);
    
    MDIO_stderrSetPinValue(GP0, MDIO_LOW);
    MDIO_stderrSetPinValue(GP1, MDIO_LOW);
    MDIO_stderrSetPinValue(GP2, MDIO_LOW);
    MDIO_stderrSetPinValue(GP4, MDIO_LOW);
    MDIO_stderrSetPinValue(GP5, MDIO_LOW);

  
    while(1)
    {
      
        MDIO_voidSetPortValue(MDIO_PIN0);
        __delay_ms(1000);
        MDIO_voidSetPortValue(MDIO_PIN0|MDIO_PIN1);
        __delay_ms(1000);
        MDIO_voidSetPortValue(MDIO_PIN0|MDIO_PIN1|MDIO_PIN2);
        __delay_ms(1000);
        MDIO_voidSetPortValue(MDIO_PIN0|MDIO_PIN1|MDIO_PIN2|MDIO_PIN4);
        __delay_ms(1000);
        MDIO_voidSetPortValue(MDIO_PIN0|MDIO_PIN1|MDIO_PIN2|MDIO_PIN4|MDIO_PIN5);
        __delay_ms(1000);
        MDIO_voidSetPortValue(MDIO_PIN1|MDIO_PIN2|MDIO_PIN4|MDIO_PIN5);
        __delay_ms(1000);
        MDIO_voidSetPortValue(MDIO_PIN2|MDIO_PIN4|MDIO_PIN5);
        __delay_ms(1000);
        MDIO_voidSetPortValue(MDIO_PIN4|MDIO_PIN5);
        __delay_ms(1000);
        MDIO_voidSetPortValue(MDIO_PIN5);
        __delay_ms(1000);
    }
    
    return;
}



