function y=syn_filt(a,x,mem)
%Do the synthesis filtering 1/A(z)
%a--AR x--input signal 
%y--output signal


y=zeros(1,40);
for i=1:40
    %y(i)=x(i)-a(2:end)*mem(end:-1:1)';
    for kk=1:10
        y(i)=y(i)-a(1+kk)*mem(11-kk);
    end
    y(i)=y(i)+x(i);
    y(i)=round(y(i));
    %mem=[mem(2:end),y(i)];
    for kk=1:9
        mem(kk)=mem(kk+1);
    end
    mem(10)=y(i);
end