function [ga,gb,bestgp,bestgc]=conjugate_structure(x,y,z,c,GA,GB)
%实现共轭结构增益码书搜索功能
%输入 x--目标信号x(n) y--y(n)  z--z(n)  c--c(n)  gp--计算出的自适应增益 gc--计算出的固定增益
%输出  码书指针

global U;


%minimum=10^30;

%/*---------------------------------------------------*
% *-  energy due to innovation                       -*
% *-  predicted energy                               -*
% *-  predicted codebook gain => gcode0[exp_gcode0]  -*
% *---------------------------------------------------*/
Eyice=[0.68 0.58 0.34 0.19]*U(4:-1:1)';
Epinjun=30; 
E=10*log10(c*c'/40);
gc1=10^((Eyice+Epinjun-E)/20);

[ga,gb,bestgp,bestgc,update_u]=conjugate_structurecore(x,y,z,GA,GB,gc1);

%for i=1:8
%    for j=1:16
%        gp=GA(i,1)+GB(j,1);
%        gama=GA(i,2)+GB(j,2);
%        gc=gc1*gama;
%        temp=x*x'+gp^2*(y*y')+gc^2*(z*z')-2*gp*(x*y')-2*gc*(x*z')+2*gp*gc*(y*z');
%        %temp=conjugate_structurecore(x,y,z,gp,gc);
%        if minimum>temp
%            ga=i;
%            gb=j;
%            minimum=temp;
%            update_u=20*log10(gama);
%            bestgp=gp;
%            bestgc=gc;
%        end
%    end
%end

U=[U(2:end),update_u];%更新U


            
