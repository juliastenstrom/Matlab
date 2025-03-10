function drawPlane(n, color)
% Draw a transparent plane with normal vector n
% color: specify color of arrow (optional). 
% Color is specified in the same way as with plot. 
% Try: 
% n = [1; -1; 1];
% drawPlane(n)
% drawPlane(n,'r')

[U,~,~] = svd(n);

U = U*3;
P1 = U(:,2) + U(:,3);
P2 = U(:,2) - U(:,3);
P3 = -U(:,2) - U(:,3);
P4 = -U(:,2) + U(:,3);
P = 2*[P1 P2 P3 P4];

if nargin == 1
    p = patch(P(1,:),P(2,:),P(3,:), 'b');
else 
    p = patch(P(1,:),P(2,:),P(3,:), color);
end

% Set the Face and edge transparency to 0.2 
% using the following properties
set(p,'facealpha',0.2)
set(p,'edgealpha',0.2)

end