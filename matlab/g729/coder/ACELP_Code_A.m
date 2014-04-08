function [position,s,jx,S,C,zn,cod]=ACELP_Code_A(xn,h,T0,biaozhi)
%/*---------------------------------------------------------------------------*
% *  Function  ACELP_Code_A()                                                 *
% *  ~~~~~~~~~~~~~~~~~~~~~~~~                                                 *
% *   Find Algebraic codebook for G.729A                                      *
% *--------------------------------------------------------------------------*/

%xn,h,T0----Target vector  , Inpulse response of filters,Pitch lag
%position,s-----index of pulses positions , Signs of 4 pulses



% /*-----------------------------------------------------------------*
%  * Include fixed-gain pitch contribution into impulse resp. h[]    *
%  * Find correlations of h[] needed for the codebook search.        *
%  *-----------------------------------------------------------------*/
h=update_c_h(h,T0);
%round(h*2^12)'

% /*-----------------------------------------------------------------*
%  * Compute correlation of target vector with impulse response.     *
%  *-----------------------------------------------------------------*/

rr=computefi(h);
%rr

% /*-----------------------------------------------------------------*
%  * Compute correlation of target vector with impulse response.     *
%  *-----------------------------------------------------------------*/
%for i=1:40
    %dn(i)=xn(i:end)*h(1:end-i+1)';
%end
dn=asum(xn,h);

% /*-----------------------------------------------------------------*
%  * Find innovative codebook.                                       *
%  *-----------------------------------------------------------------*/
[position,s,jx]=codesearch(dn,rr);

% /* Find the codeword corresponding to the selected positions */
cod=compute_codeword(position,s,jx);


% % /* find the filtered codeword */
zn=computing_zn(cod,h);
%round(zn'*2^12)

% /* find codebook index;  17-bit address */
[S,C]=fixed_codebook_index(s,position);

% /*-----------------------------------------------------------------*
%  * Compute innovation vector gain.                                 *
%  * Include fixed-gain pitch contribution into code[].              *
%  *-----------------------------------------------------------------*/
cod=update_c_h(cod,T0);
