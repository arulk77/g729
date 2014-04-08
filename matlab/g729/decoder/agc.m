function sig_out=agc(sig_in,sig_out)
%/*----------------------------------------------------------------------*
% *   routine agc()                                                      *
% *   ~~~~~~~~~~~~~                                                      *
% * Scale the postfilter output on a subframe basis by automatic control *
% * of the subframe gain.                                                *
% *  gain[n] = AGC_FAC * gain[n-1] + (1 - AGC_FAC) g_in/g_out            *
% *----------------------------------------------------------------------*/

%  Word16 *sig_in,   /* (i)     : postfilter input signal  */
%  Word16 *sig_out,  /* (i/o)   : postfilter output signal */
%  Word16 l_trm      /* (i)     : subframe size            */

global past_gain;

%/* calculate gain_out with exponent */
gain_out=sum(sig_out.^2);
if gain_out==0
    past_gain=0;
else
   % /* calculate gain_in with exponent */
   gain_in=sum(sig_in.^2);
   if gain_in==0
       gg=0;
   else
       %/*---------------------------------------------------*
       % *  g0(Q12) = (1-AGC_FAC) * sqrt(gain_in/gain_out);  *
       % *---------------------------------------------------*/
       gg=(1-0.9)*sqrt(gain_in/gain_out);
   end
   
   %/* compute gain(n) = AGC_FAC gain(n-1) + (1-AGC_FAC)gain_in/gain_out */
   %/* sig_out(n) = gain(n) sig_out(n)                                   */
   gain=past_gain;
   for i=1:40
       gain=0.9*gain+gg;
       sig_out(i)=round(gain*sig_out(i));
   end
   past_gain=gain;
end
       
   
%gain_in
%gain_out
%gg*2^12


