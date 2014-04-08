function o=computing_zn(c,h)
%计算z(n)=c(n)*h(n)，h(n)为更新过的
%输入 c--码字c(n),h-冲击响应h(n)
%输出o---z(n)

z=conv(c,h);
z=z(1:40);
o=z;