function o=update_c_h(x,T)
%根据闭环搜索出的T更新c(n)以及h(n)
%等效于通过自适应预滤波器p(z)，两个子帧一致，不用标志
%输入  x---c(n)或者h(n),40个样点  
%      T---子帧的闭环基音周期的整数部分
%      beta--前一子帧量化的自适应码书增益量化值
%输出为更新后的信号,40个样点
global beta;
if T>=40
    o=x;%基音周期大于等于40，不作更新
else
    for i=T+1:40
        x(i)=x(i)+beta*x(i-T);
    end
    o=x;
end
    

