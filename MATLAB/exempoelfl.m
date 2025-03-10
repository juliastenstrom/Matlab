%% Exempel fo 7


%% Ex 1
% Lös ODE y' = y, 
% med begynnelsevillkor y(0) = 1 
% i intervallet [0,1]
clear
tspan = [0,1];
n = 20;
ybv = 1;

[t,y] = odeEuler(@funkEx1,ybv,tspan,n);

plot(t,y,'x-b')
yex = exp(t);
hold on
grid on
plot(t,yex,'o-r')
hold off

%% Ex 2
% Lös ODE y' = -y+sin(t), 
% med begynnelsevillkor y(0) = 1 
% i intervallet [0,3]
clear
tspan = [0,3];
n = 40;
ybv = 1;

[t,y] = odeEuler(@funkEx2,ybv,tspan,n);

plot(t,y,'x-b')
yex = (sin(t)-cos(t)+3*exp(-t))/2;
hold on
grid on
plot(t,yex,'o-r')
hold off

%%
figure(2)
plot(t,abs(yex-y))


%% Ex 3
% Lös ODE y' = -2ty
% med begynnelsevillkor y(0) = 1 
% i intervallet [0,4]
clear
tspan = [0,4];
n = 20;
ybv = 1;

[t,y] = odeEuler(@funkEx3,ybv,tspan,n);

plot(t,y,'x-b')
yex = exp(-t.^2);
hold on
grid on
plot(t,yex,'o-r')
hold off
%%
figure(2)
plot(t,abs(yex-y))
grid on


%%
%% Ex 14.2
clear
tspan = [0,2];
n = 20;
ybv = [1;-1];

[t,y] = odeEuler(@funkEx142,ybv,tspan,n);

plot(t,y(1,:),'x-b')
hold on
plot(t,y(2,:),'.-b')


%% Ex 14.3a
clear
tspan = [0,2];
n = 20;
ybv = [1;-1];

[t,y] = odeEuler(@funkEx143a,ybv,tspan,n);

plot(t,y(1,:),'x-b')
hold on
plot(t,y(2,:),'.-b')


%% Ex 14.3b
clear
tspan = [1,2];
n = 20;
ybv = [1;0;-3];

[t,y] = odeEuler(@funkEx143b,ybv,tspan,n);

plot(t,y(1,:),'x-b')
hold on
plot(t,y(2,:),'.-r')
plot(t,y(3,:),'.-k')


%% Ex:ode45
clear
tspan = [0,20];
ybv = [1.5;3];

[t,y] = ode45(@funkExfo8,tspan,ybv);

plot(t,y(:,1),'x-b')
hold on
plot(t,y(:,2),'.-r')


