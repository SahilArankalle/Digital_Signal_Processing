x = [1 2 3 4];
y = [4 3 2 1];

a = 2;
b = 3;

z = a*x + b*y;
Z = fft(z);

X = fft(x);
Y = fft(y);

Z_expected = a*X + b*Y;

disp('DFT of Linear Combination z(n)');
disp(Z);

disp('Sum of individual DFTs');
disp(Z_expected);