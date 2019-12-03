//*****************************************************************************
//
//Device: All
//Design Name: matrixmul
//Purpose:
//    This is a C++ version of a matrix multiplier example.
//Reference:
//Revision History:
//*****************************************************************************

#include "conv.h"

typedef int data_t;


void conv( data_t A[28][28], data_t kernel[3][3], data_t out[26][26])
{

    Row: for (int i = 1; i <=26 ;  ++i)
    {
        Col: for(int j = 1; j <=26 ; ++j)
        {
            data_t tmp = 0;
            tmp += A[i-1][j-1] * kernel[0][0];
            tmp += A[i-1][j] * kernel[0][1];
            tmp += A[i-1][j+1] * kernel[0][2];
            tmp += A[i][j-1] * kernel[1][0];
            tmp += A[i][j] * kernel[1][1];
            tmp += A[i][j+1] * kernel[1][2];
            tmp += A[i+1][j-1] * kernel[2][0];
            tmp += A[i+1][j] * kernel[2][1];
            tmp += A[i+1][j+1] * kernel[2][2];
            out[i-1][j-1] = tmp;
        }
    }
}
