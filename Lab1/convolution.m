clc;
f_s = 100;
T_s = 1/f_s;

% Define the rectangular pulse function
function x = rect(t)
  x = (t >= -0.5 & t < 0.5);
 endfunction

x1=rect(t);
y = conv(x1,x1);
close all;
length(y)
length(t)
t_y = -10:T_s:10;

% plot ( t, y);
% T_s*conv(y1,x1);

y1 = T_s*conv(x1, x1);

plot(t_y, y1);

axis([-2 2 -1 2]);
xlabel('time (sec)');
ylabel('y_1(t)');
title('Figure : y_1(t) = x_1(t) * x_1(t)');

