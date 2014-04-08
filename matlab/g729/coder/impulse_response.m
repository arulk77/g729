function o=impulse_response(AR)
%计算加权冲击响应h(n)；用于通过p(z)，计算码书域目标信号及矩阵fi
%输出---h,加权冲击响应，40个样点    

changshu=[1 0.75 0.75^2 0.75^3 0.75^4 0.75^5 0.75^6 0.75^7 0.75^8 0.75^9 0.75^10];
[o,t]=impz(1,AR.*changshu,40);
%round(o*2^12)'

   

