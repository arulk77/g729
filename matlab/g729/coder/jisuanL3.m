function jisuanL3(W,l_target)
%用第一本码书和第二本码书计算输出L2

global L1 L3 lspcb1 lspcb3;

%temp=zeros(1,32);
%高维

%for i=1:32
%    temp(i)=sum(W(6:10).*(l_target(6:10)-lspcb1(L1,6:10)-lspcb3(i,:)).^2);
%end
WW=repmat(W(6:10),32,1);
ll_target=repmat(l_target(6:10),32,1);
llspcb1=repmat(lspcb1(L1,6:10),32,1);
temp=sum((WW.*((ll_target-llspcb1-lspcb3).^2))');
[x,j]=min(temp);
L3=j;
%L3
%round(temp*2^26)'