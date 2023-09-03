/*
 * File:   MADC_PROGRAM.c
 * Author: Mohamed Samir
 *
 * Created on September 2, 2023, 6:13 PM
 */



/* Library Include */
#include "LSTD_TYPES.h"
#include "LBIT_MATH.h"

/* SWC Include */
#include"MADC_PRIVATE.h"
#include "MADC_INTERFACE.h"



void MADC_voidEnableAllADC(void)
{
    
    
    
    
}

void MADC_voidDisableAllADC(void)
{
    ANSEL_REGE->All_REG =0;
}