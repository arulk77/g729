% The class definition for the g729 encoder module
 classdef g7291_enc_class < handle

     %--------------------------------------------------------
     % Variables that are public to this class
     %--------------------------------------------------------     
     properties (Access = public)
         Super_frame = [];% 20 ms window of Next samples
         Fs;              % Sampling frequency used
         fname;           % File name where the speech sample 
                          % resides
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
         
         % Coefficients from the matlab QMF filter design
         % This portion has the 32 coefficients for the H1 filter,
         % which could be used to formulate the coefficients for the H1 filter
         % and H2 filter
         QMF_COEFF = [
             -0.00013817; -0.00055334; -0.00018742; +0.00085644;
             +0.0003434;  -0.0013808;  -0.00046059; +0.0021617;
             +0.00051077; -0.0032552;  -0.00043609; +0.0047261;
             +0.00015472; -0.0066475;  +0.00044279; +0.0091062;
             -0.0015028;  -0.012217;   +0.0032288;  +0.016156;
             -0.0059262;  -0.021233;   +0.010108;   +0.028066;
             -0.016781;   -0.038083;   +0.028356;   +0.055355;
             -0.052708;   -0.09719;    +0.13971;    +0.45901;];
         
         PP_HH2_A = [1.0 1.179857371201 1.6996211314 0.7066966302 ...
                     0.16954798937]';
         PP_HH2_B = [0.350027721 1.304564669 1.9127698530 1.3045646694 ...
                     0.3500277721]';
         
         PP_HH1_A = [1.00 -1.9664645578980 0.9671820760729101];
         PP_HH1_B = [0.95551031152729 -1.91102039813878 0.95551031152729];   
         %PP_HH1_A = [1.0 -1.9059465 0.9114024];
         %PP_HH1_B = [0.46363718 -0.922724705 0.463718];

     end % End of constant properties
     
     %--------------------------------------------------------
     % Variables that are private this class
     %--------------------------------------------------------
     properties %(Access = protected)
        Frame; % Current frame of interest
        EFs;   % Effective Sampling frequency
        QMF_H1_COEFF;
        QMF_H2_COEFF;
        
        lp_super_frame; % Low pass signal from the super frame
        hp_super_frame; % High pass signal from the super frame
        lp_conv_memory; % Convolution residual memory
        hp_conv_memory; % Convolution residual memory
        lp_pre_process; % Preprocessed lower band signal
        hp_pre_process; % Preprocessed high band signal
        
        x; %Debug variable
     end
     
     %--------------------------------------------------------
     % Methods that are public to this class
     %--------------------------------------------------------     
     methods (Access = public)
         function obj = g7291_enc_class(fname,Fs)
         % Constructor to create an object and return the object
             obj.Fs = Fs; % default is 16 KHz sampling rate
             obj.fname = fname;
             obj.EFs = Fs;
             
             % Read the samples from the text file
             read_sample(obj);
             split_bands(obj);
             decimate_bands(obj,2);
             preprocess(obj);
             
         end
     end % End of public methods
     
     %--------------------------------------------------------
     % Methods that are protected by this class
     %--------------------------------------------------------     
     methods (Access = protected)
         function read_sample(obj)
         %Read from a file and fill in the super frame
             obj.Super_frame = dlmread(obj.fname);
         end
         
         function split_bands(obj)
         % Generate the low pass and high pass signals
         % The coefficients are formed first before the convolution
             obj.QMF_H1_COEFF = [obj.QMF_COEFF; obj.QMF_COEFF(end:-1:1);];
             alter = repmat([1 -1]',32,1);
             obj.QMF_H2_COEFF = [alter.*obj.QMF_H1_COEFF];

             obj.lp_super_frame = conv(obj.QMF_H1_COEFF,obj.Super_frame);
             obj.hp_super_frame = conv(obj.QMF_H2_COEFF,obj.Super_frame);
         end
         
         function decimate_bands(obj,dw)
         %Function to decimate the incoming upper band and lower band signals
             if(obj.Fs > 8000) % If the Sampling Frequency is greater than 8 KHz then downscale
                 obj.lp_super_frame = downsample(obj.lp_super_frame,dw);
                 obj.hp_super_frame = ...
                     downsample(obj.hp_super_frame,dw);
                 
             end
             ev = ceil((64-1)/dw);
             
             % Spectral folding for the 
             obj.lp_conv_memory = obj.lp_super_frame(end-ev:end);
             obj.hp_conv_memory = obj.hp_super_frame(end-ev:end);
             
             % Chop off the residual after convolution
             obj.lp_super_frame = obj.lp_super_frame(1:end-ev);
             obj.hp_super_frame = obj.hp_super_frame(1:end-ev);
     
             % A spectral folding is performed on the hp band
             spectral_fold(obj);
             obj.EFs = obj.EFs/2;
         end
         
         function spectral_fold(obj)
         % Do a spectral fold on the given high stream data
             for l = 1 : size(obj.hp_super_frame,1)/2
                 obj.hp_super_frame(2*l-1:2*l) = [1 -1]'.*obj.hp_super_frame(2*l-1:2*l);
             end
         end
         
         function preprocess(obj)
         %Function to prepcoess the higher band and the lower band
         %signals
             obj.lp_pre_process=filter(obj.PP_HH1_B,obj.PP_HH1_A,obj.lp_super_frame);
             obj.hp_pre_process=filter(obj.PP_HH2_B,obj.PP_HH2_B,obj.hp_super_frame);
             
         end
     end % End of Protected methods
     
     
     
end % end class
     
     