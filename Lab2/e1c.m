clear all;
close all; clc;
tStart=-250;
tEnd=250;
w=[0,pi/8,pi/4,pi/2,pi,3*pi/2,7*pi/4,15*pi/8,2*pi];
t=linspace(tStart,tEnd,2000);%Continuoue variable
T=5;
k=(tStart/T):(tEnd/T);
n=k*T;%Diecrete variable
for idx=1:length(w)
 subplot(3,3,idx);
 stem(n,cos(w(idx).*n),'.');
 title((["x[n] = cos(",num2str(w(idx)/pi),"\omega n)"]));
end
