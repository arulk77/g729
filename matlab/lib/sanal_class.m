%------------------------------------------------------------
% This Class gets in the samples in time domain, and does
% the frquency analysis.
% td_samp  --> Time domain Sample (passed to constructor)
% Fs       --> Sampling frequency (passed to constructor)
% fft_samp --> Provides the FFT of the given sample
%------------------------------------------------------------

classdef sanal_class < handle
    
%------------------------------------------------------------
% Variables that are public to the objects
%------------------------------------------------------------
    properties
        td_samp;  % Time domain signal
        fft_samp; % FFT samples
        pxx_samp; % Power in the fft samples
        acf_samp; % Auto correlation sample 
        Hpsd; % Handle for the PSD
        Fs;       % Sampling frequency
        fign;
    end % End of public variable
    
    %------------------------------------------------------------
    % Variables that are hidden
    %------------------------------------------------------------
    properties (Hidden)
        L; % Length of the time domain samples
        T; % Time domain representation of the Fs
        f; % The linear freqency sample space
        NFFT; % The number of fft points
        
    end % End of Hidden variable
    
    %------------------------------------------------------------
    % Methods that are public for this class
    %------------------------------------------------------------
    methods 
        %------------------------------------------------------------
        % Constructoin method for the class
        %------------------------------------------------------------
        function obj = sanal_class(td_samp,Fs)
            obj.td_samp = td_samp;obj.Fs=Fs;
            obj.T = 1/obj.Fs;
            obj.L = size(td_samp,1);
            obj.fign = 'sanal_class';
            if(obj.L == 1) 
                disp('The size of the timedomain sample is too small', ...
                     size(obj.td_samp));
                return;
            end
            fft_pw_psd(obj);
        end % End of the constructor
        
        %------------------------------------------------------------    
        % Use the Matlab in built FFT for the FFT transformation
        %------------------------------------------------------------
        function fft_pw_psd(obj)  
        % The NFFT samples are rounded to the nearest 2^() 
            obj.NFFT = 2^nextpow2(obj.L);
            
            % Linear space of the frequency in KHz
            % Only one half the frequence is needed
            obj.f = obj.Fs/2*linspace(0,1,obj.NFFT/2+1)/1000;
            
            % The FFT is nothing but Discrete Fourier Transform
            % Now normalize the FFT sample
            obj.fft_samp = fft(obj.td_samp,obj.NFFT)/obj.L;
            
            % Only one sided spectrum is used for the power
            %obj.pxx_samp = abs(obj.fft_samp).^2/obj.L/obj.F;
            obj.pxx_samp = abs(obj.fft_samp).^2;
            
            % Create the PSD value
            obj.Hpsd = dspdata.psd(obj.pxx_samp(1:obj.NFFT/2+1),'Fs',obj.Fs);    
        end
        
        function plot3(obj)
        % This plot is to plot the three dimensional view of the fft_samp
            plot3(obj.f,real(obj.fft_samp(1:obj.NFFT/2+1)), ...
                  imag(obj.fft_samp(1:obj.NFFT/2+1)));
            xlabel('Freqeuncy (KHz)');
            ylabel('Real part');
            zlabel('Imaginary part');
            
        end 
            
        function plotall(obj)
        % Function to to plot the frequency analysis
        % Note: All the object parameters are passed
            scz = get(0,'ScreenSize');
            figure('Name',obj.fign,'NumberTitle','off','Position',[1 scz(4)/2 ...
                                scz(3)/3 scz(4)/3]);
            
            % Create a new figure
            N=3;
            
            % First plot the Time Domain signal
            subplot(N,N,1:3);plot_td(obj);
            
            % Plot the Frequency domain signal 
            subplot(N,N,4:5);plot_fd_abs(obj);
            
            % Plot the phase response
            subplot(N,N,6);plot_fd_phase(obj);
            
            % Plot the autocorrelation function values
            subplot(N,N,7:8);plot_acor(obj);
            
            % Plot the PSD of the signal
            subplot(N,N,9);plot_psd(obj);
            
        end % End of function plot
            
    end % End of public methods
    
    %------------------------------------------------------------
    % Methods that are hidden to this class alone
    %------------------------------------------------------------
    methods (Hidden)
        
        %------------------------------------------------------------
        function plot_td(obj)
        % Plot the Time domain representaiton of the signal
            plot((0:obj.L-1)*obj.T,obj.td_samp);
            xlabel('Time (S)');
            ylabel('Amplitude (V)');
            title('Signal in Time domain');
            grid on;
        end 
        
        function plot_fd_abs(obj)
        % Plot the frequency domain (ABS) value of the fft_samples    
            plot(obj.f,2*abs(obj.fft_samp(1:obj.NFFT/2+1)));
            xlabel('Freq (KHz)');
            ylabel('Absolute value');
            title('FFT (Abs)');
            grid on;
        end 
        
        function plot_fd_phase(obj)
        % Function to plot the phase response of the fft_samples
            plot(obj.f,unwrap(angle(obj.fft_samp(1:obj.NFFT/2+1))));
            xlabel('Freq (KHz)');
            ylabel('Phase (pi)');
            title('Angular response');
            grid on;
        end 
        
        function plot_psd(obj)
        % Function to plot the PSD of the given fft samples
            plot(obj.Hpsd);
            grid on;   
        end 
        
        function plot_acor(obj)
        % Function to plot the autocorelation value for the time domain
        % signal
        % [ obj.acf_samp, lags, bound ] = autocorr(obj.td_samp,[],2);
            obj.acf_samp = ifft(obj.Hpsd.Data);
            plot(abs(obj.acf_samp));
            title('Auto Corrleation');
            xlabel('Time Lag');
            ylabel('Corr Value');
            grid on;
        end % End of plot_acor function
    end % Methods that are hidden to this class
    
end % end class