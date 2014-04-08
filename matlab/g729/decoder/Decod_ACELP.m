function c=Decod_ACELP(S,C)
%/*-----------------------------------------------------------*
% *  Function  Decod_ACELP()                                  *
% *  ~~~~~~~~~~~~~~~~~~~~~~~                                  *
% *   Algebraic codebook decoder.                             *
% *----------------------------------------------------------*/

% (i):S signs of 4 pulses.   C  Positions of the 4 pulses. 
% (o):algebraic (fixed) codebook excitation

c=zeros(1,40);
S1=bin_dec(S(1),1);
S2=bin_dec(S(2),1);
S3=bin_dec(S(3),1);
S4=bin_dec(S(4),1);
if S1==0
    s3=-1;
else s3=1;
end
if S2==0
    s2=-1;
else s2=1;
end
if S3==0
    s1=-1;
else s1=1;
end
if S4==0
    s0=-1;
else s0=1;
end

%  /* Decode the positions */
m0=(bin_dec(C(11:13),3))*5+1;
m1=(bin_dec(C(8:10),3))*5+2;
m2=(bin_dec(C(5:7),3))*5+3;
jx=bin_dec(C(4),1);
if jx==0
    m3=(bin_dec(C(1:3),3))*5+4;
else m3=(bin_dec(C(1:3),3))*5+5;
end

%/* decode the signs  and build the codeword */
c(m0)=s0;c(m1)=s1;c(m2)=s2;c(m3)=s3;