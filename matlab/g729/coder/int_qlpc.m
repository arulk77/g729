function [AR_q1,AR_q2]=int_qlpc(lsp_old,lsp_new)
%Interpolation of the quantized LSP's 
%lsp_old,lsp_new---LSP vector of past frame  LSP vector of present frame
%[AR_q1,AR_q1]--interpolated Az() for the 2 subframes

%  /*  lsp[i] = lsp_new[i] * 0.5 + lsp_old[i] * 0.5 */
lsp=zeros(1,10);
lsp=0.5*(lsp_old+lsp_new);


w=zeros(1,10);
w=acos(lsp);
w=w/(2*pi);
AR_q1=lpcls2ar(w);

w=acos(lsp_new);
w=w/(2*pi);
AR_q2=lpcls2ar(w);



