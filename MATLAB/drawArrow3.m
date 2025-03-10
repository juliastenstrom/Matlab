function drawArrow3(P1,P2,color)
% Draw an arrow from point P1 to P2. 
% P1: x-, y- and z-coordinate for starting point
% P2: x-, y- and z-coordinate for end point/arrow head.
% color: specify color of arrow (optional). 
% Color is specified in the same way as with plot. 
% Try: 
% P1 = [1; -1; 1];
% P2 = [0; 1; 0];
% drawArrow3(P1,P2,'b')



x = P1(1);
y = P1(2);
z = P1(3);
u = P2(1)-x;
v = P2(2)-y;
w = P2(3)-z;
if nargin == 2
    quiver3(x,y,z,u,v,w,'off',LineWidth=2);
else 
    quiver3(x,y,z,u,v,w,'off',color,LineWidth=2);
end

end

