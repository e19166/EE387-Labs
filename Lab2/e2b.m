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


n=1:10;
x=0.5.^n .* heaviside(n);
h=heaviside(n);
xh=myConv(x,h);
figure;
hold on;
p1 = stem(n,x,'r');
p2 = stem(n,h,'g');
p3 = stem((1:length(xh)),xh,'b');
legend([p1, p2, p3], 'x[n]=0.5^nU[n]','h[n]=U[n]','x[n]*h[n]');
hold off;


