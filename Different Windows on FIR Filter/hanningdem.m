close all;
clear all;
clc;

n = 20;
fp = 100;
fs = 1000;
fn = 2*fp/fs;
window = hanning(n+1);
a = fir1(n,fn,"high",window);

w = 0:0.001:pi;
[h,om] = freqz(a,1,w);
b = 20*log10(abs(h));
a = angle(h);

subplot(2,1,1);
plot(w/pi,b);
xlabel('Normaliz');
ylabel('gain in db');
title('mag plot');

subplot(2,1,2);
plot(w/pi,a);
xlabel('Normaliz');
ylabel('phase in rad');
title('phase res');
