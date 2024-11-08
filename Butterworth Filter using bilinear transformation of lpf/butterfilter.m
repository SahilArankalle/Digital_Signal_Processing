close all;
clear all;
clc;
alphas = 30;
alphap = 0.5;
fpass = 1000;
fstop = 1500;
fsam = 5000;
wp = 2*fpass/fsam;
ws = 2*fstop/fsam;

[n,wn] = buttord(wp,ws,alphap,alphas);
[b,a] = butter(n,wn);
[h,w] = freqz(b,a);

x = 20*log10(abs(h));
y = angle(h);

subplot(2,1,1);
plot(w/pi, x);
xlabel('normalized freq');
ylabel('gain in db');
title('mag res');
subplot(2,1,2);
plot(w/pi, y);
xlabel('normalized freq');
ylabel('phase in rad');
title('phase res');


