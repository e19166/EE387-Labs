##clear all;
##close all;
##Fp = 1000; Fs = 5000; Fsample = 10000;
##Wp = Fp / Fsample;
##Ws = Fs / Fsample;
##[N, Wn] = buttord(Wp, Ws, 3, 30);
##[zeros_, poles_, scale_] = butter(N, Wn);
##[a, b] = butter(N, Wn);
##tf = zpk(zeros_, poles_, scale_);
##bode(tf);
##figure;
##freqz(a, b, 5000, Fsample);



##clear all;
##close all;
##N = 4;
##Fp = 1000;
##Wp = 2 * pi * Fp;
##[num, den] = butter(N, Wp, 's');
##fil = tf(num, den);
##bode(fil);

clear all;
close all;
N = 4;
Rp = 2;
fp = 1000;
Wp = 2 * pi * fp;
[num, den] = cheby1(N, Rp, Wp, 's');
fil = tf(num, den);
bode(fil);





