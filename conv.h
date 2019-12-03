//*****************************************************************************
//Device: All
//Design Name: conv
//Purpose:
//    This is the header for the conv.cpp design.
//Reference:
//Revision History:
//*****************************************************************************
#ifndef __CONV_H__
#define __CONV_H__

#include <cmath>
using namespace std;
typedef int data_t;
// Uncomment this line to compare TB vs HW C-model and/or RTL
//#define HW_COSIM

// Prototype of top level function for C-synthesis
void conv( data_t A[28][28], data_t kernel[3][3], data_t out[26][26]);


#endif // __CONV_H__ not defined

