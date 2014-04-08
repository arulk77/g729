#include "mex.h"
void mexFunction(int nlhs,mxArray *plhs[],int nrhs,const mxArray *prhs[])
{
    double *xb,*xn,*h;
    int i,j,len;
    plhs[0]=mxCreateDoubleMatrix(1,40,mxREAL);
    xb=mxGetPr(plhs[0]);
    xn=mxGetPr(prhs[0]);
    h=mxGetPr(prhs[1]);
    len=40;
    for (i=0;i<40;i++)
    {
      /*xb(i)=xn(i:end)*h(1:end-i+1)'; */
        for (j=i;j<len;j++)
        {
            xb[i]=xb[i]+xn[j]*h[j-i];
        }
    }
}
