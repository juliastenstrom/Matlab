clear 
clc

tspan = [1,2];
n = 20;
ybv = [1,0,-3];

[t,y] = Eu(@funktion,ybv,tspan,n);

plot(t,y(1,:));

funktion(4,[1;2;2])