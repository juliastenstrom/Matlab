tspan=[1,2];
n=30;
ybv=[1;0;-3];
[t,y] = de(@me,ybv,tspan,n);
plot(t,y(1,:));