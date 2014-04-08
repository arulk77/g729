function fft = afft(x)
% afft(x) x -> time domain sample in complex number
% This function produces the fft sample ussing the butterfly 
% algorithm

% Check the input size of the data
N= size(x,2);
L = fix(log2(N));

% Check if N is a power of 2 and less than 1024

% Array for reversed bits
for i=1:N
  bit = dec2bin(i-1,L);
  rbit = bit(:,L:-1:1);
  jj = bin2dec(rbit);
  X(i) = x(jj+1);
end

% Generation of the roots of Unity
WN = exp(-1*i*2*pi/N);

% Butterfly Calculations
disp('The number of stages for butterfly is',L);

for nbutterfly=1:L
  fft = X;
  length = 2^nbufferfly;
  num_dfts = N/length;
  for nfft = 1:num_dfts
	       disp('test');
  end
end

  
