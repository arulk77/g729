function o=computing_zn(c,h)
%����z(n)=c(n)*h(n)��h(n)Ϊ���¹���
%���� c--����c(n),h-�����Ӧh(n)
%���o---z(n)

z=conv(c,h);
z=z(1:40);
o=z;