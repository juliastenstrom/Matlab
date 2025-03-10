
F = [1 2 3 3 2 2 1 1 0 0 1; 0 0 1 2 2 3 3 2 2 1 0];

plot(F(1,:), F(2,:));

grid on
axis equal


a = linspace(0,5,100);
b = linspace(0,3,100);
rad = [1 1 1 1 1 1 1 1 1 1 1];
F(3,:) = rad;
t = linspace(0,2,100);
v = linspace(0, 2*pi, 100);

for i = 1:100
	FS = matrixSpeg(0)*matrixTrans(a(i), b(i))*matrixSkjuv(t(i))*F;
    Fejs = matrixTrans(a(i), b(i))*matrixSkjuv(t(i))*F;
	plot(FS(1,:), FS(2,:))
    hold on
    plot(Fejs(1,:), Fejs(2,:))
	grid on
    hold on
    plot(a,b);
    hold off;
	xlim([-10,20])
	axis equal
	pause(0.02)

end




    

