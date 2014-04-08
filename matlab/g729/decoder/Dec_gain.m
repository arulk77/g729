function [gp,gc]=Dec_gain(Ga,Gb,c,GA,GB)
%/*---------------------------------------------------------------------------*
% * Function  Dec_gain                                                        *
% * ~~~~~~~~~~~~~~~~~~                                                        *
% * Decode the pitch and codebook gains                                       *
% *                                                                           *
% *---------------------------------------------------------------------------*
% * input arguments:                                                          *
% *                                                                           *
% *   index      :Quantization index                                          *
% *   code[]     :Innovative code vector                                      *
% *   L_subfr    :Subframe size                                               *
% *   bfi        :Bad frame indicator                                         *
% *                                                                           *
% * output arguments:                                                         *
% *                                                                           *
% *   gain_pit   :Quantized pitch gain                                        *
% *   gain_cod   :Quantized codebook gain                                     *
% *                                                                           *
% *---------------------------------------------------------------------------*/

global U;

inmapa=[5 1 7 4 2 0 6 3];
inmapb=[2,14, 3,13, 0,15, 1,12, 6,10, 7, 9, 4,11, 5, 8];

%/*-------------- Decode pitch gain ---------------*/
Ga=inmapa(Ga+1);
Gb=inmapb(Gb+1);
gp=GA(Ga+1,1)+GB(Gb+1,1);

%/*-------------- Decode codebook gain ---------------*/

%/*---------------------------------------------------*
% *-  energy due to innovation                       -*
% *-  predicted energy                               -*
% *-  predicted codebook gain => gcode0[exp_gcode0]  -*
% *---------------------------------------------------*/
Eyice=[0.68 0.58 0.34 0.19]*U(4:-1:1)';
Epinjun=30; 
E=10*log10(c*c'/40);
gc1=10^((Eyice+Epinjun-E)/20);
gama=GA(Ga+1,2)+GB(Gb+1,2);
gc=gc1*gama;

%/*----------------------------------------------*
% * update table of past quantized energies      *
% *----------------------------------------------*/
update_u=20*log10(gama);
U=[U(2:end),update_u];%¸üÐÂU










