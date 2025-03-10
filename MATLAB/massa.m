%funktion för massan på raketen under tiden

function [m, mp] = massa(t)

if 0<=t && t<7
    m =30;

elseif 7<=t && t<107
    m = 30 -0.2*(t-7);

else 
    m = 10;

end


if 0<=t && t<7
    mp =0;
elseif 7<=t && t<107
    mp = -0.2;
else 
    mp = 0;
end



end