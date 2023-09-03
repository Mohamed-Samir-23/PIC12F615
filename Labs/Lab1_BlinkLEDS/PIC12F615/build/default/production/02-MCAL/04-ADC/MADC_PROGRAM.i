# 1 "02-MCAL/04-ADC/MADC_PROGRAM.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 288 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC10-12Fxxx_DFP/1.6.174/xc8\\pic\\include\\language_support.h" 1 3
# 2 "<built-in>" 2
# 1 "02-MCAL/04-ADC/MADC_PROGRAM.c" 2
# 11 "02-MCAL/04-ADC/MADC_PROGRAM.c"
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
# 11 "02-MCAL/04-ADC/MADC_PROGRAM.c" 2

# 1 "01-LIB\\LBIT_MATH.h" 1
# 12 "02-MCAL/04-ADC/MADC_PROGRAM.c" 2



# 1 "02-MCAL/04-ADC/MADC_PRIVATE.h" 1
# 15 "02-MCAL/04-ADC/MADC_PROGRAM.c" 2

# 1 "02-MCAL/04-ADC/MADC_INTERFACE.h" 1
# 11 "02-MCAL/04-ADC/MADC_INTERFACE.h"
void MADC_voidEnableAllADC(void);

void MADC_voidDisableAllADC(void);
# 16 "02-MCAL/04-ADC/MADC_PROGRAM.c" 2




void MADC_voidEnableAllADC(void)
{




}

void MADC_voidDisableAllADC(void)
{
    ((REG_8BIT_t *)0X9F)->All_REG =0;
}
