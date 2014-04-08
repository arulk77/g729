#include "mex.h"
#include "matrix.h"
void mexFunction(int nlhs,mxArray *plhs[],int nrhs,const mxArray *prhs[])
{
    int row0,col0;
    int row1,col1;
    int row2,col2;
    int i,j;
    double *a,*x,*mem;
    double *copymem,*y;
    col0=mxGetN(prhs[0]);
    col1=mxGetN(prhs[1]);
    col2=mxGetN(prhs[2]);
    copymem=mxCalloc(col2,sizeof(double));
    plhs[0]=mxCreateDoubleMatrix(1,40,mxREAL);
    y=mxGetPr(plhs[0]);
    a=mxGetPr(prhs[0]);
    x=mxGetPr(prhs[1]);
    mem=mxGetPr(prhs[2]);
    for (i=0;i<col2;i++)
    {
        copymem[i]=mem[i];
    }
    for (i=0;i<40;i++)
    {
        y[i]=x[i];
        for (j=0;j<col0-1;j++)
        {
            y[i]=y[i]-a[j+1]*copymem[col2-1-j];           
        }
        for (j=0;j<col2;j++)
        {
            if (j<(col2-1))
                copymem[j]=copymem[j+1];
            else
                copymem[j]=y[i];
        }
    }
    mxFree(copymem);
}
