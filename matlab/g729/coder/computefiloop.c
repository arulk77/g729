#include "mex.h"
#include "matrix.h"
void mexFunction(int nlhs,mxArray *plhs[],int nrhs,const mxArray *prhs[])
{
    double *H,*h;
    int i,j;
    h=mxGetPr(prhs[0]);
    plhs[0]=mxCreateDoubleMatrix(40,40,mxREAL);
    H=mxGetPr(plhs[0]);
    for (j=0;j<40;j++)
    {
        for (i=j;i<40;i++)
        {
            H[i+j*40]=h[i-j];
        }
    }
            
}
