function o=jisuanL1(oumiga,P)
%oumiga��������ǰ֡��10άʸ��
%P--MAԤ��ϵ��
%o-����ʸ��l(target vector)


global L1 lspcb1;
global freq_prev;%����li����

temp=zeros(1,10);%����ʸ��l(target vector)
for i=1:10
    temp(i)=(oumiga(i)-P(i,1)*freq_prev(4,i)-P(i,2)*freq_prev(3,i)-P(i,3)*freq_prev(2,i)-P(i,4)*freq_prev(1,i))/(1-P(i,1)-P(i,2)-P(i,3)-P(i,4));
end
%round(temp*2^13)

L1=sousuoL1(temp);%�õ�һ����������index(L1)
%L1
o=temp;