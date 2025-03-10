clear
clc

load bana-258
plotTrack(portx,porty,ver,v0,a0)
hold on


%startpunkten för raketen
startx = 80;
starty = 0;
plot(startx,starty,'o', LineWidth=4);

%start hastigheten 
startVx = 30*cosd(165);
startVy = 30*sind(165);

y0 = [startx; startVx; starty; startVy];


tspan = [0,75];

[t,z] = ode45(@odef, tspan, y0);


%hur raketen rör sig genom banan
plot(z(:,1),z(:,3));

figure(2)
hastighet = sqrt(z(:,2).^2 + z(:,4).^2);
plot(t,hastighet);
title('Hastighetsförändring beroende på tid')
xlabel('Tid (s)');
ylabel('Hastighetsförändring (m/s)')

grid on


figure(3)
s = linspace(0, 75, 333);
w = zeros(length(s), 1);

for i = 1:length(s)
    w(i) = vinkel(s(i));
end

plot(s, w);
title('Vinkeln beroende på tid')
xlabel('Tid (s)');
ylabel('Vinkel (rad)')
grid on



%plot(x,y,x',y') består y av i ode fyra stycken pga dz är fyra stycken

%{


t = [1,5];

dz = styr(@massa,@vinkel,t);
n=100;
tspan = [1,5];


ybv = [0;0;0];
[t,y] = odeRK4(@dz,ybv,tspan,n);
plot(t,y(1,:));




x0 = 40;
y0 = 0;
line1 = 200; 
x1 = x0 + line1 * cos(deg2rad(15));
y1 = y0 + line1 * sin(deg2rad(15));
plot([x0, x1], [y0, y1]);

line2 = 50;
x2 = x1 + line2 * cos(deg2rad(60));
y2 = y1 + line2 * sin(deg2rad(60));
plot([x1, x2], [y1, y2]);

line3 = 300;
x3 = x2 + line3 * cos(deg2rad(110));
y3 = y2 + line3 * sin(deg2rad(110));
plot([x2, x3], [y2, y3]);

line4 = 110;
x4 = x3 + line4 * cos(deg2rad(60));
y4 = y3 + line4 * sin(deg2rad(60));
plot([x3, x4], [y3, y4]);

line5 = 290;
x5 = x4 + line5 * cos(deg2rad(-20));
y5 = y4 + line5 * sin(deg2rad(-20));
plot([x4, x5], [y4, y5]);
%}
