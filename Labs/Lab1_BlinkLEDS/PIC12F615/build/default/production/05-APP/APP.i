# 1 "05-APP/APP.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 288 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC10-12Fxxx_DFP/1.6.174/xc8\\pic\\include\\language_support.h" 1 3
# 2 "<built-in>" 2
# 1 "05-APP/APP.c" 2
# 13 "05-APP/APP.c"
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
# 13 "05-APP/APP.c" 2

# 1 "01-LIB\\LBIT_MATH.h" 1
# 14 "05-APP/APP.c" 2


# 1 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC10-12Fxxx_DFP/1.6.174/xc8\\pic\\include\\builtins.h" 1 3



# 1 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\c90\\stdint.h" 1 3
# 13 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\c90\\stdint.h" 3
typedef signed char int8_t;






typedef signed int int16_t;







typedef __int24 int24_t;







typedef signed long int int32_t;
# 52 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\c90\\stdint.h" 3
typedef unsigned char uint8_t;





typedef unsigned int uint16_t;






typedef __uint24 uint24_t;






typedef unsigned long int uint32_t;
# 88 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\c90\\stdint.h" 3
typedef signed char int_least8_t;







typedef signed int int_least16_t;
# 109 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\c90\\stdint.h" 3
typedef __int24 int_least24_t;
# 118 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\c90\\stdint.h" 3
typedef signed long int int_least32_t;
# 136 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\c90\\stdint.h" 3
typedef unsigned char uint_least8_t;






typedef unsigned int uint_least16_t;
# 154 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\c90\\stdint.h" 3
typedef __uint24 uint_least24_t;







typedef unsigned long int uint_least32_t;
# 181 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\c90\\stdint.h" 3
typedef signed char int_fast8_t;






typedef signed int int_fast16_t;
# 200 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\c90\\stdint.h" 3
typedef __int24 int_fast24_t;







typedef signed long int int_fast32_t;
# 224 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\c90\\stdint.h" 3
typedef unsigned char uint_fast8_t;





typedef unsigned int uint_fast16_t;
# 240 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\c90\\stdint.h" 3
typedef __uint24 uint_fast24_t;






typedef unsigned long int uint_fast32_t;
# 268 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\c90\\stdint.h" 3
typedef int32_t intmax_t;
# 282 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\c90\\stdint.h" 3
typedef uint32_t uintmax_t;






typedef int16_t intptr_t;




typedef uint16_t uintptr_t;
# 5 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC10-12Fxxx_DFP/1.6.174/xc8\\pic\\include\\builtins.h" 2 3


#pragma intrinsic(__nop)
extern void __nop(void);


#pragma intrinsic(_delay)
extern __attribute__((nonreentrant)) void _delay(uint32_t);
#pragma intrinsic(_delaywdt)
extern __attribute__((nonreentrant)) void _delaywdt(uint32_t);
# 16 "05-APP/APP.c" 2


# 1 "02-MCAL/01-DIO\\MDIO_INTERFACE.h" 1
# 11 "02-MCAL/01-DIO\\MDIO_INTERFACE.h"
#pragma config FOSC = INTOSCIO
#pragma config WDTE = OFF
#pragma config PWRTE = ON
#pragma config MCLRE = ON
#pragma config CP = OFF
#pragma config IOSCFS = 8MHZ
#pragma config BOREN = OFF
# 27 "02-MCAL/01-DIO\\MDIO_INTERFACE.h"
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
# 18 "05-APP/APP.c" 2

# 1 "02-MCAL/04-ADC\\MADC_INTERFACE.h" 1
# 11 "02-MCAL/04-ADC\\MADC_INTERFACE.h"
void MADC_voidEnableAllADC(void);

void MADC_voidDisableAllADC(void);
# 19 "05-APP/APP.c" 2







void DIO_Write(unit8_t pins,unit8_t value);
void main(void) {

    MADC_voidDisableAllADC();

    MDIO_stderrSetPinDirection(GP0,MDIO_OUTPUT);
    MDIO_stderrSetPinDirection(GP1,MDIO_OUTPUT);
    MDIO_stderrSetPinDirection(GP2,MDIO_OUTPUT);
    MDIO_stderrSetPinDirection(GP4,MDIO_OUTPUT);
    MDIO_stderrSetPinDirection(GP5,MDIO_OUTPUT);

    MDIO_stderrSetPinValue(GP0, 1);
    MDIO_stderrSetPinValue(GP1, 1);
    MDIO_stderrSetPinValue(GP2, 1);
    MDIO_stderrSetPinValue(GP4, 1);
    MDIO_stderrSetPinValue(GP5, 1);


    while(1)
    {

        MDIO_voidSetPortValue(0x01);
        _delay((unsigned long)((1000)*(8000000/4000.0)));
        MDIO_voidSetPortValue(0x01|0x02);
        _delay((unsigned long)((1000)*(8000000/4000.0)));
        MDIO_voidSetPortValue(0x01|0x02|0x04);
        _delay((unsigned long)((1000)*(8000000/4000.0)));
        MDIO_voidSetPortValue(0x01|0x02|0x04|0x10);
        _delay((unsigned long)((1000)*(8000000/4000.0)));
        MDIO_voidSetPortValue(0x01|0x02|0x04|0x10|0x20);
        _delay((unsigned long)((1000)*(8000000/4000.0)));
        MDIO_voidSetPortValue(0x02|0x04|0x10|0x20);
        _delay((unsigned long)((1000)*(8000000/4000.0)));
        MDIO_voidSetPortValue(0x04|0x10|0x20);
        _delay((unsigned long)((1000)*(8000000/4000.0)));
        MDIO_voidSetPortValue(0x10|0x20);
        _delay((unsigned long)((1000)*(8000000/4000.0)));
        MDIO_voidSetPortValue(0x20);
        _delay((unsigned long)((1000)*(8000000/4000.0)));
    }

    return;
}
