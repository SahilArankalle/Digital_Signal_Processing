clear all;
close all;
clc;
t = -10:0.1:10;
fm = 1/4;
x = cos(2*pi*fm*t);
fs1 = 1.6 * fm;
fs2 = 2 * fm;
fs3 = 8 * fm;
n = -10:1:10;

xn1 = cos(2*pi*fm*n/fs1);
xn2 = cos(2*pi*fm*n/fs2);
xn3 = cos(2*pi*fm*n/fs3);

subplot(4,1,1);
plot(t,x);
grid on;
xlabel('time in seconds');
ylabel('x(t)');
title('Continuous time signal');

subplot(4,1,2);
stem(n,xn1);
grid on;
hold on;
plot(n,xn1);

xlabel('n');
ylabel('x(n)');
title('Discrete time signal fs<2fm');

subplot(4,1,3);
stem(n,xn2);
grid on;
hold on;
plot(n,xn2);

xlabel('n');
ylabel('x(n)');
title('Discrete time signal fs=2fm');


subplot(4,1,4);
stem(n,xn3);
grid on;
hold on;
plot(n,xn3);

xlabel('n');
ylabel('x(n)');
title('Discrete time signal fs>2fm');
