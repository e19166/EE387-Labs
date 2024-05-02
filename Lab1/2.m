clear all;

% Define the rectangular pulse function
function x = rect(t)
  x = (t >= -0.5 & t < 0.5);
 endfunction

% Define the sample frequency and sample period
f_s = 100; % Sample frequency
T_s = 1/f_s; % Sample period

% Create the time axis
t = -5:T_s:5;

% Generate the rectangular pulse
x1 = rect(t);

% Plot the rectangular pulse
plot(t, x1);
axis([-2 2 -1 2]);  % Change the field of view of the plot
xlabel('time (sec)');
ylabel('x_1(t)');
title('Plot 1: A rectangular pulse');
