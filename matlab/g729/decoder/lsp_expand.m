function o=lsp_expand(l,gap)
%重新安排li
%l--quantinized LSP vectors
%gap--0.0012或0.0006
temp1=0;
temp2=0;
for i=2:length(l)
    if (l(i-1)-l(i)+gap)>0
        temp1=l(i-1);
        temp2=l(i);
        l(i-1)=(temp1+temp2-gap)/2;
        l(i)=(temp1+temp2+gap)/2;
    end
end
o=l;