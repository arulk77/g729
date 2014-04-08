#include "mex.h"
#include "math.h"
void mexFunction(int nlhs,mxArray *plhs[],int nrhs,const mxArray *prhs[])
{
    double *x,*y,*z,*GA,*GB,*gc1;
    double *bestgp,*bestgc,*update_u,*ga,*gb;
    double gp,gc,temp,gama,minimum;
    int i,j,k;
    int colx;
    x=mxGetPr(prhs[0]);
    y=mxGetPr(prhs[1]);
    z=mxGetPr(prhs[2]);
    GA=mxGetPr(prhs[3]);
    GB=mxGetPr(prhs[4]);
    gc1=mxGetPr(prhs[5]);

    plhs[0]=mxCreateDoubleMatrix(1,1,mxREAL);
    plhs[1]=mxCreateDoubleMatrix(1,1,mxREAL);
    plhs[2]=mxCreateDoubleMatrix(1,1,mxREAL);
    plhs[3]=mxCreateDoubleMatrix(1,1,mxREAL);
    plhs[4]=mxCreateDoubleMatrix(1,1,mxREAL);
    
    ga=mxGetPr(plhs[0]);
    gb=mxGetPr(plhs[1]);
    bestgp=mxGetPr(plhs[2]);
    bestgc=mxGetPr(plhs[3]);
    update_u=mxGetPr(plhs[4]);
    
    colx=mxGetN(prhs[0]);
    temp=0;
    gp=0;
    gc=0;
    gama=0;
    minimum=10*10*10*10*10*10*10*10*10*10;
    
    for (k=0;k<8;k++)
    {
        for (j=0;j<16;j++)
        {
            /*GA:[8,2]
             GB:[16,2]
             gp=GA(i,1)+GB(j,1);*/
            temp=0;
            gp=GA[k]+GB[j];
            gama=GA[8+k]+GB[16+j];
            gc=gc1[0]*gama;           
            for (i=0;i<colx;i++)
            {
                temp=temp+x[i]*x[i]+gp*gp*y[i]*y[i]+gc*gc*z[i]*z[i]-2*gp*x[i]*y[i]-2*gc*x[i]*z[i]+2*gp*gc*y[i]*z[i];
            }
            if (minimum>temp)
            {
                ga[0]=k+1;
                gb[0]=j+1;
                minimum=temp;
                update_u[0]=20*log2(gama)/(log2(10));
                bestgp[0]=gp;
                bestgc[0]=gc;
            }
        }
    }
}

