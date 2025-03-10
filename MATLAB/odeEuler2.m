%funktion för att ta fram en apporximationsserie 

function [t,y] = odeEuler2(f,ybv,tspan,n) %tar in differentialekvation, 
%beynnelsevärde, t intervllet och antalet approximationer och ger
a = tspan(1) %första värdet i intervallet
b = tspan(2) % sista värdet i intervallet
t = linspace(a,b,n+1) %intervallet och sedan n+1 antal punkter utsatta
y = zeros(length(ybv),n+1) %skapar en serie av nollor att fylla med apporximerade värden
y(:,1)=ybv %tilldela alla rader på plats 1
% nelsevärdet
h = t(2)-t(1) %skilladen mellan varje steg

for i = 1:n
    y(:,i+1) = y(:,i)+h*f(t(i),y(:,i)); 
end

end 