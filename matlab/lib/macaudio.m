function [speech,playobj] = macaudio(fs,time)
  % [speech,playobj] macaudio(fs,time) Records the aduio from the mac using 
  % fs -> Sample freq in Hz time -> time for recording in seconds
  % To play back audio use play(playobj)
recobj = audiorecorder(fs,16,1);
display('Start speaking now');
recordblocking(recobj,time);
display('Done with recording');
speech = getaudiodata(recobj,'int16');
playobj = recobj;

