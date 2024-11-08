close all;
clear all;
clc;

x = [1 2 3 4];
l = length(x);
X = 0;
syms z;

disp('x is');
disp(x);

for i=0:l-1

    X = X + x(i+1) * z ^ (-i);
end

disp('z transform is');
disp(X);