%------G.729A子程序:固定码本的下标------
%Input:   s0 s1 s2 s3:      非零脉冲的符号
%             m0 m1 m2 m3:  位置
%Output:S,C
function [S,C]=fixed_codebook_index(s,position)

for ii=1:4
    if s(ii)==-1
        s(ii)=0;
    end
end

temp0=zeros(1,4);temp1=zeros(1,4);
for i=1:4
    if mod(position(i)-1,5)==0
        temp0(1)=position(i);
        temp1(1)=s(i);
    elseif mod(position(i)-1,5)==1
            temp0(2)=position(i);
            temp1(2)=s(i);
    elseif mod(position(i)-1,5)==2
            temp0(3)=position(i);
            temp1(3)=s(i);
    elseif mod(position(i)-1,5)==3
            temp0(4)=position(i);
            temp1(4)=s(i);
            jx=0;
    else 
        temp0(4)=position(i);
        temp1(4)=s(i);
        jx=1;
    end
end
s0=temp1(1);s1=temp1(2);s2=temp1(3);s3=temp1(4);
%m0=position(1)-1;m1=position(2)-1;m2=position(3)-1;m3=position(4)-1;
m0=temp0(1)-1;m1=temp0(2)-1;m2=temp0(3)-1;m3=temp0(4)-1;

S=s0+2*s1+4*s2+8*s3;
%m0=m0-1;m1=m1-1;m2=m2-1;m3=m3-1;
c0=floor(0.2*m0);c1=floor(0.2*m1);c2=floor(0.2*m2);c3=floor(0.2*m3);
C=c0+8*c1+64*c2+512*(2*c3+jx);

S=dec_bin(S,4);
C=dec_bin(C,13);
%S=bin2dec(S(:))';
%C=bin2dec(C(:))';