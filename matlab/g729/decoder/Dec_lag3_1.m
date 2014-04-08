function [k1,frac1]=Dec_lag3_1(P0,P1)
%/*------------------------------------------------------------------------*
% *    Function Dec_lag3                                                   *
% *             ~~~~~~~~                                                   *
% *   Decoding of fractional pitch lag with 1/3 resolution.                *
% * See "Enc_lag3.c" for more details about the encoding procedure.        *
% *------------------------------------------------------------------------*/
global k2 frac2;
temp1=bin_dec(P1(1),1)+bin_dec(P1(2),1)+bin_dec(P1(3),1)+bin_dec(P1(4),1)+bin_dec(P1(5),1)+bin_dec(P1(6),1)+1+bin_dec(P0,1);
temp=mod(temp1,2);
P1=bin_dec(P1,8);
if temp==0
    if P1<198
       k1 = floor((P1+2)/3)+ 19; 
       frac1=P1 - k1*3 + 58;
   else 
       k1=P1-112;
       frac1=0;
    end
else
    k1=k2;
    frac1=frac2;
end