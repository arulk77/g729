function [ga,gb,gp,gc]=Qua_gain(xn,yn,zn,code)
%/*---------------------------------------------------------------------------*
% * Function  Qua_gain                                                        *
% * ~~~~~~~~~~~~~~~~~~                                                        *
% * Inputs:                                                                   *
% *   code[]     :Innovative codebook.                                        *
% *   g_coeff[]  :Correlations compute for pitch.                             *
% *   L_subfr    :Subframe length.                                            *
% *                                                                           *
% * Outputs:                                                                  *
% *   gain_pit   :Quantized pitch gain.                                       *
% *   gain_cod   :Quantized code gain.                                        *
% *                                                                           *
% * Return:                                                                   *
% *   Index of quantization.                                                  *
% *                                                                           *
% *--------------------------------------------------------------------------*/



global GA GB;
global beta;
%/* Gain predictor, Past quantized energies = -14.0 in Q10 */
[ga,gb,bestgp,bestgc]=conjugate_structure(xn,yn,zn,code,GA,GB);

gp=bestgp;
gc=bestgc;

 %/*------------------------------------------------------------*
 % * - Update pitch sharpening "sharp" with quantized gain_pit  *
 % *------------------------------------------------------------*/
 beta=gp;
 if beta>0.8
     beta=0.8;
 elseif beta<0.2
     beta=0.2;
 end

