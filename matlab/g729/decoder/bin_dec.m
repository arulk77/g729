function d=bin_dec(c,num)
%二十进制转换程序，num为二进制码流的个数
d=0;
for i=1:num
    if c(num+1-i)=='1'
        d=d+2^(i-1);
    end
end
