% The class definition for the G729E standard
 classdef g729e_enc_class < handle

     %--------------------------------------------------------
     % Variables that are public to this class
     %--------------------------------------------------------     
     properties (Access = public)
         Prv_speech = [];  % 5 ms worth of data from prv speech
         Sub_frame1 = [];  % 5 ms window of speech samples
         Sub_frame2 = [];  % 5 ms window of speech samples
         Nxt_speech = [];  % 5 ms window of Next samples
         
     end % End of Public input properties
     
     %--------------------------------------------------------     
     % Variables that will be generated as part of this encoder
     %--------------------------------------------------------     
     properties (Access = public) 
         L0;L1;L2;L3;     % These are the Linear prediction code
         P0;P1;P2;        % Pitch analysis
         GA1;GB1;GA2;GB2; % Gain table
         C1;S1;C2;S2;     % Code search index
     end % End of Public output properties
     
     %--------------------------------------------------------
     % Constant properties to this class
     %--------------------------------------------------------
     properties (Constant)
         SFN = 80; % Number of sample of a sub frame
     end % End of constant properties
     
     %--------------------------------------------------------
     % Variables that are private this class
     %--------------------------------------------------------
     properties %(Access = protected)
         Frame; % Current frame of interest
     end
     
     %--------------------------------------------------------
     % Methods that are public to this class
     %--------------------------------------------------------     
     methods (Access = public)
         function obj = g729e_enc_class()
         % Constructor to create an empty speech signal
             obj.Prv_speech = zeros(1,SFN);
             obj.Sub_frame1 = zeros(1,SFN);
             obj.Sub_frame2 = zeros(1,SFN);
             obj.Nxt_speech = zeros(1,SFN);
             obj.Frame      = zeros(1,2*SFN);
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
     
     