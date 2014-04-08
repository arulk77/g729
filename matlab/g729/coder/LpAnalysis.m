function [L0code,L1code,L2code,L3code]=LpAnalysis(speech)

%speech－－－语音帧(240点,编码数据(present_speech)位于(121:200))
%L0code,L1code,L2code,L3code--声道参数码字

global L1 L2 L3 L0 MA1 MA2 lspcb1 lspcb2 lspcb3 q_old rcAR1 rcAR2;
global freq_prev;%用于li更新

%计算自相关系数
window=zeros(1,240);
for i=1:200
    window(i)=0.54-0.46*cos((i-1)*2*pi/399);
end
for i=1:40
    window(200+i)=cos(2*pi*(i-1)/159);
end
window_speech=window.*speech;
AR=autocorr_levinson(window_speech);
%AR=lpc(window_speech,10);
%把自相关系数转化为LSP(线谱对)参数
ls=lpcar2ls(AR);


%以下为量化LSP参数------------------------
oumiga=ls*2*pi;
l_qua=zeros(1,10);%量化过的l
W=zeros(1,10);
lsp_qua=zeros(1,10);%量化过的lsp
%定义加权系数W
if oumiga(2)-0.04*pi-1>0
    W(1)=1;
else
    W(1)=10*(oumiga(2)-0.04*pi-1)^2+1;
end
for i=2:9
    if oumiga(i+1)-oumiga(i-1)-1>0
        W(i)=1;
    else
        W(i)=10*(oumiga(i+1)-oumiga(i-1)-1)^2+1;
    end
end
if -oumiga(9)+0.92*pi-1>0
    W(10)=1;
else
    W(10)=10*(-oumiga(9)+0.92*pi-1)^2+1;
end
W(4)=W(4)*1.2;
W(5)=W(5)*1.2;

%以下两次循环分别针对两个MA预测器
tempL1=0;
tempL2=0;
tempL3=0;
Elsf=zeros(1,2);
for t=1:2
    if t==1
        %第一个MA模型
        %首先求当前第n帧的第一本码书中的下标,L1=.....
        l_target=jisuanL1(oumiga,MA1);
        
        %求当前第n帧的第二本码书中的下标,L2=.....
        jisuanL2(W,l_target);
        %调整li(0.0012)(i=1:5)
        for i=1:5
            l_qua(i)=lspcb1(L1,i)+lspcb2(L2,i);
        end
        l_qua(1:5)=lsp_expand(l_qua(1:5),0.0012);
        %round(l_qua*2^13)
        %求当前第n帧的第二本码书中的下标,L3=.....
        jisuanL3(W,l_target);
        %调整li(0.0012)(i=6:10)
        for i=6:10
            l_qua(i)=lspcb1(L1,i)+lspcb3(L3,i-5);
        end
        l_qua(6:10)=lsp_expand(l_qua(6:10),0.0012); 
        %round(l_qua*2^13)'
        %以下进行第二次调整，gap=0.0006
        l_qua=lsp_expand(l_qua,0.0006);
        %round(l_qua*2^13)'
        
        tempL1=L1;
        tempL2=L2;
        tempL3=L3;%第一个MA模型量化index
        %以下计算Elsf
        Elsf(t)=lsp_get_tdist(W,l_qua,l_target,MA1);
    else
        %第二个MA模型
        %首先求当前第n帧的第一本码书中的下标,L1=.....
        l_target=jisuanL1(oumiga,MA2);
        %以下计算L2
        jisuanL2(W,l_target);
        
        for i=1:5
            l_qua(i)=lspcb1(L1,i)+lspcb2(L2,i);
        end
        l_qua(1:5)=lsp_expand(l_qua(1:5),0.0012);
        %round(l_qua*2^13)

       jisuanL3(W,l_target);
       %以下调整li(0.0012)(i=6:10)
        for i=6:10
            l_qua(i)=lspcb1(L1,i)+lspcb3(L3,i-5);
        end
        l_qua(6:10)=lsp_expand(l_qua(6:10),0.0012); 
        %round(l_qua*2^13)'   
        %以下进行第二次调整，gap=0.0006
        l_qua=lsp_expand(l_qua,0.0006);
        %round(l_qua*2^13)'
        %以下计算Elsf
        Elsf(t)=lsp_get_tdist(W,l_qua,l_target,MA2);
    end
end
%求L0(MA预测器index)并最终确定L1 L2 L3 
%round(Elsf*2^27)
if Elsf(1)<Elsf(2)
    L0=0;
    L1=tempL1;
    L2=tempL2;
    L3=tempL3;
else
    L0=1;   
end
%L0
%L1
%L2
%L3
%----------------------------------------
%以下获得量化后的lsp  (w^)
if L0==0
    P=MA1;
else
    P=MA2;
end
lsp_qua=lsp_get_quant(lspcb1,lspcb2,lspcb3,L1,L2,L3,P,freq_prev);%(q_lsf)
%round(lsp_qua*2^13)'
%以下更新freq_prev (li)
freq_prev(1:3,:)=freq_prev(2:end,:);
freq_prev(4,:)=l_qua;
%以下perform LSP内插
[rcAR1,rcAR2]=int_qlpc(q_old,cos(lsp_qua));
%round(rcAR1*2^12)'
%round(rcAR2*2^12)'

%   /* Compute A(z/gamma) */
%只要知道rcAR 就可以计算A(z/gamma)，在此省略

%/* update the LSPs for the next frame */
q_old=cos(lsp_qua);
%round(q_old*2^15)'

%构造码字
%L0char=dec2bin(L0,1);
%L0code=bin2dec(L0char(:))';
L0code=dec_bin(L0,1);
%L0code=bin_dec(L0bin,1)';

%L1char=dec2bin(L1-1,7);
%L1code=bin2dec(L1char(:))';
L1code=dec_bin(L1-1,7);
%L1code=bin_dec(L1bin,7)';

%L2char=dec2bin(L2-1,5);
%L2code=bin2dec(L2char(:))';
L2code=dec_bin(L2-1,5);
%L2code=bin_dec(L2bin,5)';

%L3char=dec2bin(L3-1,5);
%L3code=bin2dec(L3char(:))';
L3code=dec_bin(L3-1,5);
%L3code=bin_dec(L3bin,5)';