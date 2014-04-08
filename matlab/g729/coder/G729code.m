function [codestream] =  G729code(speech)
% Start a watchdog timer 
re = 0;
tic
L=floor(length(speech)/80);
codestream=[];%Initialize a codestream vector

% Initialize the appropriate variable for the speech encoder
QuanJuValue(speech);
present_speech=zeros(1,80);%The present speech matrix
new_speech=zeros(1,80);%New speech, i.e. future reference matrix
total_speech=zeros(1,240);%Total speech. this consists of the prv/cur/new speech
old_wsp=zeros(1,160);%(-143:0) WSP
old_exc=zeros(1,160);%(-143:0) exc
inmapa=[5, 1, 4, 7, 3, 0, 6, 2];
inmapb=[4, 6, 0, 2,12,14, 8,10,15,11, 9,13, 7, 3, 1, 5];
%/*----------------------------------------------------------------------*
%  *      Initialize pointers to speech vector.                            *
%  *                                                                       *
%  *                                                                       *
%  *   |--------------------|-------------|-------------|------------|     *
%  *     previous speech           sf1           sf2         L_NEXT        *
%  *                                                                       *
%  *   <----------------  Total speech vector (L_TOTAL)   ----------->     *
%  *   <----------------  LPC analysis window (L_WINDOW)  ----------->     *
%  *   |                   <-- present frame (L_FRAME) -->                 *
%  * old_speech            |              <-- new speech (L_FRAME) -->     *
%  * p_window              |              |                                *
%  *                     speech           |                                *
%  *                             new_speech                                *
%  *-----------------------------------------------------------------------*/

% The speech sample is split into 80 samples (5 ms) window
for i=1:L
    new_speech=round(speech(80*(i-1)+1:80*i)*2^15); 
    new_speech=round(Pre_Process(new_speech));%Preprocess the speech code
    total_speech=[total_speech(81:end),new_speech];    
    present_speech=total_speech(121:200);%present speech
    %round(total_speech*2^15)
    %frame=i-1
    [L0code,L1code,L2code,L3code]=LpAnalysis(total_speech);
    
    [Top,wsp,exc]=Pitch_Open_Loop(total_speech,old_wsp);
    %Top
    
    %  /* Range for closed loop pitch search in 1st subframe */
    tmin=Top-3;
    if tmin<20
        tmin=20;
    end
    tmax=tmin+6;
    if tmax>143
        tmax=143;
        tmin=tmax-6;
    end
    
     %/*------------------------------------------------------------------------*
     %*          Loop for every subframe in the analysis frame                 *
     %*------------------------------------------------------------------------*
     %*  To find the pitch and innovation parameters. The subframe size is     *
     %*  L_SUBFR and the loop is repeated 2 times.                             *
     %*     - find the weighted LPC coefficients                               *
     %*     - find the LPC residual signal res[]                               *
     %*     - compute the target signal for pitch search                       *
     %*     - compute impulse response of weighted synthesis filter (h1[])     *
     %*     - find the closed-loop pitch parameters                            *
     %*     - encode the pitch delay                                           *
     %*     - find target vector for codebook search                           *
     %*     - codebook search                                                  *
     %*     - VQ of pitch and codebook gains                                   *
     %*     - update states of weighting filter                                *
     %*------------------------------------------------------------------------*/
     for subframe=1:2
         if subframe==1%第一子帧
            
            [Xn2,Gp,Vn,Yn,tmin,tmax,T0,h,Xn,P1,P0]=ClosedLoopPitchSearch(Top,'one',exc,old_exc,tmin,tmax);

            %  /*-----------------------------------------------------*
            %   * - Innovative codebook search.                       *
            %   *-----------------------------------------------------*/
            [position,s,jx,S1,C1,zn,cod]=ACELP_Code_A(Xn2,h,T0,'one');
            
           
            %  /*-----------------------------------------------------*
            %   * - Quantization of gains.                            *
            %   *-----------------------------------------------------*/
            [ga,gb,gp,gc]=Qua_gain(Xn,Yn,zn,cod);
            %ga
            %pause
            GA1=dec_bin(inmapa(ga),3);%GA1=bin2dec(GA1(:))';
            GB1=dec_bin(inmapb(gb),4);%GB1=bin2dec(GB1(:))';
            
            %   /*------------------------------------------------------*
            %    * - Find the total excitation                          *
            %    * - update filters memories for finding the target     *
            %    *   vector in the next subframe                        *
            %    *------------------------------------------------------*/
            
            exc(1:40)=Memory_update(gp,gc,Vn,cod,Xn,Yn,zn);

            

         
         else%第二子帧
             %round(exc')
             [Xn2,Gp,Vn,Yn,tmin,tmax,T0,h,Xn,P2]=ClosedLoopPitchSearch(Top,'two',exc,old_exc,tmin,tmax);
  
             
             %  /*-----------------------------------------------------*
             %   * - Innovative codebook search.                       *
             %   *-----------------------------------------------------*/             
             [position,s,jx,S2,C2,zn,cod]=ACELP_Code_A(Xn2,h,T0,'two');
             
     
             %  /*-----------------------------------------------------*
             %   * - Quantization of gains.                            *
             %   *-----------------------------------------------------*/         
             [ga,gb,gp,gc]=Qua_gain(Xn,Yn,zn,cod);
             GA2=dec_bin(inmapa(ga),3);%GA2=bin2dec(GA2(:))';
             GB2=dec_bin(inmapb(gb),4);%GB2=bin2dec(GB2(:))';         
         
         
             %   /*------------------------------------------------------*
             %    * - Find the total excitation                          *
             %    * - update filters memories for finding the target     *
             %    *   vector in the next subframe                        *
             %    *------------------------------------------------------*/         
             exc(41:end)=Memory_update(gp,gc,Vn,cod,Xn,Yn,zn);
         
    
    
    
         end
         %exc...
     end
    
    
    % /*--------------------------------------------------*
    %* Update signal for next frame.                    *
    %* -> shift to the left by L_FRAME:                 *
    %*     speech[], wsp[] and  exc[]                   *
    %*--------------------------------------------------*/
    old_wsp=[old_wsp(81:end),wsp];
    old_exc=[old_exc(81:end),exc];
    
    %codestream=[codestream;L0code,L1code,L2code,L3code,P1,P0,C1,S1,GA1,GB1,P2,C2,S2,GA2,GB2];
    codestream=[codestream,27425,80,L0code,L1code,L2code,L3code,P1,P0,C1,S1,GA1,GB1,P2,C2,S2,GA2,GB2];
end

%Convert to regular stream
for i=1:length(codestream)
    if codestream(i)==0
        codestream(i)=127;
    elseif codestream(i)==1
        codestream(i)=129;
    end
end
fid=fopen('coding.bit','w');
count=fwrite(fid,codestream,'int16');
fclose(fid);
toc
