function [k2,frac2]=Dec_lag3_2(P2)
%/*------------------------------------------------------------------------*
% *    Function Dec_lag3                                                   *
% *             ~~~~~~~~                                                   *
% *   Decoding of fractional pitch lag with 1/3 resolution.                *
% * See "Enc_lag3.c" for more details about the encoding procedure.        *
% *------------------------------------------------------------------------*/

global k1;
%/* find T0_min and T0_max for 2nd subframe */
tmin=k1-5;
if tmin<20
    tmin=20;
end
tmax=tmin+9;
if tmax>143
    tmax=143;
    tmin=tmax-9;
end
P2=bin_dec(P2,5);

%/* i = (index+2)/3 - 1 */
%/* *T0 = i + t0_min;    */
i=floor((P2+2)/3)-1;
k2=i+tmin;

%/* t0_frac = index - 2 - i*3; */
frac2=P2-2-i*3;
