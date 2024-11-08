clear all;
close all;
clc;

Num = [1 0.81 -0.81];
Den = [1 0 0.45];
[z,p,k] = tf2zp(Num,Den);
zplane(z,p);

disp('Num is');
disp(Num);
disp('Den is');
disp(Den);
disp('z =');
disp(z);
disp('p =');
disp(p);
