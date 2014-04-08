function [Top,wsp,exc]=Pitch_Open_Loop(total_speech,old_wsp)

 %/*----------------------------------------------------------------------*
 %* - Find the weighted input speech w_sp[] for the whole speech frame   *
 %* - Find the open-loop pitch delay                                     *
 %*----------------------------------------------------------------------*/
 %total_speech--240 samples (present_speech=total_speech(121:200))
 
 global rcAR1 rcAR2 mem ;
 
 %º∆À„‘§≤‚ŒÛ≤Ó
 exc=zeros(1,80);
 exc(1:40)=residu(rcAR1,total_speech(111:160));%–Ë“™x(-m...-1)m=10
 exc(41:end)=residu(rcAR2,total_speech(151:200));
 %round(exc'*2^15)
 %round(rcAR1'*2^12) 
 %round(rcAR2'*2^12)
 
%- Find the weighted input speech w_sp[] for the whole speech frame
wsp=zeros(1,80);
Az_gamma=conv(rcAR1.*[1 0.75 0.75^2 0.75^3 0.75^4 0.75^5 0.75^6 0.75^7 0.75^8 0.75^9 0.75^10],[1 -0.7]);
Az_gamma=Az_gamma(1:11);
%round(Az_gamma*2^12)
wsp(1:40)=syn_filt(Az_gamma,exc(1:40),mem);
mem=wsp(31:40);

Az_gamma=conv(rcAR2.*[1 0.75 0.75^2 0.75^3 0.75^4 0.75^5 0.75^6 0.75^7 0.75^8 0.75^9 0.75^10],[1 -0.7]);
Az_gamma=Az_gamma(1:11);
%round(Az_gamma*2^12)
wsp(41:end)=syn_filt(Az_gamma,exc(41:end),mem);
mem=wsp(71:end);
%round(wsp*2^15)'

%  /* Find open loop pitch lag */
total_wsp=[old_wsp,wsp];%(-160:80)
Top=pitch_ol_fast(total_wsp);



 