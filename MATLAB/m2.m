%Till för att skriva ut apporximationen  ex14.2


tspan = [0,2]; %sparar ett intervall i en variabel för att lättare använda det
n = 20; %hur många approximationspunkter man ska ha
ybv = [1,-1]; %beynnelsevärdet

[t,y] = odeEuler2(@Ex142,ybv,tspan,n)
plot(t,y,'x-b')
yex = exp(t);
hold on
%plot(t,yex,'o-r')
hold off
grid on