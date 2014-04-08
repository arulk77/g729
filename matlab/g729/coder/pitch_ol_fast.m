function Top=pitch_ol_fast(w_speech)
%* Compute the open loop pitch lag. (fast version) 
%w_speech--input : signal used to compute the open loop pitch 
%signal[-pit_max] to signal[-1] should be known

%output: open loop pitch lag

%   /*--------------------------------------------------------------------*
%    *  The pitch lag search is divided in three sections.                *
%    *  Each section cannot have a pitch multiple.                        *
%    *  We find a maximum for each section.                               *
%    *  We compare the maxima of each section by favoring small lag.      *
%    *                                                                    *
%    *  First section:  lag delay = 20 to 39                              *
%    *  Second section: lag delay = 40 to 79                              *
%    *  Third section:  lag delay = 80 to 143                             *
%    *--------------------------------------------------------------------*/

%     /* First section *
R=zeros(1,143);
%for i=20:39
%    R(i)=w_speech(161:2:end)*w_speech(161-i:2:end-i)';
%end
R(20:39)=fastloop(w_speech,20,20);
[max_R1,t1]=max(R(20:39));
t1=t1+19;
temp=(w_speech(160+1-t1:2:end-t1)*w_speech(160+1-t1:2:end-t1)');
if temp==0
    temp=1;
end
max_R1=R(t1)/sqrt(temp);%/* max1 = max/sqrt(energy)

%    /* Second section */
%for i=40:79
%    R(i)=w_speech(160+1:2:end)*w_speech(160+1-i:2:end-i)';
%end
R(40:79)=fastloop(w_speech,40,40);
[max_R2,t2]=max(R(40:79));
t2=t2+39;
temp=(w_speech(160+1-t2:2:end-t2)*w_speech(160+1-t2:2:end-t2)');
if temp==0
    temp=1;
end
max_R2=R(t2)/sqrt(temp);

%    /* Third section */
%for i=80:143
%    R(i)=w_speech(160+1:2:end)*w_speech(160+1-i:2:end-i)';
%end
R(80:143)=fastloop(w_speech,80,64);
[max_R3,t3]=max(R(80:143));
t3=t3+79;
temp=(w_speech(160+1-t3:2:end-t3)*w_speech(160+1-t3:2:end-t3)');
if temp==0
    temp=1;
end
max_R3=R(t3)/sqrt(temp);
%[max_R1 max_R2 max_R3]
%[t1 t2 t3]


%以下确定开环基音延时
if abs(t2*2-t3)<5
    max_R2=max_R2+0.25*max_R3;
end
if abs(t2*3-t3)<7
    max_R2=max_R2+0.25*max_R3;
end
if abs(t1*2-t2)<5
    max_R1=max_R1+0.20*max_R2;
end
if abs(t1*3-t2)<7
    max_R1=max_R1+0.20*max_R2;
end
Top=t1;
Rop=max_R1;
if max_R2>=max_R1
    Rop=max_R2;
    Top=t2;
end
if max_R3>=Rop
    Rop=max_R3;
    Top=t3;
end
