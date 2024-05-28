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

clear all;
close all;
pkg load control;  % Load the control package

% Define the numerator and denominator coefficients
num = [2 5 12]
den = conv([1 2 10], [1 2]);  % Convolve the two denominator polynomials

% Create the transfer function model
sys = tf(num, den);

% Plot the pole-zero diagram
pzmap(sys);




