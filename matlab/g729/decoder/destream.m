function [L0,L1,L2,L3,P1,P0,S1,C1,GA1,GB1,P2,S2,C2,GA2,GB2]=destream(code_stream)
%---------input:   二进制码流
%---------output:解码阶段的各个待传输的参数

L0=bin_dec(code_stream(1),1);
L1=bin_dec(code_stream(2:8),7);
L2=bin_dec(code_stream(9:13),5);
L3=bin_dec(code_stream(14:18),5);
P1=code_stream(19:26);
P0=code_stream(27);
C1=code_stream(28:40);
S1=code_stream(41:44);
GA1=bin_dec(code_stream(45:47),3);
GB1=bin_dec(code_stream(48:51),4);
P2=code_stream(52:56);
C2=code_stream(57:69);
S2=code_stream(70:73);
GA2=bin_dec(code_stream(74:76),3);
GB2=bin_dec(code_stream(77:80),4);

