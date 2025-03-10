%styrningen av raketen

function dz = f(z,massa,vinkel,t)
%kalla på vinkel och massa funktion

v = vinkel(t);
ma = massa(t);



km = 2000;

ux = km * cos(v);
uy = km * sin(v);

c = 0.4;
g = 9.82;

dz1 = z(2);
dz2 = -c/ma(1)*sqrt(z(2)^2+z(4)^2)*z(2) + ma(2)/ma(1)* ux;
dz3 = z(4);
dz4 = -c/ma(1)*sqrt(z(2)^2+z(4)^2)*z(4) + ma(2)/ma(1)* uy-g

dz = [dz1;dz2;dz3;dz4];


end
