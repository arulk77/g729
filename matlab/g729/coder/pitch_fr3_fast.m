function [T,frac,vn]=pitch_fr3_fast(exc,xn,h,tmin,tmax,biaozhi)
%Fast version of the pitch close loop.
%exc,xn,h,tmin,tmax--(excitation buffer)  (target vector ) (impulse response of
%filters.) (minimum value in the searched range) (maximum value in the searched range)
%exc-total_exc(-143:40)

%T,frac-----pitch period    chosen fraction
global b30;
%* Compute correlation of target vector with impulse response.

%for i=1:40
    %xb(i)=xn(i:end)*h(1:end-i+1)';
%end

xb=asum(xn,h);
%round(xb')
R=zeros(1,tmax);
%* Find maximum integer delay.  
for t=tmin:tmax
    R(t)=xb(1:end)*exc(161-t:161-t+39)';
end
[maxR,t]=max(R(tmin:tmax));
t0=t+tmin-1;
%t0

%* Test fractions.-----------------
%-----------------------------------
% /* Fraction 0 */
vn=pred_lt_3(exc,t0,0,b30);
vn=round(vn);
exc(161:end)=vn;
max_frac=xb*vn';
frac=0;
%/* If first subframe and lag > 84 do not search fractional pitch */
if (strcmp(biaozhi,'one')==1)&((t0-84)>0)
    T=t0;
    frac=0;
else
    vn_temp=vn;
    %/* Fraction -1/3 */---------------
    vn=pred_lt_3(exc,t0,-1,b30);
    vn=round(vn);
    exc(161:end)=vn;
    corr=xb*vn';
    if corr>max_frac
        max_frac=corr;
        frac=-1;
        vn_temp=vn;
    end
    
    %/* Fraction +1/3 */---------------
    vn=pred_lt_3(exc,t0,1,b30);
    vn=round(vn);
    exc(161:end)=vn;
    corr=xb*vn';
    if corr>max_frac
        max_frac=corr;
        frac=1;
    else
        vn=vn_temp;
    end
    T=t0;
end
