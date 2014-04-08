function syn_pst=Post_Filter(syn,AR,T2)
%/*------------------------------------------------------------------------*
% *  Procedure     Post_Filter:                                            *
% *                ~~~~~~~~~~~                                             *
% *------------------------------------------------------------------------*
% *  The postfiltering process is described as follows:                    *
% *                                                                        *
% *  - inverse filtering of syn[] through A(z/GAMMA2_PST) to get res2[]    *
% *  - use res2[] to compute pitch parameters                              *
% *  - perform pitch postfiltering                                         *
% *  - tilt compensation filtering; 1 - MU*k*z^-1                          *
% *  - synthesis filtering through 1/A(z/GAMMA1_PST)                       *
% *  - adaptive gain control                                               *
% *------------------------------------------------------------------------*/

%  Word16 *syn,       /* in/out: synthesis speech (postfiltered is output)    */
%  Word16 *Az_4,      /* input : interpolated LPC parameters in all subframes */
%  Word16 *T          /* input : decoded pitch lags in all subframes          */

global syn_buf;
global old_rn;
global mem_pre;
global mem_syn_pst;
%Az=zeros(1,11);
%speech_proc=zeros(1,50);
res2_pst=zeros(1,40);%经过长项合成、偏斜补偿后的预测误差
syn_pst=zeros(1,80);
for subframe=1:2
    if subframe==1%第一子帧
        Az=AR(1:11);
        %Az'
        
        %/* Find pitch range t0_min - t0_max */
        T=T2(1);
        tmin=T-3;
        tmax=tmin+6;
        if tmax>143
            tmax=143;
            tmin=tmax-6;
        end   
        %[tmin,tmax]
        
        %/* Find weighted filter coefficients Ap3[] and ap[4] */
        changshu1=[1 0.55 0.55^2 0.55^3 0.55^4 0.55^5 0.55^6 0.55^7 0.55^8 0.55^9 0.55^10];
        Ap3=Az.*changshu1;
        %round(Ap3*2^12)'
        gamma_d=[1 0.7 0.7^2 0.7^3 0.7^4 0.7^5 0.7^6 0.7^7 0.7^8 0.7^9 0.7^10];
        Ap4=Az.*gamma_d;
        %round(Ap4*2^12)'
        
        %/* filtering of synthesis speech by A(z/GAMMA2_PST) to find res2[] */
        speech_proc=[syn_buf,syn(1:40)];
        res=round(residu(Ap3,speech_proc));
        %res'    
        
        %/* pitch postfiltering */
        total_rn=[old_rn,res];
        res_pst=pit_pst_filt(total_rn,tmin,tmax);
        old_rn=total_rn(41:end);
                
        %/* tilt compensation filter */
        
        %/* impulse response of A(z/GAMMA2_PST)/A(z/GAMMA1_PST) */
        h=impz(Ap3,Ap4,22)';
        %round(h*2^12)
        
        %/* 1st correlation of h[] */
        rh0=h*h';
        rh1=h(1:end-1)*h(2:end)';
        %round(rh0*2^9)
        %round(rh1*2^9)
        if rh1<=0
            factor=0;
        else
            factor=0.8*rh1/rh0;
        end
        %round(factor*2^15)
        res_pst=[mem_pre,res_pst];
        for i=1:40
            res2_pst(i)=res_pst(i+1)-factor*res_pst(i);
        end
        mem_pre=res_pst(end);
        %round(res2_pst)'
        
        %/* filtering through  1/A(z/GAMMA1_PST) */
        syn_pst(1:40)=syn_filt(Ap4,res2_pst,mem_syn_pst);
        %syn_pst(1:40)'
        mem_syn_pst=syn_pst(31:40);
        
        %/* scale output to input */
        syn_pst(1:40)=agc(syn(1:40),syn_pst(1:40));
        %syn_pst(1:40)'
        
    else
        Az=AR(12:end);
        %Az'
        
        %/* Find pitch range t0_min - t0_max */
        T=T2(2);
        tmin=T-3;
        tmax=tmin+6;
        if tmax>143
            tmax=143;
            tmin=tmax-6;
        end        
        %[tmin,tmax]
        
        %/* Find weighted filter coefficients Ap3[] and ap[4] */
        changshu1=[1 0.55 0.55^2 0.55^3 0.55^4 0.55^5 0.55^6 0.55^7 0.55^8 0.55^9 0.55^10];
        Ap3=Az.*changshu1;        
        %round(Ap3*2^12)'
        gamma_d=[1 0.7 0.7^2 0.7^3 0.7^4 0.7^5 0.7^6 0.7^7 0.7^8 0.7^9 0.7^10];
        Ap4=Az.*gamma_d;
        %round(Ap4*2^12)'        
        
        %/* filtering of synthesis speech by A(z/GAMMA2_PST) to find res2[]
        speech_proc=syn(31:end);
        res=round(residu(Ap3,speech_proc));        
        %res'
        
        %/* pitch postfiltering */
        total_rn=[old_rn,res];
        res_pst=pit_pst_filt(total_rn,tmin,tmax);
        old_rn=total_rn(41:end);
        
        %/* tilt compensation filter */
        
        %/* impulse response of A(z/GAMMA2_PST)/A(z/GAMMA1_PST) */
        h=impz(Ap3,Ap4,22)';
        %round(h*2^12)
        
        %/* 1st correlation of h[] */
        rh0=h*h';
        rh1=h(1:end-1)*h(2:end)';
        %round(rh0*2^9)
        %round(rh1*2^9)
        if rh1<=0
            factor=0;
        else
            factor=0.8*rh1/rh0;
        end
        %round(factor*2^15)
        res_pst=[mem_pre,res_pst];
        for i=1:40
            res2_pst(i)=res_pst(i+1)-factor*res_pst(i);
        end
        mem_pre=res_pst(end);
        %round(res2_pst)'
        
        %/* filtering through  1/A(z/GAMMA1_PST) */
        syn_pst(41:end)=syn_filt(Ap4,res2_pst,mem_syn_pst);
        %syn_pst(41:end)'
        mem_syn_pst=syn_pst(71:end);
              
        %/* scale output to input */
        syn_pst(41:end)=agc(syn(41:end),syn_pst(41:end));
        %syn_pst(41:end)'
  
    end
end

%/* update syn[] buffer */
syn_buf=syn(71:end);




