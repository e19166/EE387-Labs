##% Define the range for sigma and omega
##sigma = linspace(-5, 5, 100);
##omega = linspace(-5, 5, 100);
##
##% Generate the meshgrid
##[sigmagrid, omegagrid] = meshgrid(sigma, omega);
##
##% Define the complex sgrid
##sgrid = sigmagrid + 1j * omegagrid;
##
##% Define the numerator and denominator coefficients of H(s)
##% Example coefficients (you can modify these as needed)
##b = [1];   % Numerator coefficients (change as required)
##a = [1, 2, 1]; % Denominator coefficients (change as required)
##
##% Evaluate the numerator and denominator polynomials at sgrid
##H1 = polyval(b, sgrid) ./ polyval(a, sgrid);
##
##% Generate the surface plot of the magnitude of H(s) in dB
##mesh(sigma, omega, 20 * log10(abs(H1)));
##xlabel('Sigma');
##ylabel('Omega');
##zlabel('Magnitude (dB)');
##title('3-D Surface Plot of the Magnitude of H(s) in dB');
##
##

clear all;
close all;
sigma = linspace(-20, 20, 200);
omega = linspace(-5, 5, 200);
[sigmagrid, omegagrid] = meshgrid(sigma, omega);
sgrid = sigmagrid + 1i*omegagrid;
b = [2 2 17];
a = [1 4 104];
H1 = polyval(b, sgrid)./polyval(a, sgrid);
mesh(sigma, omega, 20*log10(abs(H1)));
xlabel('sigma');
ylabel('omega');
zlabel('abs(H1)');
