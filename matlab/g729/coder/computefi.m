function fi=computefi(inputh)
%首先构造H
%输入--inputh,更新后的加权冲击响应

%H=zeros(40,40);
%h=inputh';
%for i=1:40
    %H(1+i-1:end,i)=h(1:(end+1-i));
%end
H=computefiloop(inputh);
fi=H'*H;

