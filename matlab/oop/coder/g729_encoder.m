% The class definition for the g729 encoder module
 classdef g729_encoder < handle

     %--------------------------------------------------------
     % Variables that are public to this class
     %--------------------------------------------------------     
     properties (Access = public)
         frame=[];
         enc_speech=[];
         Fs;
         
         fname;
     end
     
     %--------------------------------------------------------
     % Variables that are private this class
     %--------------------------------------------------------
     properties %(Access = protected)
         sub_frame=[];
         lb;hb;
         lb_dcm;hb_dcm;
     end
     
     %--------------------------------------------------------
     % Methods that are public to this class
     %--------------------------------------------------------     
     methods (Access = public)
         function obj = g729_encoder(fname)
         % Constructor to create an object and return the object
             obj.Fs = 8000; % default is 8 KHz sampling rate
             obj.fname = fname;
             
             % Call for the automatic routines
             read_sample(obj);
             split_bands(obj);
         end
     end % End of public methods
     
     %--------------------------------------------------------
     % Methods that are protected by this class
     %--------------------------------------------------------     
     methods (Access = protected)
         function read_sample(obj)
         %Read from a file and fill in t the frmae
             obj.frame = dlmread(obj.fname);
         end
         
         function split_bands(obj)
             d = fdesign.highpass('Fst,Fp,Ast,Ap',0.45,0.5,60,1);
             Hd = design(d,'equiripple');
             fvtool(Hd);
             obj.hb = filter(Hd,obj.frame);
             obj.hb_dcm = decimate(obj.hb,2);
    
             % Low pass filter
             d = fdesign.lowpass('N,Fc',20,0.5);
             Hd = design(d,'window','window',@hamming);
             fvtool(Hd);
             obj.lb = filter(Hd,obj.frame);
             obj.lb_dcm = decimate(obj.lb,2);
             
         end
     end % End of Protected methods
     
end % end class
     
     