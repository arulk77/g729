function gp=g_pitch(xn,yn)
%/*---------------------------------------------------------------------*
% * Function  G_pitch:                                                  *
% *           ~~~~~~~~                                                  *
% *---------------------------------------------------------------------*
% * Compute correlations <xn,y1> and <y1,y1> to use in gains quantizer. *
% * Also compute the gain of pitch. Result in Q14                       *
% *  if (gain < 0)  gain =0                                             *
% *  if (gain >1.2) gain =1.2                                           *
% *---------------------------------------------------------------------*/

%xn,yn----Pitch target.    Filtered adaptive codebook.
%gp----Gain of pitch lag saturated to 1.2

temp1=xn*yn';
temp2=yn*yn';
if temp2==0
    temp2=1;
end
o=temp1/temp2;


if o<0
    o=0;
elseif o>1.2
    o=1.2;
end
gp=o;