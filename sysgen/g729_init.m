% This routine has the variable initialization for the
% g729 encoder
fixed_point = 16;
fixed_point_frac = 10;

fpga_up_rate = 20;
fpga_dwn_rate = fpga_up_rate;

fifo_stage1_thres = 240;

for n = 0:239
    if n < 200
        wl(n+1) = 0.54 - (0.46 * cos(2*pi*n/399.0));
    else
        wl(n+1) = cos(2*pi*(n-200)/159);
    end
end