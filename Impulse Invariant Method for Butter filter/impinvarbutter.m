wp = 0.2 * pi;
ws = 0.3 * pi;
Rp = 1;
Rs = 40;

Fs = 1;
Wp = 2 * Fs * tan(wp/2);
Ws = 2 * Fs * tan(ws/2);


[n,wn] = buttord(Wp,Ws,Rp,Rs,'s');
[b_Analog, a_Analog] = butter(n,wn);
[b_digital, a_digital] = impinvar(b_Analog, a_Analog, Fs);

freqz(b_digital,a_digital,512,Fs);

disp('Numerator coeff (b_digital)')
disp(b_digital);
disp('Numerator coeff (a_digital)')
disp(a_digital);
