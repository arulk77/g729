flushinput(t);
flushinput(u);
speechout=zeros(4000,1);
ao=analogoutput('winsound');
chans=addchannel(ao,1);
set(ao,'SampleRate',8000);
set(ao,'TriggerType','Manual');
recDATA=[];%col
decodeDATA=[];%row
QuanJuValuedecode();
i=1;
while(1)
    if get(t,'BytesAvailable')>=800
        if i<=5
            data=fread(t,800,'int16');
            %recDATA=[recDATA;data];
            %data=mod(data,2);
            %speechout(800*(i-1)+1:800*i)=decoding_main(data');
            %decodeDATA=[decodeDATA,speechout(800*(i-1)+1:800*i)];
            speechout(800*(i-1)+1:800*i)=data;
            i=i+1;   
        else
            i=1;
            while(strcmp(get(ao,'Running'),'On'))
            end
            speechout=speechout/(2^15);
            putdata(ao,speechout);
            start(ao);
            trigger(ao);
        end      
    end
    if get(u,'BytesAvailable')>0
        len=get(t,'BytesAvailable');
        if len>0
            data=fread(t,len/2,'int16');
            %recDATA=[recDATA;data];
            %data=mod(data,2);
            if i<=5
                speechlast=[speechout(1:800*i);(data)];
            else
                speechlast=(data);
            end
            %decodeDATA=[decodeDATA,speechlast];
            while(strcmp(get(ao,'Running'),'On'))
            end
            speechlast=speechlast/(2^15);
            putdata(ao,speechlast);
            start(ao);
            trigger(ao); 
            wait(ao,2);
        else
            wait(ao,1);
        end
        break;
    end
end      

clear global;