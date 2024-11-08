close all;
clear all;
clc;

n = 20;
fp = 100;
fs = 1000;
fn = 2*pi*fp/fs;
window = rectwin(n+1);

a = fir1(n,fn,"high",window);

w = 0:0.001:pi;
[h,w] = freqz(a,1,w);
b = 20*log10(abs(h));
a = angle(h);

subplot(2,1,1);
plot(w/pi,b);
xlabel('Normalized freq');
ylabel('gain in db');
title('Mag plot');

subplot(2,1,2);
plot(w/pi,a);
xlabel('Normalized freq');
ylabel('Phase in rad');
title('Phase response');