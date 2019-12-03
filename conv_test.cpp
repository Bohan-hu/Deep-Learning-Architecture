//*****************************************************************************
//Device: All
//Design Name: maxtrixmul1
//Purpose:
//    This is the C++ test bench for the of a matrix multiplier example.
//Reference:
//Revision History:
//*****************************************************************************
#include <iostream>
#include "conv.h"

using namespace std;
typedef int data_t;
typedef int result_t;
#define HW_COSIM 1

int main(int argc, char **argv)
{
    data_t A[28][28];
    for(int i = 0; i<28;i++) {
        for(int j=0;j<28;j++) {
            A[i][j]=28*i+j;
        }
    }
   data_t kernel[3][3] = {
	  {0,1,2},
	  {3,4,3},
	  {1,5,6},
   };
   result_t hw_result[26][26], sw_result[26][26];
   int err_cnt = 0;

   // Generate the expected result
   // Iterate over the rows of the A matrix
    for (int i = 1; i <=26 ;  ++i)
    {
        for(int j = 1; j <=26 ; ++j)
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
            sw_result[i-1][j-1] = tmp;
        }
    }

#ifdef HW_COSIM
   // Run the AutoESL matrix multiply block
   conv(A, kernel, hw_result);
#endif

   // Print result matrix
   cout << "{" << endl;
   //cout << setw(6);
   for (int i = 0; i < 26; i++) {
      cout << "{";
      for (int j = 0; j < 26; j++) {
#ifdef HW_COSIM
         cout << hw_result[i][j];
         // Check HW result against SW
         if (hw_result[i][j] != sw_result[i][j]) {
            err_cnt++;
            cout << "*";
         }
#else
         cout << sw_result[i][j];
#endif
         if (j == 26 - 1)
            cout << "}" << endl;
         else
            cout << ",";
      }
   }
   cout << "}" << endl;

#ifdef HW_COSIM
   if (err_cnt)
      cout << "ERROR: " << err_cnt << " mismatches detected!" << endl;
   else
      cout << "Test passed." << endl;
#endif
   return err_cnt;
}

