function lspq=lsp_get_quant(lsp_cb1,lsp_cb2,lsp_cb3,code1,code2,code3,P,freq_prev)
%用来获得量化后的lsp
%lsp_cb1,lsp_cb2,lsp_cb3--两级码书
%ode1,code2,code3--L1 L2 L3量化index
%P-- MA预测系数
%freq_prev---previous quantinized l vector
%o---quantinized lsp vector

%首先重建l^
for i=1:5
    buf(i)=lsp_cb1(code1,i)+lsp_cb2(code2,i);
end
for i=6:10
    buf(i)=lsp_cb1(code1,i)+lsp_cb3(code3,i-5);
end

%两次调整
buf=lsp_expand(buf,0.0012);
buf=lsp_expand(buf,0.0006);

%重建w^
for i=1:10
    lspq(i)=(1-P(i,1)-P(i,2)-P(i,3)-P(i,4))*buf(i)+P(i,1)*freq_prev(4,i)+P(i,2)*freq_prev(3,i)+P(i,3)*freq_prev(2,i)+P(i,4)*freq_prev(1,i);
end
%round(lspq*2^13)'

%稳定性检验
lspq=sort(lspq);
for i=1:10
    if i==1
        if lspq(i)<0.005
            lspq(i)=0.005;
        end
    elseif i==10
        if lspq(i)>3.135
            lspq(i)=3.135;
        end
    else
        if lspq(i)-lspq(i-1)<0.0391
            lspq(i)=lspq(i-1)+0.0391;
        end
    end
end


