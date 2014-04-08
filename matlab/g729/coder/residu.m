function exc=residu(a,x)
%Compute the LPC residual  by filtering the input speech through A(z)
%a,x---prediction coefficients ,speech (values x[-m..-1] are needed
%exc---residual signal


exc=filter(a,1,x);
exc=exc(11:end);


