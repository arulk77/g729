function v=pred_lt_3(exc,T,fraction,b30)
% *-------------------------------------------------------------------*
% * Compute the result of long term prediction with fractional        *
% * interpolation of resolution 1/3.                                  *
% *                                                                   *
% * On return exc[0..L_subfr-1] contains the interpolated signal      *
% *   (adaptive codebook excitation)                                  *
% *-------------------------------------------------------------------*/

k=T;frac=-fraction;
v=zeros(1,40);
if frac==-1
    k=k+1;
    frac=2;
end
u1=exc;
%round(u1)
for i=1:40
    %if i==20
        %round([u1(i-k+160:-1:i-k+160-9)' (b30(frac+1:3:frac+1+27)'*2^15) u1(i-k+1+160:i-k+1+9+160)' (b30(3-frac+1:3:3-frac+1+27)'*2^15)])
    %end
    %v(i)=u1(i-k+160:-1:i-k+151)*b30(frac+1:3:frac+28)'+u1(i-k+161:i-k+170)*b30(4-frac:3:31-frac)';
    for j=1:10
        v(i)=v(i)+u1(i-k+161-j)*b30(frac+1+3*(j-1))+u1(i-k+160+j)*b30(4-frac+3*(j-1));
    end
    u1(160+i)=v(i);
    v(i)=round(v(i));
end