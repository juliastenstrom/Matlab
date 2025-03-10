

%%Uppgift 3 redovisning

%Rotation
F = [1 2 3 3 2 2 1 1 0 0 1; 0 0 1 2 2 3 3 2 2 1 0];

figure(1);
plot(F(1,:),F(2,:));
hold on

vinkel1 = deg2rad(150);

R = [cos(vinkel1), -sin(vinkel1); sin(vinkel1), cos(vinkel1)];

Rot = R*F;
plot(Rot(1,:), Rot(2,:));
%x = linspace(0,4,200);
x = linspace(-100,100,200); blir små figurer

plot(x,y);
legend('Figure','Rotated figure' , 'rotaion line');
title('Roterad figur')
grid on;
hold on;
axis equal;


%Spegling
figure(2);
vinkel2 = deg2rad(120);
vinkel60 = deg2rad(60)
vinkel3 = deg2rad(150);

S = [cos(vinkel2), sin(vinkel2); sin(vinkel2), -cos(vinkel2)];
plot(F(1,:),F(2,:));
hold on

Spe = S*F;
plot(Spe(1,:), Spe(2,:));

y = tan(vinkel60) * x;
plot(x,y);

legend('Figur','figur speglad' , 'linje');
title('Speglad figur')

grid on
axis equal

%Projektion
figure(3)
c = cos(vinkel3)*cos(vinkel3);
s = sin(vinkel3)*sin(vinkel3);
cs = cos(vinkel3)*sin(vinkel3);

P = [c, cs; cs, s];

Fn = [1 2 3 3 2 2 1 1 0 0 1; 0 0 -1 -2 -2 -3 -3 -2 -2 -1 0];

plot(F(1,:),F(2,:));
hold on

Pro = P*F;
plot(Pro(1,:), Pro(2,:));
hold on 

pron = P*Fn
plot(pron(1,:), pron(2,:))

y = tan(vinkel3) * x;
plot(x,y);

legend('Figure','projected figure' , 'projection line');
title('Projecerad figur')

grid on
axis equal

%Figure 1 (determinant)
figure(4)
plot(F(1,:), F(2,:));
hold on

FR = R*F;
plot(FR(1,:),FR(2,:));

legend('Figure','Rotated figure' , 'rotaion line');

grid on 
axis equal

%Figure 2 (invers)
figure(5)
P1 = [0; 0];
P2 = [4; 4];
P4 = [0; 4];
P6 = [-4;0];

drawArrow(P1, P2, "r");
hold on
drawArrow(P1,P4, "b")
hold on
drawArrow(P1,P6,"g");
hold on

P3 = P*P2;
P5 = P*P4;
P7 = P*P6;

drawArrow(P1,P3, "r--");
hold on
drawArrow(P1, P5, "b--");
hold on
drawArrow(P1, P7, "g--");
hold on 
y = tan(vinkel3) * x;
plot(x,y);

legend('vektor1', 'vektor2', 'vektor3','projecerad vektor 1', 'projecerad vektor 2', 'projecerad vektor 3','projektionslinje');
title('Projecerad vektor')

axis equal
grid on
%Figure 3 (egenvärde och egenvektorer)
figure(6)
drawArrow(P1,P2,"r");
hold on 

V1 = [-2; 2];
vinekl = [2;0];
pp=R*vinekl
drawArrow(P1, pp, "g");
hold on

drawArrow(P1, V1, "b");
hold on

y = tan(vinkel60) * x;
plot(x,y);
hold on

P4 = S*P2;
V2 = S*V1;
ny = S*pp;

drawArrow(P1,P4,"r--");
hold on
drawArrow(P1,V2,"b--");
drawArrow(P1,ny,"g--")
legend('vektor 1', 'vektor 2', 'vektor 3', 'speglnings linje', 'speglad vektor 1', 'speglad vektor 2', 'speglad vektor 3');
title('Speglad vektor')
axis equal
grid on

%Figure 4 (nollrum och värderum)

figure(7)
P1 = [0; 0];
P2 = [4; 4];
P4 = [0; 4];
P6 = [-4;0];

drawArrow(P1, P2, "r");
hold on
drawArrow(P1,P4, "r")
hold on
drawArrow(P1,P6,"r");
hold on

P3 = P*P2;
P5 = P*P4;
P7 = P*P6;

drawArrow(P1,P3, "g");
hold on
drawArrow(P1, P5, "g");
hold on
drawArrow(P1, P7, "g");
hold on 
y = tan(vinkel3) * x;
plot(x,y);

legend('vektor1', 'vektor2', 'vektor3','projecerad vektor 1', 'projecerad vektor 2', 'projecerad vektor 3', 'projektionslinje');
title('Projecerad vektor')

axis equal
grid on

%Figure 5 (sammansatta avbildningar)
figure(8)
plot(F(1,:), F(2,:));
hold on

Ftot = S*FR;
plot(FR(1,:), FR(2,:));
plot(Ftot(1,:), Ftot(2,:));

legend('Figur','figure roterad','figur roterad och speglad');
title('Roterad och speglad figur')

grid on 
axis equal
