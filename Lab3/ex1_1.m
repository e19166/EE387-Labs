##% Octave Code
##
##clear all;
##close all;
##pkg load control; % Load the control package
##
##% Define the numerator and denominator coefficients
##num = [5 10];
##den = [1 4 3];
##
##% Create the transfer function model
##sys = tf(num, den);
##
##% Plot the pole-zero diagram
##pzmap(sys);

% Octave Code

##clear all;
##close all;
##pkg load control;  % Load the control package
##
##% Define the numerator and denominator coefficients
##num = [2 5 12];
##den = [1 2 10];
##
##% Create the transfer function model
##sys = tf(num, den);
##
##% Plot the pole-zero diagram
##pzmap(sys);

% Octave Code

##clear all;
##close all;
##pkg load control;  % Load the control package
##
##% Define the numerator and denominator coefficients
##num = [2 5 12]
##den = conv([1 2 10], [1 2]);  % Convolve the two denominator polynomials
##
##% Create the transfer function model
##sys = tf(num, den);
##
##% Plot the pole-zero diagram
##pzmap(sys);


% Clear workspace and close all figures
clear all;
close all;

% Load the control package
pkg load control;

% Plot 1: Create LTI model and Pole-zero map for the given b and a
subplot(2,2,1)
b = [1 -1]; % Numerator coefficients
a = [1 3 2]; % Denominator coefficients
sys1 = tf(b, a); % Create LTI model
pzmap(sys1); % Generates pole-zero diagram using LTI model
title('Pole-Zero Map for b = [1 -1], a = [1 3 2]');

% Plot 2: Create LTI model and Pole-zero map for i1 and d1
i1 = [1, 5];
d1 = [1, 2, 3];
sys2 = tf(i1, d1); % Create LTI model
subplot(2,2,2);
pzmap(sys2);
title('Pole-Zero Map for i1 = [1, 5], d1 = [1, 2, 3]');

% Plot 3: Create LTI model and Pole-zero map for i2 and d2
i2 = [2, 5, 12];
d2 = [1, 2, 10];
sys3 = tf(i2, d2); % Create LTI model
subplot(2,2,3);
pzmap(sys3);
title('Pole-Zero Map for i2 = [2, 5, 12], d2 = [1, 2, 10]');

% Plot 4: Create LTI model and Pole-zero map for i3 and d3
i3 = [2, 5, 12];
d3 = conv([1, 2, 10], [1, 2]);
sys4 = tf(i3, d3); % Create LTI model
subplot(2,2,4);
pzmap(sys4);
title('Pole-Zero Map for i3 = [2, 5, 12], d3 = conv([1, 2, 10], [1, 2])');






