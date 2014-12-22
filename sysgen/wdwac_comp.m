function [r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10] = wdwac_comp(Sample,Valid)

% Intialize the constant for the window correlation
for n = 0:239
    if n < 200
        wl(n+1) = 0.54 - (0.46 * cos(2*pi*n/399.0));
    else
        wl(n+1) = cos(2*pi*(n-200)/159);
end

for n = 0:239
    s_t(n+1) = wl(n+1) * Sample;
end

r0 = 1.0;
r1 = wl(1);
r2 = wl(2);
r3 = wl(3);
r4 = wl(4);
r5 = wl(5);
r6 = wl(6);
r7 = wl(7);
r8 = wl(8);
r9 = wl(9);
r10 = wl(10);
