# 1 "02-MCAL/01-DIO/MDIO_PROGRAM.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 288 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC10-12Fxxx_DFP/1.6.174/xc8\\pic\\include\\language_support.h" 1 3
# 2 "<built-in>" 2
# 1 "02-MCAL/01-DIO/MDIO_PROGRAM.c" 2








# 1 "01-LIB\\LSTD_TYPES.h" 1
# 13 "01-LIB\\LSTD_TYPES.h"
typedef unsigned char unit8_t;
typedef unsigned short unit16_t;
typedef unsigned long int unit32_t;

typedef signed char snit8_t;
typedef signed short snit16_t;
typedef signed long int snit32_t;

typedef volatile unsigned char vunit8_t;
typedef volatile unsigned short vunit16_t;
typedef volatile unsigned long int vunit32_t;

typedef volatile signed char vsnit8_t;
typedef volatile signed short vsnit16_t;
typedef volatile signed long int vsnit32_t;

typedef float f32_t;
typedef double f64_t;


typedef enum
{
 E_OK,
 E_NOT_OK,
 E_PENDING,
    E_NULL_POINTER
}Std_ReturnType;


typedef enum
{
 True=1,
    False=0
}bool;





typedef union
{
    vunit8_t All_REG;
    struct
    {
       vunit8_t B0:1;
       vunit8_t B1:1;
       vunit8_t B2:1;
       vunit8_t B3:1;
       vunit8_t B4:1;
       vunit8_t B5:1;
       vunit8_t B6:1;
       vunit8_t B7:1;
    }BIT;
}REG_8BIT_t;
# 9 "02-MCAL/01-DIO/MDIO_PROGRAM.c" 2

# 1 "01-LIB\\LBIT_MATH.h" 1
# 10 "02-MCAL/01-DIO/MDIO_PROGRAM.c" 2



# 1 "02-MCAL/01-DIO/MDIO_PRIVATE.h" 1
# 13 "02-MCAL/01-DIO/MDIO_PROGRAM.c" 2

# 1 "02-MCAL/01-DIO/MDIO_INTERFACE.h" 1
# 11 "02-MCAL/01-DIO/MDIO_INTERFACE.h"
#pragma config FOSC = INTOSCIO
#pragma config WDTE = OFF
#pragma config PWRTE = ON
#pragma config MCLRE = ON
#pragma config CP = OFF
#pragma config IOSCFS = 8MHZ
#pragma config BOREN = OFF
# 27 "02-MCAL/01-DIO/MDIO_INTERFACE.h"
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
# 14 "02-MCAL/01-DIO/MDIO_PROGRAM.c" 2


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
            case GP0: ((REG_8BIT_t *)0x085)->All_REG |=(1<<GP0); L_stderrorError = E_OK; break;
            case GP1: ((REG_8BIT_t *)0x085)->All_REG |=(1<<GP1); L_stderrorError = E_OK; break;
            case GP2: ((REG_8BIT_t *)0x085)->All_REG |=(1<<GP2); L_stderrorError = E_OK; break;
            case GP3: ((REG_8BIT_t *)0x085)->All_REG |=(1<<GP3); L_stderrorError = E_OK; break;
            case GP4: ((REG_8BIT_t *)0x085)->All_REG |=(1<<GP4); L_stderrorError = E_OK; break;
            case GP5: ((REG_8BIT_t *)0x085)->All_REG |=(1<<GP5); L_stderrorError = E_OK; break;
            default : L_stderrorError=E_NOT_OK; break;
        }
    }
    else if(ARG_Mode==MDIO_OUTPUT)
    {
        switch(ARG_udtPin)
        {
        case GP0: ((REG_8BIT_t *)0x085)->All_REG &=~(1<<GP0); L_stderrorError = E_OK; break;
        case GP1: ((REG_8BIT_t *)0x085)->All_REG &=~(1<<GP1); L_stderrorError = E_OK; break;
        case GP2: ((REG_8BIT_t *)0x085)->All_REG &=~(1<<GP2); L_stderrorError = E_OK; break;
        case GP4: ((REG_8BIT_t *)0x085)->All_REG &=~(1<<GP4); L_stderrorError = E_OK; break;
        case GP5: ((REG_8BIT_t *)0x085)->All_REG &=~(1<<GP5); L_stderrorError = E_OK; break;
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

    if(ARG_u8Value==2)
    {
        switch(ARG_udtPin)
        {
            case GP0: ((REG_8BIT_t *)0x005)->All_REG |=(1<<GP0); L_stderrorError = E_OK; break;
            case GP1: ((REG_8BIT_t *)0x005)->All_REG |=(1<<GP1); L_stderrorError = E_OK; break;
            case GP2: ((REG_8BIT_t *)0x005)->All_REG |=(1<<GP2); L_stderrorError = E_OK; break;
            case GP4: ((REG_8BIT_t *)0x005)->All_REG |=(1<<GP4); L_stderrorError = E_OK; break;
            case GP5: ((REG_8BIT_t *)0x005)->All_REG |=(1<<GP5); L_stderrorError = E_OK; break;
            default : L_stderrorError=E_NOT_OK; break;
        }
    }
    else if(ARG_u8Value==1)
    {

         switch(ARG_udtPin)
        {
            case GP0: ((REG_8BIT_t *)0x005)->All_REG &=~(1<<GP0); L_stderrorError = E_OK; break;
            case GP1: ((REG_8BIT_t *)0x005)->All_REG &=~(1<<GP1); L_stderrorError = E_OK; break;
            case GP2: ((REG_8BIT_t *)0x005)->All_REG &=~(1<<GP2); L_stderrorError = E_OK; break;
            case GP4: ((REG_8BIT_t *)0x005)->All_REG &=~(1<<GP4); L_stderrorError = E_OK; break;
            case GP5: ((REG_8BIT_t *)0x005)->All_REG &=~(1<<GP5); L_stderrorError = E_OK; break;
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

    if(ARG_u8Value!=(void *)0)
    {

           switch(ARG_udtPin)
        {
            case GP0: *ARG_u8Value=((REG_8BIT_t *)0x005)->All_REG ^=(1<<GP0); L_stderrorError = E_OK; break;
            case GP1: *ARG_u8Value=((REG_8BIT_t *)0x005)->All_REG ^=(1<<GP1); L_stderrorError = E_OK; break;
            case GP2: *ARG_u8Value=((REG_8BIT_t *)0x005)->All_REG ^=(1<<GP2); L_stderrorError = E_OK; break;
            case GP4: *ARG_u8Value=((REG_8BIT_t *)0x005)->All_REG ^=(1<<GP4); L_stderrorError = E_OK; break;
            case GP5: *ARG_u8Value=((REG_8BIT_t *)0x005)->All_REG ^=(1<<GP5); L_stderrorError = E_OK; break;
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
    ((REG_8BIT_t *)0x085)->All_REG=ARG_u8Value;
    ((REG_8BIT_t *)0x005)->All_REG=0x00;
}

void MDIO_voidSetPortValue
(
    unit8_t ARG_u8Value
)
{
    ((REG_8BIT_t *)0x005)->All_REG=ARG_u8Value;
}

Std_ReturnType MDIO_stderrGetPortValue
(
    unit8_t * ARG_u8Value
)
{
    Std_ReturnType L_stderrorError=E_NOT_OK;

    if(ARG_u8Value!=(void *)0)
    {

       *ARG_u8Value=((REG_8BIT_t *)0x005)->All_REG ^=(1<<GP0);

    }
    else
    {
        L_stderrorError=E_NULL_POINTER;
    }

    return L_stderrorError;
}
