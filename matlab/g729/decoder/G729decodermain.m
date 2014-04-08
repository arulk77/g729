%G729A����main����
%�������ļ������ڴ��У�׼��ת����֡�������
function G729decodermain

%clear all;
%clc;
fid=fopen('coding.bit');
speechin= fread(fid,'int16');
fclose(fid);

for i=1:length(speechin)
    if speechin(i)==127
        speechin(i)=0;
    else if speechin(i)==129
            speechin(i)=1;
        end
    end
end
bitstream=enframe(speechin,82);
bitstream=(bitstream(:,3:end));

QuanJuValuedecode();
s=zeros(1,80);
speechout=[];

tic
%/*-----------------------------------------------------------------*
% *            Main decoder routine                                 *
% *-----------------------------------------------------------------*/
for i=1:size(bitstream,1)
    a=dec2bin(bitstream(i,:));
    a=a';     
    %��������C1 C2 P0 P1 P2 S1 S2ת��10������
    [L0,L1,L2,L3,P1,P0,S1,C1,GA1,GB1,P2,S2,C2,GA2,GB2]=destream(a);
    %���������н���
    [s,Az_dec,T2]=G729decode(L0,L1,L2,L3,P1,P0,S1,C1,GA1,GB1,P2,S2,C2,GA2,GB2);
    %round(Az_dec*2^12)'
    %T2
    
    syn_pst=Post_Filter(s, Az_dec, T2);        %/* Post-filter */

    synth=Post_Process(syn_pst);
    
    speechout=[speechout,synth];
end
toc

speechout=speechout/2^15;
wavwrite(speechout,'syn_speech');



