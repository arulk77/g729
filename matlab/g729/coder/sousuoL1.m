function o=sousuoL1(I)
%I������������ʸ��li
%o����������L1(index)
global lspcb1;

%temp=zeros(1,128);
%for i=1:128
%    temp(i)=sum((I-lspcb1(i,:)).^2);
%end
II=repmat(I,128,1);
temp=sum(((II-lspcb1).^2)');
[x,j]=min(temp);
o=j;