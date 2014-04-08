% This program is to load the RAW text format into an array and then
% encode them
fname = 'sarv.samp';
raw_speech = dlmread(fname);
% downsample the signal to 8 KHz from 16 KHz
raw_speech_dec = downsample(raw_speech,2);
% raw_speech_dec = decimate(raw_speech,2);
enc_speech = G729code(raw_speech_dec');
