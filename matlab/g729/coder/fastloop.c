#include "math.h"
#include "mex.h"
void mexFunction(int nlhs,mxArray *plhs[],int nrhs,const mxArray *prhs[])
{
    double *w_speech;
    int beg,len;
    double *R;
    int colw;
    int i,j;
    
    w_speech=mxGetPr(prhs[0]);
    beg=mxGetScalar(prhs[1]);
    len=mxGetScalar(prhs[2]);
    colw=mxGetN(prhs[0]);
    plhs[0]=mxCreateDoubleMatrix(1,len,mxREAL);
    R=mxGetPr(plhs[0]);
    
    for (i=0;i<len;i++)
    {
        for (j=160;j<colw;j=j+2)
        {
            R[i]=R[i]+w_speech[j]*w_speech[j-beg-i];
        }
    }
    
}
