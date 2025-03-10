%Till för att skriva ut apporximationen 

f(0,1) %intervallet [0,1]
tspan = [0,1]; %sparar ett intervall i en variabel för att lättare använda det
n = 5; %hur många approximationspunkter man ska ha
ybv = 1; %beynnelsevärdet

[t,y] = odeEuler(@f,ybv,tspan,n)
plot(t,y,'x-b')
yex = exp(t);
hold on
plot(t,yex,'o-r')
hold off
grid on