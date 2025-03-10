

clear
clc
t = linspace(0,2*pi);

x = (2+cos(4*t)).*cos(t);
y = sin(4*t)./2-2;
z = (2+cos(4*t)).*sin(t);

X = [x;
    y;
    z]

plot3(X(1,:), X(2,:), X(3,:));
xlim([-5,5]);
grid on
axis equal
hold on

drawCAxis()
n = [1.9; 0.6; 0.7];
p0 = [0 0 0]'

drawArrow3(p0,n);
L = n*[-3:3];
plot3(L(1,:), L(2,:), L(3,:));
hold on 
drawPlane(n);



%del 2
q = 1.9^2+0.6^2+0.7^2;
w = sqrt(q);
skal = 1/w;


a = skal *1.9;
b = skal*0.6;
c = skal*0.7;

PA = [1-a^2 -a*b -a*c
    -a*b 1-b^2 -b*c
    -a*c -b*c 1-c^2];

Proj = PA*X;

%plot3(Proj(1,:), Proj(2,:), Proj(3,:));


%del 3
v = deg2rad(330)
n1 = skal*n;
RA = matrixRot3(n1,v);
Rot = RA*X;
plot3(Rot(1,:), Rot(2,:), Rot(3,:));

%lägg till projecerad roterad figur
f = PA*RA*X
%plot3(f(1,:), f(2,:), f(3,:));



