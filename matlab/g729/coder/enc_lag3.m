function [index,tmin,tmax]=enc_lag3(T0,T0_frac,tmin,tmax,biaozhi)
%/*----------------------------------------------------------------------*
% *    Function Enc_lag3                                                 *
% *             ~~~~~~~~                                                 *
% *   Encoding of fractional pitch lag with 1/3 resolution.              *
% *----------------------------------------------------------------------*
% * The pitch range for the first subframe is divided as follows:        *
% *   19 1/3  to   84 2/3   resolution 1/3                               *
% *   85      to   143      resolution 1                                 *
% *                                                                      *
% * The period in the first subframe is encoded with 8 bits.             *
% * For the range with fractions:                                        *
% *   index = (T-19)*3 + frac - 1;   where T=[19..85] and frac=[-1,0,1]  *
% * and for the integer only range                                       *
% *   index = (T - 85) + 197;        where T=[86..143]                   *
% *----------------------------------------------------------------------*
% * For the second subframe a resolution of 1/3 is always used, and the  *
% * search range is relative to the lag in the first subframe.           *
% * If t0 is the lag in the first subframe then                          *
% *  t_min=t0-5   and  t_max=t0+4   and  the range is given by           *
% *       t_min - 2/3   to  t_max + 2/3                                  *
% *                                                                      *
% * The period in the 2nd subframe is encoded with 5 bits:               *
% *   index = (T-(t_min-1))*3 + frac - 1;    where T[t_min-1 .. t_max+1] *
% *----------------------------------------------------------------------*/

if strcmp(biaozhi,'one')==1%/* if 1st subframe */
    %/* encode pitch delay (with fraction) */------
    if (T0<=85)
        index=3*T0-58+T0_frac;
    else
        index = (T0 - 85) + 197;
    end

    %/* find T0_min and T0_max for second subframe */----
    tmin=T0-5;
    if tmin<20
        tmin=20;
    end
    tmax=tmin+9;

    if tmax>143
        tmax=143;
        tmin=tmax-9;
    end
else
    %/* if second subframe */-----
    
    index=(T0 - tmin)*3 + 2 + T0_frac;
end




