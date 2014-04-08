%This Code is to enable the g729.1 encoder
Fs = 16000; % Sampling frequency of 16 KHz
sp = g7291_enc_class('speech_raw.txt',Fs);

% Plot the streams
tic
s=sanal_class(sp.Super_frame,Fs);s.fign='Raw speech';
toc
lp = sanal_class(sp.lp_super_frame,sp.EFs);lp.fign = 'Low pass filter';
hp = sanal_class(sp.hp_super_frame,sp.EFs);hp.fign = 'High pass filter';
plp = sanal_class(sp.lp_pre_process,sp.EFs);plp.fign = ['Pre process ' ...
                   'Low pass filter'];
php = sanal_class(sp.hp_pre_process,sp.EFs);php.fign = ['Pre process ' ...
                    'High pass filter'];
