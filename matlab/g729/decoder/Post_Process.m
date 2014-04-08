function synth=Post_Process(syn_pst)
%/*------------------------------------------------------------------------*
% * Function Post_Process()                                                *
% *                                                                        *
% * Post-processing of output speech.                                      *
% *   - 2nd order high pass filter with cut off frequency at 100 Hz.       *
% *   - Multiplication by two of output speech with saturation.            *
% *-----------------------------------------------------------------------*/


global x1 x2 y1 y2;

b=[0.93980581 -1.8795834 0.93980581];
a=[1 1.9330735 -0.93589199];
synth=zeros(1,80);
for i=1:80
    if i<=2
        synth(i)=b(1)*syn_pst(i)+b(2)*x1+b(3)*x2+a(2)*y1+a(3)*y2;
        x2=x1;
        x1=syn_pst(i);
        y2=y1;
        y1=synth(i);
    else
        synth(i)=b(1)*syn_pst(i)+b(2)*syn_pst(i-1)+b(3)*syn_pst(i-2)+a(2)*synth(i-1)+a(3)*synth(i-2);

    end
end


x1=syn_pst(end);
x2=syn_pst(end-1);
y1=synth(end);
y2=synth(end-1);

%/* Multiplication by two of output speech with saturation. */
synth=round(synth*2);
%synth'
