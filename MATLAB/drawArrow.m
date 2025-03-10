function drawArrow(P1,P2,color)
% Draw an arrow from point P1 to P2. 
% P1: x- and y-coordinate for starting point
% P2: x- and y-coordinate for end point/arrow head.
% color: specify color of arrow (optional). 
% Color is specified in the same way as with plot. 
% Try: 
% P1 = [1; -1];
% P2 = [0; 1];
% drawArrow(P1,P2,'b')



x = P1(1);
y = P1(2);
u = P2(1)-x;
v = P2(2)-y;

if nargin == 2
    quiver(x,y,u,v,'off',LineWidth=2);
else 
    quiver(x,y,u,v,'off',color,LineWidth=2);
end

end

