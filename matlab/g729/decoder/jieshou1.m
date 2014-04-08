t= tcpip('10.10.144.50','RemotePort',8877,'LocalPort',8888);
set(t, 'InPutBufferSize',96000);
u=udp('10.10.144.50','RemotePort',8833,'LocalPort',8844);
fopen(u);
