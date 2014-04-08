%This program is to run a sample encoder
Fs = 16000; % Sampling frequence of 16 KHz is used
sobj = g729_encoder('speech_raw.txt');

% Plot the speech signal analysis
sanal_obj = sanal_class(sobj.frame,Fs);
sanal_obj.fign = 'Original speech';
sanal_obj.plotall;

%% Create a Spectrum folder module
%%anal_obj = sanal_class(repmat([1 0]',80000/2,1),Fs);
%%anal_obj.plotall;

% Analyze the high pass signal
hanal_obj = sanal_class(sobj.hb,Fs);
hanal_obj.fign = 'High pass filter output';
hanal_obj.plotall;

hanal_obj = sanal_class(sobj.hb_dcm,Fs/2);
hanal_obj.fign = 'High pass filter (decimated) output';
hanal_obj.plotall;

% Spectrum folder output
fold = sanal_class(repmat([1 -1]',80000/2,1).*sobj.hb_dcm,Fs/2);
fold.fign = 'High pass after spec folding';
fold.plotall;


% Analyze the low pass signal
hanal_obj = sanal_class(sobj.lb,Fs);
hanal_obj.fign = 'Low pass filter output';
hanal_obj.plotall;

%high pass decimated
hanal_obj = sanal_class(sobj.lb_dcm,Fs/2);
hanal_obj.fign = 'Low pass filter (decimated) output';
hanal_obj.plotall;

