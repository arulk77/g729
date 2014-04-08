function signal_pst=pit_pst_filt(rn,tmin,tmax)
%/*---------------------------------------------------------------------------*
% * procedure pitch_pst_filt                                                  *
% * ~~~~~~~~~~~~~~~~~~~~~~~~                                                  *
% * Find the pitch period  around the transmitted pitch and perform           *
% * harmonic postfiltering.                                                   *
% * Filtering through   (1 + g z^-T) / (1+g) ;   g = min(pit_gain*gammap, 1)  *
% *--------------------------------------------------------------------------*/

%  Word16 *signal,      /* (i)     : input signal                        */
%  Word16 *scal_sig,    /* (i)     : input signal (scaled, divided by 4) */
%  Word16 t0_min,       /* (i)     : minimum value in the searched range */
%  Word16 t0_max,       /* (i)     : maximum value in the searched range */
%  Word16 L_subfr,      /* (i)     : size of filtering                   */
%  Word16 *signal_pst   /* (o)     : harmonically postfiltered signal    */


%/*---------------------------------------------------------------------------*
% * Compute the correlations for all delays                                   *
% * and select the delay which maximizes the correlation                      *
% *---------------------------------------------------------------------------*/
scal_rn=floor(rn/4);%input signal (scaled, divided by 4)
%scal_rn=rn;
R=zeros(1,tmax);
for t=tmin:tmax
    %R(t)=(scal_rn(161:end))*(scal_rn(161-t:161-t+39))';
    for kk=1:40
        R(t)=R(t)+scal_rn(161+kk-1)*scal_rn(160-t+kk);
    end
end
[maxR,t]=max(R(tmin:tmax));
t0=t+tmin-1;


%  /* Compute the energy of the signal delayed by t0 */
ener=1;
ener=(ener+sum((scal_rn(161-t0:161-t0+39)).^2));
%ener

% /* Compute the signal energy in the present subframe */
ener0=1;
ener0=(ener0+sum((scal_rn(161:end)).^2));
%ener0

if maxR<0
    maxR=0;
end
%maxR

gl=maxR/ener;
temp = (maxR * maxR) - (0.5 * ener * ener0);
if temp<0  % /* if prediction gain < 3 dB   */
   gl=0;        %/* switch off pitch postfilter */
else if maxR/ener>1
        gl=1;
    else if maxR/ener<0
            gl=0;
        end
    end   
end
  
if gl==0
    signal_pst=rn(161:end);
else
    for i=1:40
        signal_pst(i)=(1/(1+0.5*gl))*rn(160+i)+(0.5*gl/(1+0.5*gl))*rn(160+i-t0);
    end
end
signal_pst=round(signal_pst);

