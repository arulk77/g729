function o=Pre_Process(speech)
%speech������������������
global x1 x2 y1 y2;

b=[0.46363718 -0.92724705 0.46363718];
a=[1 -1.9059465 0.9114024];

o=filter(b,a,speech);
for i=1:2
    o(i)=b(1)*speech(i) + b(2)*x1 + b(3)*x2 - a(2)*y1 - a(3)*y2;
    x2=x1;
    x1=speech(1);
    y2=y1;
    y1=o(1);
end%�����ǰ���������zero-input��Ӧ

x1=speech(end);
x2=speech(end-1);
y1=o(end);
y2=o(end-1);%���³�ʱ״̬��������һ�κ�������