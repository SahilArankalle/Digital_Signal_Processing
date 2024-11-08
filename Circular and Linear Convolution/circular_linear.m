close all;
clear all;
clc;
x = [1,2,3,4];
h = [-3,2,1,0];
l1 = length(x);
l2 = length(h);
N = l1+l2-1;

x = [x, zeros(1,N-l1)];
h = [h, zeros(1,N-l2)];

X = fft(x);
Y = fft(h);

z = X .* Y;
Z = ifft(z);

disp('circular conv');
subplot(2,2,1);
stem(Z);
disp(Z);

y = cconv(x,h,N);
disp('check ccon');
disp(y);

y1 = conv(x,h);
disp('linear conv');
subplot(2,2,2);
stem(y1);
disp(y1);


