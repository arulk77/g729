function AR=autocorr_levinson(window_speech)
%perform the following functions
%Autocorrelations
%Lag windowing
%Levinson Durbin
%window_speech---Input windowed signal   (s'(n))
%AR---AR[M]    LPC coefficients  (m = 10)

%首先Autocorrelations
R=zeros(1,11);%对应R(0)-R(10)
for k=1:11
    R(k)=window_speech(k:end)*window_speech(1:end-k+1)';
    %R(k)=sum(window_speech(1:end-k+1).*window_speech(k:end));
end
%if R(1)<1
    %R(1)=1;
%end
R(1)=1.0001*R(1);
%round(R*2^31)'

%接下来Lag windowing
for k=2:11
    R(k)=R(k)*exp(-0.5*(2*pi*60*(k-1)/8000)^2);
end

%最后Levinson Durbin
AR = levinson(R,10);
%round(AR'*2^12)
