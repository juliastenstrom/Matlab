%vinkel för raketen för att styra raketen vinkeln beroende på tiden
%skriv fler if statmens beroende på tiden för att styra raketen

function v = vinkel(t)
v = zeros(size(t));

if all(7 < t & t < 30)
    v = 3*pi/2;
elseif t <38
    v = pi;
elseif t < 46
    v = pi*3/2;
elseif t < 50
    v = 7*pi/4;
elseif t <59
    v = 3*pi/2;
elseif t < 65
    v = 5*pi/4;
else
    v = pi;
end

end


%fortsätt med fler vinklar

