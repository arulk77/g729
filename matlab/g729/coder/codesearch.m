function [position,s,jx]=codesearch(dn,fi)
%����
%�������λ��i0-i3���������s0-s3��jx(ѡ��track3����track4)
global Tr0 Tr1 Tr2 Tr3 Tr4;%Track 0-4

 %/*-----------------------------------------------------------------------*
 % * Chose the sign of the impulse.                                        *
 % *-----------------------------------------------------------------------*/
    absdn=zeros(1,40);
    signdn=zeros(1,40);
    %absdnΪ1��40
    absdn=abs(dn);
    %signdnΪ1��40
    for i=1:40
        signdn(i)=sign(dn(i));
        if signdn(i)==0
            signdn(i)=1;
        end
    end
    %signdn'
    
 % /*-------------------------------------------------------------------*
 %  * Modification of rrixiy[] to take signs into account.              *
 %  *-------------------------------------------------------------------*/
    
    %����fi---
    for i=1:40
        for j=i+1:40
            fi(i,j)=signdn(i)*signdn(j)*fi(i,j);
        end
    end
    for i=1:40
        fi(i,i)=0.5*fi(i,i);
    end
    %---------
    
    %111111111111111111111111111111
    %ȷ��i0,i1,����16�Σ�����Ѱ��Track2��|d(n)|��������λ����Track3��8��λ������
    buffer=zeros(1,8);
    %tempΪ1��8
    temp=absdn(Tr2);
    [value,index]=max(temp);
    i0_1=Tr2(index);
    %s0_1=signdn(index);%i0=Tr2(index)����i1λ��
    for i=1:8
        C=value+absdn(Tr3(i));
        E=2*(fi(Tr2(index),Tr2(index))+fi(Tr2(index),Tr3(i))+fi(Tr3(i),Tr3(i)));%�������壬ֻ��(0,0)(1,1)(0,1)
        buffer(i)=C^2/(E+eps);
    end
    [temp_max1,temp_max_index1]=max(buffer);%Track2��|d(n)|�����Track3��8��λ���������
    
    temp(index)=0;%Track2��|d(n)|���λ����0
    [value,index]=max(temp);%Ѱ�ҳ�Track2��|d(n)|�ڶ���λ��
    i0_2=Tr2(index);%i0=Tr2(index)����i1λ��
    %s0_2=signdn(index);
    for i=1:8
        C=value+absdn(Tr3(i));
        E=2*(fi(Tr2(index),Tr2(index))+fi(Tr2(index),Tr3(i))+fi(Tr3(i),Tr3(i)));%�������壬ֻ��(0,0)(1,1)(0,1)
        buffer(i)=C^2/(E+eps);
    end
    [temp_max2,temp_max_index2]=max(buffer);%Track2��|d(n)|�ڶ�����Track3��8��λ���������
    
    if temp_max1>temp_max2
        i0=i0_1;
        %s0=s0_1;;
        i1=Tr3(temp_max_index1);
        %s1=signdn(temp_max_index1);
    else
        i0=i0_2;
        %s0=s0_2;;
        i1=Tr3(temp_max_index2);
        %s1=signdn(temp_max_index1);
    end
    %���Ͻ���depth-1������Ѱ�ҳ�����i0 i1,��������֪i0 i1����ֵ�����ϣ�����i2 i3(depth-2)
    %����i2 i3������8��8��64��
    temp_max_80num=0;%���80������������ֵ
    i2=Tr0(1);%��ֵ
    i3=Tr1(1);%��ֵ
    jx=0;
    for n3=1:8
        for n2=1:8
            C=absdn(i0)+absdn(i1)+absdn(Tr0(n2))+absdn(Tr1(n3));
            E=2*(fi(i0,i0)...
                +fi(i1,i1)+fi(i0,i1)...
                +fi(Tr0(n2),Tr0(n2))+fi(i0,Tr0(n2))+fi(i1,Tr0(n2))...
                +fi(Tr1(n3),Tr1(n3))+fi(i0,Tr1(n3))+fi(i1,Tr1(n3))+fi(Tr0(n2),Tr1(n3)));
            if temp_max_80num<C^2/(E+eps)
                temp_max_80num=C^2/(E+eps);
                i2=Tr0(n2);
                %s2=signdn(n2);
                i3=Tr1(n3);
                %s3=signdn(n3);
                jx=0;%ѡT3
            end
        end
    end
    %ͨ������depth-2�������ҳ�80����������i0-i3,s0-s3,    
    %111111111111111111111111111111
    
    
    %222222222222222222222222222222
    %��i1�ŵ�T4λ�ã��������䣬��i0-T2 i1-T4 i2-T0 i3-T1�ظ�����80������
    buffer=zeros(1,8);
    %tempΪ1��8
    temp=absdn(Tr2);
    [value,index]=max(temp);
    i0_1=Tr2(index);
    %s0_1=signdn(index);%i0=Tr2(index)����i1λ��
    for i=1:8
        C=value+absdn(Tr4(i));
        E=2*(fi(Tr2(index),Tr2(index))+fi(Tr2(index),Tr4(i))+fi(Tr4(i),Tr4(i)));%�������壬ֻ��(0,0)(1,1)(0,1)
        buffer(i)=C^2/(E+eps);
    end
    [temp_max1,temp_max_index1]=max(buffer);%Track2��|d(n)|�����Track3��8��λ���������
    
    temp(index)=0;%Track2��|d(n)|���λ����0
    [value,index]=max(temp);%Ѱ�ҳ�Track2��|d(n)|�ڶ���λ��
    i0_2=Tr2(index);%i0=Tr2(index)����i1λ��
    %s0_2=signdn(index);
    for i=1:8
        C=value+absdn(Tr4(i));
        E=2*(fi(Tr2(index),Tr2(index))+fi(Tr2(index),Tr4(i))+fi(Tr4(i),Tr4(i)));%�������壬ֻ��(0,0)(1,1)(0,1)
        buffer(i)=C^2/(E+eps);
    end
    [temp_max2,temp_max_index2]=max(buffer);%Track2��|d(n)|�ڶ�����Track3��8��λ���������
    
    if temp_max1>temp_max2
        i0_temp=i0_1;
        %s0=s0_1;;
        i1_temp=Tr4(temp_max_index1);
        %s1=signdn(temp_max_index1);
    else
        i0_temp=i0_2;
        %s0=s0_2;;
        i1_temp=Tr4(temp_max_index2);
        %s1=signdn(temp_max_index1);
    end
    %���Ͻ���depth-1������Ѱ�ҳ�����i0 i1,��������֪i0 i1����ֵ�����ϣ�����i2 i3(depth-2)
    %����i2 i3������8��8��64��
    for n3=1:8
        for n2=1:8
            C=absdn(i0)+absdn(i1)+absdn(Tr0(n2))+absdn(Tr1(n3));
            E=2*(fi(i0,i0)...
                +fi(i1,i1)+fi(i0,i1)...
                +fi(Tr0(n2),Tr0(n2))+fi(i0,Tr0(n2))+fi(i1,Tr0(n2))...
                +fi(Tr1(n3),Tr1(n3))+fi(i0,Tr1(n3))+fi(i1,Tr1(n3))+fi(Tr0(n2),Tr1(n3)));
            if temp_max_80num<C^2/(E+eps)
                temp_max_80num=C^2/(E+eps);
                i0=i0_temp;
                i1=i1_temp;
                i2=Tr0(n2);
                %s2=signdn(n2);
                i3=Tr1(n3);
                %s3=signdn(n3);
                jx=1;%ѡT4
            end
        end
    end
    %222222222222222222222222222222
    
    
    
    
    
    
    
    
    
    %333333333333333333333333333333
    %�ֻ�i0-i3λ�ã�ʹ��i0-T3 i1-T0 i2-T1 i3-T2�ظ�����80������
    buffer=zeros(1,8);
    %tempΪ1��8
    temp=absdn(Tr3);
    [value,index]=max(temp);
    i0_1=Tr3(index);
    %s0_1=signdn(index);%i0=Tr3(index)����i1λ��
    for i=1:8
        C=value+absdn(Tr0(i));
        E=2*(fi(Tr3(index),Tr3(index))+fi(Tr3(index),Tr0(i))+fi(Tr0(i),Tr0(i)));%�������壬ֻ��(0,0)(1,1)(0,1)
        buffer(i)=C^2/(E+eps);
    end
    [temp_max1,temp_max_index1]=max(buffer);%Track2��|d(n)|�����Track3��8��λ���������
    
    temp(index)=0;%Track2��|d(n)|���λ����0
    [value,index]=max(temp);%Ѱ�ҳ�Track2��|d(n)|�ڶ���λ��
    i0_2=Tr3(index);%i0=Tr3(index)����i1λ��
    %s0_2=signdn(index);
    for i=1:8
        C=value+absdn(Tr0(i));
        E=2*(fi(Tr3(index),Tr3(index))+fi(Tr3(index),Tr0(i))+fi(Tr0(i),Tr0(i)));%�������壬ֻ��(0,0)(1,1)(0,1)
        buffer(i)=C^2/(E+eps);
    end
    [temp_max2,temp_max_index2]=max(buffer);%Track2��|d(n)|�ڶ�����Track3��8��λ���������
    
    if temp_max1>temp_max2
        i0_temp=i0_1;
        %s0=s0_1;;
        i1_temp=Tr0(temp_max_index1);
        %s1=signdn(temp_max_index1);
    else
        i0_temp=i0_2;
        %s0=s0_2;;
        i1_temp=Tr0(temp_max_index2);
        %s1=signdn(temp_max_index1);
    end
    %���Ͻ���depth-1������Ѱ�ҳ�����i0 i1,��������֪i0 i1����ֵ�����ϣ�����i2 i3(depth-2)
    %����i2 i3������8��8��64��
    for n3=1:8
        for n2=1:8
            C=absdn(i0)+absdn(i1)+absdn(Tr1(n2))+absdn(Tr2(n3));
            E=2*(fi(i0,i0)...
                +fi(i1,i1)+fi(i0,i1)...
                +fi(Tr1(n2),Tr1(n2))+fi(i0,Tr1(n2))+fi(i1,Tr1(n2))...
                +fi(Tr2(n3),Tr2(n3))+fi(i0,Tr2(n3))+fi(i1,Tr2(n3))+fi(Tr1(n2),Tr2(n3)));
            if temp_max_80num<C^2/(E+eps)
                temp_max_80num=C^2/(E+eps);
                i0=i0_temp;
                i1=i1_temp;
                i2=Tr1(n2);
                %s2=signdn(n2);
                i3=Tr2(n3);
                %s3=signdn(n3);
                jx=0;%ѡT3
            end
        end
    end
    %333333333333333333333333333333
    %[i2 i3]
    
    %444444444444444444444444444444
    %��T4����%3333�е�T3���ظ�80��
    %i0-T4 i1-T0 i2-T1 i3-T2
    buffer=zeros(1,8);
    %tempΪ1��8
    temp=absdn(Tr4);
    [value,index]=max(temp);
    i0_1=Tr4(index);
    %s0_1=signdn(index);%i0=Tr4(index)����i1λ��
    for i=1:8
        C=value+absdn(Tr0(i));
        E=2*(fi(Tr4(index),Tr4(index))+fi(Tr4(index),Tr0(i))+fi(Tr0(i),Tr0(i)));%�������壬ֻ��(0,0)(1,1)(0,1)
        buffer(i)=C^2/(E+eps);
    end
    [temp_max1,temp_max_index1]=max(buffer);%Track2��|d(n)|�����Track3��8��λ���������
    
    temp(index)=0;%Track2��|d(n)|���λ����0
    [value,index]=max(temp);%Ѱ�ҳ�Track2��|d(n)|�ڶ���λ��
    i0_2=Tr4(index);%i0=Tr4(index)����i1λ��
    %s0_2=signdn(index);
    for i=1:8
        C=value+absdn(Tr4(i));
        E=2*(fi(Tr4(index),Tr4(index))+fi(Tr4(index),Tr0(i))+fi(Tr0(i),Tr0(i)));%�������壬ֻ��(0,0)(1,1)(0,1)
        buffer(i)=C^2/(E+eps);
    end
    [temp_max2,temp_max_index2]=max(buffer);%Track2��|d(n)|�ڶ�����Track3��8��λ���������
    
    if temp_max1>temp_max2
        i0_temp=i0_1;
        %s0=s0_1;;
        i1_temp=Tr0(temp_max_index1);
        %s1=signdn(temp_max_index1);
    else
        i0_temp=i0_2;
        %s0=s0_2;;
        i1_temp=Tr0(temp_max_index2);
        %s1=signdn(temp_max_index1);
    end
    %���Ͻ���depth-1������Ѱ�ҳ�����i0 i1,��������֪i0 i1����ֵ�����ϣ�����i2 i3(depth-2)
    %����i2 i3������8��8��64��
    for n3=1:8
        for n2=1:8
            C=absdn(i0)+absdn(i1)+absdn(Tr0(n2))+absdn(Tr1(n3));
            E=2*(fi(i0,i0)...
                +fi(i1,i1)+fi(i0,i1)...
                +fi(Tr1(n2),Tr1(n2))+fi(i0,Tr1(n2))+fi(i1,Tr1(n2))...
                +fi(Tr2(n3),Tr2(n3))+fi(i0,Tr2(n3))+fi(i1,Tr2(n3))+fi(Tr1(n2),Tr2(n3)));
            if temp_max_80num<C^2/(E+eps)
                temp_max_80num=C^2/(E+eps);
                i0=i0_temp;
                i1=i1_temp;
                i2=Tr1(n2);
                %s2=signdn(n2);
                i3=Tr2(n3);
                %s3=signdn(n3);
                jx=1;%ѡT4
            end
        end
    end
    %444444444444444444444444444444
    s=zeros(1,4);
    position=zeros(1,4);
    %[i0 i1 i2 i3 jx]
    position=[i0 i1 i2 i3];%���λ��
    position=sort(position);
    s=signdn(position);%�������


