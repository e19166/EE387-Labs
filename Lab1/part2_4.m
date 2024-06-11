clear all;
close all;
clc;

Ts=0.01; %Sampling time
t=-5:Ts:5; %Time vector

% Define the rectangular pulse function
function x = rect(t)
  x = (t >= -0.5 & t < 0.5);
 endfunction

x1=rect(t);
y=Ts*conv(x1,x1);

t_y=-10:Ts:10; %New time vector for y

try
    plot(t_y,y) %Plot y against t_y instead of t
catch
    disp('The dimensions do not match for t_y and y');
end

xlabel( 'time (sec)');
ylabel('y_1(t)');
title('Figure : y_1(t) = x_1(t)*x_1(t)');

