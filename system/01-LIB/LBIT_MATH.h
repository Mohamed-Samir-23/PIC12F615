/*
 * File:   LBIT_MATH.h
 * Author: Mohamed Samir
 *
 * Created on August 12, 2023, 7:58 PM
 */

#ifndef _LBIT_MATH_H_
#define	_LBIT_MATH_H_

#define SETBIT(reg, bit) 	reg	|=(1<<bit)
#define CLRBIT(reg, bit) 	reg	&=~(1<<bit)
#define GETBIT(reg, bit) 	reg	^=(1<<bit)
#define TOGLBIT(reg, bit) 	((reg>>bit)&1)

#endif	
