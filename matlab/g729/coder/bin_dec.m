function d=bin_dec(c,num)
%��ʮ����ת������numΪ�����������ĸ���
d=0;
for i=1:num
    if c(num+1-i)=='1'
        d=d+2^(i-1);
    end
end
