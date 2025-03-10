clear
clc

tspan = [1,2];
n = 30;
ybv = [1;0;-3];

[t,y] = odeRK2(@funkdugga,ybv,tspan,n);
plot(t,y(1,:))

