function [s,Az_dec,T2]=G729decode(L0,L1,L2,L3,P1,P0,S1,C1,GA1,GB1,P2,S2,C2,GA2,GB2)
%


global MA1 MA2 lspcb1 lspcb2 lspcb3 GA GB;
global b12 b30;
global l k1 k2 frac2 beita U g0;
global old_exc lsp_old;
global old_speech;

s=zeros(1,80);
%对每80bits解码
%%---------------------------------------------------------------
%合成LP参数
%%以下获得量化后的lsp  (w^)
if L0==0
    P=MA1;
else
    P=MA2;
end
[lsp_qua,l_qua]=lsp_get_quant(lspcb1,lspcb2,lspcb3,L1+1,L2+1,L3+1,P,l);%(q_lsf)
l(1:3,:)=l(2:end,:);
l(4,:)=l_qua;

lsp_qua=cos(lsp_qua);%lsf to lsp
%round(lsp_qua'*2^15)

%/* Interpolation of LPC for the 2 subframes */
[rcAR1,rcAR2]=int_qlpc(lsp_old,lsp_qua);
%round(rcAR1*2^12)'
%round(rcAR2*2^12)'

%/* update the LSFs for the next frame */
lsp_old=lsp_qua;
%round(lsp_qua'*2^15)

exc=zeros(1,80);
%/*------------------------------------------------------------------------*
% *          Loop for every subframe in the analysis frame                 *
% *------------------------------------------------------------------------*
% * The subframe size is L_SUBFR and the loop is repeated L_FRAME/L_SUBFR  *
% *  times                                                                 *
% *     - decode the pitch delay                                           *
% *     - decode algebraic code                                            *
% *     - decode pitch and codebook gains                                  *
% *     - find the excitation and compute synthesis speech                 *
% *------------------------------------------------------------------------*/
for subframe=1:2
    if subframe==1%第一子帧
        
        [k1,frac1]=Dec_lag3_1(P0,P1);
        
       %/*-------------------------------------------------*
       % * - Find the adaptive codebook vector.            *
       % *-------------------------------------------------*/  
       total_exc=[old_exc,exc(1:40)];%(-160:40)
       v=pred_lt_3(total_exc,k1,frac1,b30);
       %v'
       
       %/*-------------------------------------------------------*
       % * - Decode innovative codebook.                         *
       % * - Add the fixed-gain pitch contribution to code[].    *
       % *-------------------------------------------------------*/   
       cod=Decod_ACELP(S1,C1);
       cod=update_c_h(cod,k1);
       
       %/*-------------------------------------------------*
       % * - Decode pitch and codebook gains.              *
       % *-------------------------------------------------*/
       [gp,gc]=Dec_gain(GA1,GB1,cod,GA,GB);

       % /*-------------------------------------------------------------*
       %  * - Update pitch sharpening "sharp" with quantized gain_pitch *
       %  *-------------------------------------------------------------*/
       beita=gp;                  %更新beita
       if beita>0.8
            beita=0.8;
       else if beita<0.2
                beita=0.2;
           end
       end 
       
       % /*-------------------------------------------------------*
       %  * - Find the total excitation.                          *
       %  * - Find synthesis speech corresponding to exc[].       *
       %  *-------------------------------------------------------*/    
       exc(1:40)=round(gp*v+gc*cod);
       %exc(1:40)'
       
       syn_speech=syn_filt(rcAR1,exc(1:40),old_speech);
       old_speech=syn_speech(31:end);
       %syn_speech'
       s(1:40)=syn_speech;
       
        
    else%第二子帧
        
       [k2,frac2]=Dec_lag3_2(P2);
    
       %/*-------------------------------------------------*
       % * - Find the adaptive codebook vector.            *
       % *-------------------------------------------------*/     
       total_exc=[old_exc(41:end),exc];%(-160:40)
       v=pred_lt_3(total_exc,k2,frac2,b30); 
       %v'
    
       %/*-------------------------------------------------------*
       % * - Decode innovative codebook.                         *
       % * - Add the fixed-gain pitch contribution to code[].    *
       % *-------------------------------------------------------*/    
       cod=Decod_ACELP(S2,C2);
       cod=update_c_h(cod,k2);
       
       %/*-------------------------------------------------*
       % * - Decode pitch and codebook gains.              *
       % *-------------------------------------------------*/
       [gp,gc]=Dec_gain(GA2,GB2,cod,GA,GB);
   
       % /*-------------------------------------------------------------*
       %  * - Update pitch sharpening "sharp" with quantized gain_pitch *
       %  *-------------------------------------------------------------*/  
       beita=gp;                  %更新beita
       if beita>0.8
            beita=0.8;
       else if beita<0.2
                beita=0.2;
           end
       end 

       % /*-------------------------------------------------------*
       %  * - Find the total excitation.                          *
       %  * - Find synthesis speech corresponding to exc[].       *
       %  *-------------------------------------------------------*/ 
       exc(41:end)=round(gp*v+gc*cod);
       %exc(41:end)'
       
       syn_speech=syn_filt(rcAR2,exc(41:end),old_speech);
       old_speech=syn_speech(31:end);
       %syn_speech'
       s(41:end)=syn_speech;
       
    end
    
    % /*--------------------------------------------------*
    %  * Update signal for next frame.                    *
    %  * -> shift to the left by L_FRAME  exc[]           *
    %  *--------------------------------------------------*/
    old_exc=[old_exc(81:end),exc];
        
end


 
 

Az_dec=[rcAR1,rcAR2];
T2=[k1,k2];

