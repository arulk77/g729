function [Xn2,Gp,Vn,Yn,tmin,tmax,T0,h,xn,P_index1,P_index2]=ClosedLoopPitchSearch(top,biaozhi,exc,old_exc,tmin,tmax)
%perform ClosedLoopPitchSearch

global rcAR1 rcAR2 Filterstate;
if strcmp(biaozhi,'one')==1
    %* Compute impulse response, h1[], of weighted synthesis filter  *
    h=impulse_response(rcAR1)';
    
    %*  Find the target vector for pitch search: W(z)S(z)                *
    ap_t=rcAR1.*[1 0.75 0.75^2 0.75^3 0.75^4 0.75^5 0.75^6 0.75^7 0.75^8 0.75^9 0.75^10];
    xn=syn_filt(ap_t,exc(1:40),Filterstate);
    %round(xn*2^15)'
    
    
    %*  Closed-loop fractional pitch search
    total_exc=[old_exc,exc(1:40)];%(-160:40)
    [T1,frac1,vn]=pitch_fr3_fast(total_exc,xn,h,tmin,tmax,'one');
    [index,tmin,tmax]=enc_lag3(T1,frac1,tmin,tmax,'one');
    P1=dec_bin(index,8);
    P0=mod(sum(P1(1:6))+1,2);
    %P1=bin2dec(P1(:))';
    P_index1=P1;
    P_index2=P0;


   %/*-----------------------------------------------------------------*
    %*   - find filtered pitch exc                                     *
    %*   - compute pitch gain and limit between 0 and 1.2              *
    %*   - update target vector for codebook search                    *
    %*-----------------------------------------------------------------*/
    mem_zero=zeros(1,10);
    yn=syn_filt(ap_t,vn,mem_zero);
    gp=g_pitch(xn,yn);
    xn2=xn-gp*yn;
    %xn2
    T0=T1;
    
else
    %* Compute impulse response, h1[], of weighted synthesis filter  *
    h=impulse_response(rcAR2)';
    
    %*  Find the target vector for pitch search:
    ap_t=rcAR2.*[1 0.75 0.75^2 0.75^3 0.75^4 0.75^5 0.75^6 0.75^7 0.75^8 0.75^9 0.75^10];
    xn=syn_filt(ap_t,exc(41:end),Filterstate);
    %round(xn*2^15)'
    
    %*  Closed-loop fractional pitch search
    total_exc=[old_exc(41:end),exc];%(-160:40)
    [T2,frac2,vn]=pitch_fr3_fast(total_exc,xn,h,tmin,tmax,'two');
    %vn
    [index,tmin,tmax]=enc_lag3(T2,frac2,tmin,tmax,'two');
    P2=dec_bin(index,5);
    %P2=bin2dec(P2(:))';
    P_index1=P2;
    P_index2=0;
    
   %/*-----------------------------------------------------------------*
    %*   - find filtered pitch exc                                     *
    %*   - compute pitch gain and limit between 0 and 1.2              *
    %*   - update target vector for codebook search                    *
    %*-----------------------------------------------------------------*/
    mem_zero=zeros(1,10);
    yn=syn_filt(ap_t,vn,mem_zero);
    gp=g_pitch(xn,yn);
    xn2=xn-gp*yn;
    T0=T2;

end

Xn2=xn2;Gp=gp;Vn=vn;Yn=yn;