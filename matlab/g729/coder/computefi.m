function fi=computefi(inputh)
%���ȹ���H
%����--inputh,���º�ļ�Ȩ�����Ӧ

%H=zeros(40,40);
%h=inputh';
%for i=1:40
    %H(1+i-1:end,i)=h(1:(end+1-i));
%end
H=computefiloop(inputh);
fi=H'*H;

