function o=jisuanL1(oumiga,P)
%oumiga－－－当前帧的10维矢量
%P--MA预测系数
%o-量化矢量l(target vector)


global L1 lspcb1;
global freq_prev;%用于li更新

temp=zeros(1,10);%量化矢量l(target vector)
for i=1:10
    temp(i)=(oumiga(i)-P(i,1)*freq_prev(4,i)-P(i,2)*freq_prev(3,i)-P(i,3)*freq_prev(2,i)-P(i,4)*freq_prev(1,i))/(1-P(i,1)-P(i,2)-P(i,3)-P(i,4));
end
%round(temp*2^13)

L1=sousuoL1(temp);%得到一级码书量化index(L1)
%L1
o=temp;