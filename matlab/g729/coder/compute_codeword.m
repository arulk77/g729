function o=compute_codeword(position,s,jx)
%ʵ�ּ��������˲��Ŀ�ͼ����
%����---�̶��뱾���
%���---����ʸ�����õ�c(n)

c=zeros(1,40);
for i=1:4
    c(position(i))=s(i);
end
%c=c/2^15;
o=c;
