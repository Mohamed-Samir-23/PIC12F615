/*
 * File:   MDIO_PROGRAM.c
 * Author: Mohamed Samir
 *
 * Created on August 12, 2023, 7:58 PM
 */

/* Library Include */
#include "LSTD_TYPES.h"
#include "LBIT_MATH.h"

/* SWC Include */
#include"MDIO_PRIVATE.h"
#include "MDIO_INTERFACE.h"

Std_ReturnType MDIO_stderrSetPinDirection
(
    PINS ARG_udtPin, 
    MDIO_mode ARG_Mode
)
{
    Std_ReturnType L_stderrorError=E_NOT_OK;
    if(ARG_Mode==MDIO_INPUT)
    {
        switch(ARG_udtPin)
        {
            case GP0: SETBIT(TRISIO->All_REG, GP0); L_stderrorError = E_OK; break;
            case GP1: SETBIT(TRISIO->All_REG, GP1); L_stderrorError = E_OK; break;
            case GP2: SETBIT(TRISIO->All_REG, GP2); L_stderrorError = E_OK; break;
            case GP3: SETBIT(TRISIO->All_REG, GP3); L_stderrorError = E_OK; break;
            case GP4: SETBIT(TRISIO->All_REG, GP4); L_stderrorError = E_OK; break;
            case GP5: SETBIT(TRISIO->All_REG, GP5); L_stderrorError = E_OK; break;
            default : L_stderrorError=E_NOT_OK; break;
        }
    }
    else if(ARG_Mode==MDIO_OUTPUT)
    {
        switch(ARG_udtPin)
        {
        case GP0: CLRBIT(TRISIO->All_REG,GP0); L_stderrorError = E_OK; break;
        case GP1: CLRBIT(TRISIO->All_REG,GP1); L_stderrorError = E_OK; break;
        case GP2: CLRBIT(TRISIO->All_REG,GP2); L_stderrorError = E_OK; break;
        case GP4: CLRBIT(TRISIO->All_REG,GP4); L_stderrorError = E_OK; break;
        case GP5: CLRBIT(TRISIO->All_REG,GP5); L_stderrorError = E_OK; break;
        default : L_stderrorError=E_NOT_OK; break;
        }
    }
  
    return L_stderrorError;

}

Std_ReturnType MDIO_stderrSetPinValue
(
    PINS ARG_udtPin,
    unit8_t ARG_u8Value
)
{

    Std_ReturnType L_stderrorError=E_NOT_OK;
    
    if(ARG_u8Value==MDIO_HIGH)
    {
        switch(ARG_udtPin)
        {
            case GP0: SETBIT(GPIO->All_REG,GP0); L_stderrorError = E_OK; break;
            case GP1: SETBIT(GPIO->All_REG,GP1); L_stderrorError = E_OK; break;
            case GP2: SETBIT(GPIO->All_REG,GP2); L_stderrorError = E_OK; break;
            case GP4: SETBIT(GPIO->All_REG,GP4); L_stderrorError = E_OK; break;
            case GP5: SETBIT(GPIO->All_REG,GP5); L_stderrorError = E_OK; break;
            default : L_stderrorError=E_NOT_OK; break;
        }
    }
    else if(ARG_u8Value==MDIO_LOW)
    {
    
         switch(ARG_udtPin)
        {
            case GP0: CLRBIT(GPIO->All_REG,GP0); L_stderrorError = E_OK; break;
            case GP1: CLRBIT(GPIO->All_REG,GP1); L_stderrorError = E_OK; break;
            case GP2: CLRBIT(GPIO->All_REG,GP2); L_stderrorError = E_OK; break;
            case GP4: CLRBIT(GPIO->All_REG,GP4); L_stderrorError = E_OK; break;
            case GP5: CLRBIT(GPIO->All_REG,GP5); L_stderrorError = E_OK; break;
            default : L_stderrorError=E_NOT_OK; break;
        }
    
    
    }
    return L_stderrorError;
}

Std_ReturnType MDIO_stderrGetPinValue
(
    PINS ARG_udtPin, 
    unit8_t *ARG_u8Value
)
{
    Std_ReturnType L_stderrorError=E_NOT_OK;
    
    if(ARG_u8Value!=NULL_POINTER)
    {
        
           switch(ARG_udtPin)
        {
            case GP0: *ARG_u8Value=GETBIT(GPIO->All_REG,GP0); L_stderrorError = E_OK; break;
            case GP1: *ARG_u8Value=GETBIT(GPIO->All_REG,GP1); L_stderrorError = E_OK; break;
            case GP2: *ARG_u8Value=GETBIT(GPIO->All_REG,GP2); L_stderrorError = E_OK; break;
            case GP4: *ARG_u8Value=GETBIT(GPIO->All_REG,GP4); L_stderrorError = E_OK; break;
            case GP5: *ARG_u8Value=GETBIT(GPIO->All_REG,GP5); L_stderrorError = E_OK; break;
            default : L_stderrorError=E_NOT_OK; break;
        }
    
    }
    else
    {
    
        L_stderrorError=E_NULL_POINTER;
    
    }
    
    
    return L_stderrorError;
}



void MDIO_voidSetPortDirection
( 
    unit8_t ARG_u8Value
)
{
    TRISIO->All_REG=ARG_u8Value;
    GPIO->All_REG=0x00;
}

void MDIO_voidSetPortValue
( 
    unit8_t ARG_u8Value
)
{
    GPIO->All_REG=ARG_u8Value; 
}

Std_ReturnType MDIO_stderrGetPortValue
(
    unit8_t * ARG_u8Value
)
{
    Std_ReturnType L_stderrorError=E_NOT_OK;
    
    if(ARG_u8Value!=NULL_POINTER)
    {
        
       *ARG_u8Value=GETBIT(GPIO->All_REG,GP0);
    
    }
    else
    {
        L_stderrorError=E_NULL_POINTER;
    }
    
    return L_stderrorError;
}

