% This program is to reproduce the decimate logic for the frequency
Fs = 16000;
Ts = 1/Fs;
MaxT = 0.250;
T = [0:Ts:(MaxT-Ts)]';
A = 20;

% 2 KHz signal
s2k = A*sin(2*pi*2000*T);
s7k = A*sin(2*pi*7000*T);
s4k = A*sin(2*pi*3900*T);
s2k_dcm = downsample(s2k,2);
s4k_dcm = downsample(s4k,2);
s7k_dcm = downsample(s7k,2);
sall = s2k + s4k + s7k;
sf = repmat([1 -1]',size(s4k,1)/4,1);

aobj = sanal_class(s2k,Fs); aobj.fign = '2k Hz signal'; aobj.plotall;
aobj = sanal_class(s4k,Fs); aobj.fign = '4k Hz signal'; aobj.plotall;
aobj = sanal_class(s7k,Fs); aobj.fign = '7k Hz signal'; aobj.plotall;
aobj = sanal_class(sall,Fs); aobj.fign = 'All signal'; aobj.plotall;

aobj = sanal_class(s2k_dcm,Fs/2); aobj.fign = '2K decimated';aobj.plotall;
aobj = sanal_class(s4k_dcm,Fs/2); aobj.fign = '4K decimated';aobj.plotall;
aobj = sanal_class(s7k_dcm,Fs/2); aobj.fign = '7K decimated';aobj.plotall;

aobj = sanal_class(s4k_dcm.*sf,Fs/2); aobj.fign = '4K decimated and folded ';aobj.plotall;



