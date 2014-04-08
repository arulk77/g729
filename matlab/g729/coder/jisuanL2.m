function jisuanL2(W,l_target)
%用第一本码书和第二本码书计算输出L2

global L1 L2 lspcb2 lspcb1;

%temp=zeros(1,32);
%低维

%for i=1:32
%    temp(i)=sum(W(1:5).*(l_target(1:5)-lspcb1(L1,1:5)-lspcb2(i,:)).^2);
%end
WW=repmat(W(1:5),32,1);
ll_target=repmat(l_target(1:5),32,1);
llspcb1=repmat(lspcb1(L1,1:5),32,1);
temp=sum((WW.*((ll_target-llspcb1-lspcb2).^2))');
[x,j]=min(temp);
L2=j;

%round(temp*2^26)