function A = matrixRot3(n,v)
% Generate matrix A for 3D rotation of 
% an angle v and along axis n. 
% n: vector of dim 3. 
% v: rotation angle in rad.
% Try 
% n = [1;-1;2]; v = pi/3;
% A = matrixRot3(n,v);

n = n/norm(n);
a = n(1);
b = n(2);
c = n(3);

A = [cos(v)+a*a*(1-cos(v)) a*b*(1-cos(v))-c*sin(v) a*c*(1-cos(v))+b*sin(v); 
    a*b*(1-cos(v))+c*sin(v) cos(v)+b*b*(1-cos(v)) b*c*(1-cos(v))-a*sin(v) ; 
    a*c*(1-cos(v))-b*sin(v) b*c*(1-cos(v))+a*sin(v) cos(v)+c*c*(1-cos(v))] ;
end