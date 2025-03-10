function [t,y] = RK2(f,ybv,tspan,n)

a=tspan(1);
b=tspan(2);
t=linspace(a,b,n+1);
y=zeros(length(ybv),n+1);
y(:,1) = ybv;
h=t(2)-t(1);

for i=1:n
    k1=f(t(i),y(:,i));
    k2=f(t(i)+h,y(:,i)+h*k1);
    y(:,i+1) = y(:,i)+h/2*(k1+k2);
end

end