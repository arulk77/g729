#include <mex.h>
#include "matrix.h"
void mexFunction(int nlhs,mxArray *plhs[],int nrhs,const mxArray *prhs[])
{

    double *exc,*b30,*T,*fraction;
    int k,frac;
    double *u1,*v;
    int i,j;

    exc=mxGetPr(prhs[0]);
    T=mxGetPr(prhs[1]);
    fraction=mxGetPr(prhs[2]);
    b30=mxGetPr(prhs[3]);
    plhs[0]=mxCreateDoubleMatrix(1,40,mxREAL);
    v=mxGetPr(plhs[0]);
    u1=(double *)mxCalloc(200,sizeof(double));
    k=(int) T[0];
    frac=(int) fraction[0];
    frac=-frac;
    if (frac==-1)
    {
        k=k+1;
        frac=2;
    }
    
    for (i=0;i<200;i++)
    {
        u1[i]=exc[i];
    }
    for (i=0;i<40;i++)
    {
        for (j=0;j<10;j++)
        {
            v[i]=v[i]+u1[(i-k+160-j)]*b30[(frac+3*j)]+u1[i-k+160+j]*b30[3-frac+3*j];
            u1[159+i]=v[i];
        }
    }
    mxFree(u1);
}
