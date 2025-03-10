function dy = funkdugga(t,y)

dy1 = y(2)
dy2 = y(3);
dy3 = y(3)-3*y(1)*y(2)-t*y(1);

dy = [dy1;dy2;dy3];

end



