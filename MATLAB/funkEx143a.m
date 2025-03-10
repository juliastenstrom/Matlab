function dy = funkEx143a(t,y)
dy1 = y(2);
dy2 = t*y(2)-y(1)^2;

dy = [dy1;dy2];

end