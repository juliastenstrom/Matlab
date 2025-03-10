%Till för differentialekvationen för att skapa den som en egen funktion

function dy = Ex143(t,y)
dy1 = y(2);
dy2 = t*y(2)-y(1)^2;
dy = [dy1;dy2];
end

