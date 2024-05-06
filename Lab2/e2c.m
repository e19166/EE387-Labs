close all;
clear all;
clc;

pkg load symbolic; % Load the symbolic package

clear all;
close all;
clc;

function [ y] = myConv( x1,x2)
 y=zeros(1,length(x1)+length(x2));%resulting vector
 N=length(y);

 for n=1:N
 for k=1:N
 if (k <= length(x1)) && (n-k >= 1) && (n-k <=length(x2))
 %Checking to see if the variables goes out of the finite
 %array (in which case they are zero)
 y(n)=y(n)+x1(k)*x2(n-k);
 end
 end
 end

 y=y(1,2:length(y));

% disp('DEBUG OUTPUT:')
% disp([' x1 = ',num2str(x1)]);
% disp([' x2 = ',num2str(x2)]);
% disp([' x1CONVx2 = ',num2str(y)]);

end

X=[1 1 1 1 1 0 0 0 0 0 0 0 0 0 0];
h=[2 4 8 16 32 64 0 0 0 0 0 0 0 0 0];
Xh=myConv(X,h);%My implementation
Xhh=conv(X,h);%MATLAB function

subplot(2,2,1);
stem(X);
title("X[n]");

subplot(2,2,2);
stem(h);
title("h[n]");

subplot(2,2,3);
stem(Xh);
title("X[n]*h[n] my function");

subplot(2,2,4);
stem(Xhh);
title("X[n]*h[n] MATLAB function");



