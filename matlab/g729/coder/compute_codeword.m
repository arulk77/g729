function o=compute_codeword(position,s,jx)
%实现计算码字滤波的框图功能
%输入---固定码本输出
%输出---码字矢量，得到c(n)

c=zeros(1,40);
for i=1:4
    c(position(i))=s(i);
end
%c=c/2^15;
o=c;
