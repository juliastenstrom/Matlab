function drawCAxis()
% Draw arrows for the 3D coordinate axis. 
% Try: 
% drawCAxis()

p0 = [0;0;0];
x = [1;0;0];
y = [0;1;0];
z = [0;0;1];


drawArrow3(p0,x)
drawArrow3(p0,y)
drawArrow3(p0,z)

end