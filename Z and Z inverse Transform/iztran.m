close all;
clear all;
clc;
syms n;
a = sin(n);
x = ztrans(a);
y = iztrans(a);

disp('z tran');
disp(x);
disp('iz tran');
disp(y);