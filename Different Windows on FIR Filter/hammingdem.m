close all;
clear all;
clc;

n = 20;
fp = 100;
fq = 300;
fs = 1000;
wp = 2*fp/fs;
wq = 2*fq/fs;
wn = [wp wq];
window = hamming(n+1);

a = fir1(n,wn,'stop',window);
w = 0:0.001:pi;
[h,om] = freqz(a,1,w);
b = 20*log10(abs(h));
a = angle(h);

subplot(2,1,1);
plot(w/pi,b);
xlabel('normalized freq');
ylabel('gain in db');
title('mag plot');

subplot(2,1,2);
plot(w/pi,a);
xlabel('normalized freq');
ylabel('phase in rad');
title('phase response');

