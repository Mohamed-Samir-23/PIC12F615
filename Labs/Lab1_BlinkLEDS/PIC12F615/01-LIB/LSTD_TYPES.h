/*
 * File:   LSTD_TYPES.h
 * Author: Mohamed Samir
 *
 * Created on August 12, 2023, 7:58 PM
 */

 
#ifndef _LSTD_TYPES_H_
#define	_LSTD_TYPES_H_

/********************************** Standard type for unsigned integer **********************************/
typedef unsigned char unit8_t;
typedef unsigned short unit16_t;
typedef unsigned long int unit32_t;
/********************************** Standard type for signed integer **********************************/
typedef signed char snit8_t;
typedef signed short snit16_t;
typedef signed long int snit32_t;
/********************************** Standard type for volatile unsigned integer **********************************/
typedef volatile unsigned char vunit8_t;
typedef volatile unsigned short vunit16_t;
typedef volatile unsigned long int vunit32_t;
/********************************** Standard type for volatile signed integer **********************************/
typedef volatile signed char vsnit8_t;
typedef volatile signed short vsnit16_t;
typedef volatile signed long int vsnit32_t;
/********************************** Standard type for floats **********************************/
typedef float f32_t;
typedef double f64_t;

/************************************ Error Type Define **************************************/
typedef enum
{
	E_OK,
	E_NOT_OK,
	E_PENDING,
    E_NULL_POINTER
}Std_ReturnType;

/*********************************** Boolean type Define **************************************/
typedef enum
{
	True=1,
    False=0
}bool;

/*********************************** NULL_POINTER Define *************************************/
#define NULL_POINTER (void *)0

/************************************* REG TYPE Define ***************************************/
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


#endif

