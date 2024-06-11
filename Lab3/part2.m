##pkg load signal; % Load the signal package
##
##% Define the numerator and denominator coefficients
##b = [1 5];
##a = [1 2 3];
##
##% Generate the frequency vector
##omega = linspace(0, 100, 200);
##
##% Evaluate the frequency response
##H = freqs(b, a, omega);
##
##% Plot the magnitude and phase of the frequency response
##subplot(2,2,1);
##plot(omega, abs(H));
##title('Magnitude Response');
##xlabel('Frequency (rad/s)');
##ylabel('Magnitude');
##
##subplot(2,2,2);
##plot(omega, angle(H));
##title('Phase Response');
##xlabel('Frequency (rad/s)');
##ylabel('Phase (radians)');
##
##% Utilize the results to plot the Bode plot
##subplot(2,2,3);
##plot(omega, 20*log10(abs(H)));
##title('Bode Magnitude Plot');
##xlabel('Frequency (rad/s)');
##ylabel('Magnitude (dB)');
##
##subplot(2,2,4);
##plot(omega, angle(H) * (180/pi));
##title('Bode Phase Plot');
##xlabel('Frequency (rad/s)');
##ylabel('Phase (degrees)');
##
##
##


##pkg load signal; % Load the signal package
##
##% Define the numerator and denominator coefficients for the new transfer function
##b = [2, 5, 12];
##a = [1, 0, 2, 10];
##
##% Generate the frequency vector
##omega = linspace(0, 100, 200);
##
##% Evaluate the frequency response
##H = freqs(b, a, omega);
##
##% Plot the magnitude and phase of the frequency response in a 2x2 grid
##subplot(2,2,1); % First subplot in the top left
##plot(omega, abs(H));
##title('Magnitude Response');
##xlabel('Frequency (rad/s)');
##ylabel('Magnitude');
##
##subplot(2,2,2); % Second subplot in the top right
##plot(omega, angle(H) * (180/pi));
##title('Phase Response');
##xlabel('Frequency (rad/s)');
##ylabel('Phase (degrees)');
##
##% Utilize the results to plot the Bode plot in the same 2x2 grid
##subplot(2,2,3); % Third subplot in the bottom left
##plot(omega, 20*log10(abs(H)));
##title('Bode Magnitude Plot');
##xlabel('Frequency (rad/s)');
##ylabel('Magnitude (dB)');
##
##subplot(2,2,4); % Fourth subplot in the bottom right
##plot(omega, angle(H) * (180/pi));
##title('Bode Phase Plot');
##xlabel('Frequency (rad/s)');
##ylabel('Phase (degrees)');

##pkg load signal; % Load the signal package
##
##% Define the numerator and denominator coefficients
##b = [2, 5, 12];
##a = conv([1, 2, 10], [1, 2]); % Convolve the two denominator polynomials
##
##% Generate the frequency vector
##omega = linspace(0, 100, 200);
##
##% Evaluate the frequency response
##H = freqs(b, a, omega);
##
##% Plot the magnitude and phase of the frequency response in a 2x2 grid
##subplot(2,2,1); % First subplot in the top left
##plot(omega, abs(H));
##title('Magnitude Response');
##xlabel('Frequency (rad/s)');
##ylabel('Magnitude');
##
##subplot(2,2,2); % Second subplot in the top right
##plot(omega, angle(H) * (180/pi));
##title('Phase Response');
##xlabel('Frequency (rad/s)');
##ylabel('Phase (degrees)');
##
##% Utilize the results to plot the Bode plot in the same 2x2 grid
##subplot(2,2,3); % Third subplot in the bottom left
##plot(omega, 20*log10(abs(H)));
##title('Bode Magnitude Plot');
##xlabel('Frequency (rad/s)');
##ylabel('Magnitude (dB)');
##
##subplot(2,2,4); % Fourth subplot in the bottom right
##plot(omega, angle(H) * (180/pi));
##title('Bode Phase Plot');
##xlabel('Frequency (rad/s)');
##ylabel('Phase (degrees)');

% Define the registration number
##registration_number = 166;
##
##% Define frequencies in kHz
##f1 = registration_number; % f3 is equal to the registration number
##f2 = registration_number / 2; % Assuming f2 is half of f3
##f3 = registration_number / 4; % Assuming f1 is a quarter of f3
##
##% Define time vector assuming a sampling frequency much higher than f3 to satisfy Nyquist criteria
##fs = 10 * f1; % Sampling frequency is ten times the highest frequency
##t = 0:1/fs:0.01; % Time vector from 0 to 10 ms with sampling interval of 1/fs
##
##% Generate sinusoidal signals with unit magnitude and zero phase shift
##x1 = sin(2*pi*f1*1000*t);
##x2 = sin(2*pi*f2*1000*t);
##x3 = sin(2*pi*f3*1000*t);
##
##% Placeholder for system outputs:
##y11 = x1; % Replace with actual system response equation or function call
##y12 = x2;
##y13 = x3;
##
##y21 = x1;
##y22 = x2;
##y23 = x3;
##
##y31 = x1;
##y32 = x2;
##y33 = x3;
##
##y41 = x1;
##y42 = x2;
##y43 = x3;
##
##% Print the results
##disp('Sinusoidal Signals:');
##disp('x1:'), disp(x1);
##disp('x2:'), disp(x2);
##disp('x3:'), disp(x3);
##
##disp('System Outputs:');
##disp('y11:'), disp(y11);
##disp('y12:'), disp(y12);
##disp('y13:'), disp(y13);
##
##disp('y21:'), disp(y21);
##disp('y22:'), disp(y22);
##disp('y23:'), disp(y23);
##
##disp('y31:'), disp(y31);
##disp('y32:'), disp(y32);
##disp('y33:'), disp(y33);
##
##disp('y41:'), disp(y41);
##disp('y42:'), disp(y42);
##disp('y43:'), disp(y43);

##close all;
##clear all;
##
##pkg load control;
##
##% Bode plot for sys1
##
##subplot(2,2,1);
##i1 = [1, -1];
##d1 = [1, 2, 2];
##sys1 = tf(i1, d1);
##bode(sys1);
##
##% Bode plot for sys2
##subplot(2,2,2);
##i2 = [1, 5];
##d2 = [1, 2, 3];
##sys2 = tf(i2, d2);
##bode(sys2);
####
##% Bode plot for sys3
##subplot(2,2,3);
##i3 = [2, 5, 12];
##d3 = [1, 2, 10];
##sys3 = tf(i3, d3);
##bode(sys3);
####
##% Bode plot for sys4
##subplot(2,2,4);
##i4 = [2, 5, 12];
##d4 = conv([1, 2, 10], [1, 2]);
##sys4 = tf(i4, d4);
##bode(sys4);

for ii=1:3
 figure
 fi=166*ii;
 t=linspace(0,0.002*pi,20);
 x=sin(2*pi*fi*t);
 subplot(4,1,1);
 sys1=tf(i1,d1,fi);
 [y1,t1]=lsim(sys1,x);
 plot(t1,y1);
 subplot(4,1,2);
 sys2=tf(i2,d2,fi);
 [y2,t2]=lsim(sys2,x);
 plot(t2,y2);
 subplot(4,1,3);
 sys3=tf(i3,d3,fi);
 [y3,t3]=lsim(sys3,x);
 plot(t3,y3);
 subplot(4,1,4);
   sys4=tf(i4,d4,fi);
   [y4,t4]=lsim(sys4,x);
   plot(t4,y4);


end




