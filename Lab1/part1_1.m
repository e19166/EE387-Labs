% Clear all variables
clear all;

% Define the sample period and time vectorize
Ts = 0.01;
t = -5:Ts:5;

% Define the ramp function
function y = ramp(t, m, ad)
  y = max(0, t + ad) * m;
endfunction

% Define the unit step function
function y = ustep(t, ad)
  y = (t+ad) >= 0;
endfunction

% Generate the signal
y1 = ramp(t, 3, 3);
y2 = ramp(t, -6, 1);
y3 = ramp(t, 3, 0);
y4 = ustep(t, -3);
y = y1 - 2 * y2 + 3 * y3 - y4;

% Plot the signal
plot(t, y, 'k');
axis([-5 5 -2 7]);
grid on;




