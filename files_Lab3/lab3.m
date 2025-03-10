load spectra.mat
plot(wavelength,xyz);


%% 1.1
load spectra.mat
reflectance = ones(size(CIED65));

[X,Y,Z] = spectra2xyz(reflectance, CIED65);


%% 1.2
plot(wavelength,R1);
hold on
plot(wavelength,R2);
hold off

[R1x, R1y, R1z] = spectra2xyz(R1, CIED65);
[R2x, R2y, R2z] = spectra2xyz(R2, CIED65);


%% 1.3
[R13x, R13y, R13z] = spectra2xyz(R1, f11)
[R23x, R23y, R23z] = spectra2xyz(R2, f11)


%% 1.5

[r1,g1,b1] = myxyz2rgb(R1x, R1y, R1z);
[r2,g2,b2] = myxyz2rgb(R2x, R2y, R2z);
[r3,g3,b3] = myxyz2rgb(R13x, R13y, R13z);
[r4,g4,b4] = myxyz2rgb(R23x, R23y, R23z);

map =[r1 g1 b1;r2 g2 b2;r3 g3 b3;r4 g4 b4];
map = min(1,max(0,map));
image([1 2; 3 4]);
colormap(map)


%% 2.1

%dot-off-dot
cyan_off = 0.5.*[25.84, 42.52, 80.88];
magenta_off = 0.5.*[37.36, 18.44, 27.52];
dot_off = cyan_off+magenta_off;


%dot-on-dot
bla_on = 0.5.*[7.4, 5.74, 40.36];
papper_on = 0.5.*[80.43, 84, 96.5];
dot_on = papper_on+bla_on



%% 2.2

[roff,boff, goff] = myxyz2rgb(31.6,30.48,54.2);
map=[roff boff goff];
map = min(1,max(0,map));
image(1);
colormap(map)

[ron,bon, gon] = myxyz2rgb(43.915,44.87,68.43);
map=[ron bon gon];
map = min(1,max(0,map));
image(1);
colormap(map)


%% 3.1
[C, M, Y, K] = tiffread('halftone');
[R, G, B] = cmyk2rgb(C, M, Y, K);
imshowrgb(R,G,B);

% Test 1
C1 = C(129:384,129:384);
M1 = M(129:384,129:384);
Y1 = Y(129:384,129:384);
K1 = K(129:384,129:384);

sum1 = Demichel_test(C1,M1,Y1,K1);

C2 = C(139:394,129:384);


sum2 = Demichel_test(C2,M1,Y1,K1);


%% 4.1

[R,G,B] = tiffread('Butterfly');
%imshowrgb(R,G,B);

[C, M,Y,K] = rgb2cmyk(R,G,B);
figure(1);
imshow(C);

figure(2);
imshow(M);

figure(3);
imshow(Y);

figure(4);
imshow(K);



%% 4.2

[L,a,b] = myrgb2lab(R,G,B);
[R2,G2,B2] = mylab2rgb(L+20,a,b);
imshowrgb(R2,G2,B2);
figure
[R3,G3,B3] = mylab2rgb(L-20,a,b);
imshowrgb(R3,G3,B3);


%% 4.3
[L,a,b] = myrgb2lab(R,G,B);
[R4,G4,B4] = mylab2rgb(L,-a,b);
imshowrgb(R4,G4,B4);

figure
[L,a,b] = myrgb2lab(R,G,B);
[R5,G5,B5] = mylab2rgb(L,0,b);
imshowrgb(R5,G5,B5);



%% 4.4
[L,a,b] = myrgb2lab(R,G,B);
[R6,G6,B6] = mylab2rgb(L,0.5*a,0.5*b);
imshowrgb(R6,G6,B6);

figure
[R7,G7,B7] = mylab2rgb(L,3*a,3*b);
imshowrgb(R7,G7,B7);


%% 5.1
[X_CIED65, Y_CIED65, Z_CIED65] = spectra2xyz(reflectance,CIED65);
[X_Tungsten60W, Y_Tungsten60W, Z_Tungsten60W] = spectra2xyz(reflectance,Tungsten60W);
[X_plank90K, Y_plank90K, Z_plank90K] = spectra2xyz(reflectance,plank90K);

[RCI, GCI, BCI] = myxyz2rgb(X_CIED65, Y_CIED65, Z_CIED65);
[Rtung, Gtung,Btung] = myxyz2rgb(X_Tungsten60W, Y_Tungsten60W, Z_Tungsten60W);
[Rplank, Gplank,Bplank] = myxyz2rgb(X_plank90K, Y_plank90K, Z_plank90K);
showRGB([RCI, GCI, BCI; Rtung, Gtung, Btung; Rplank, Gplank, Bplank]);


%% 5.2 
showRGB_20


%% 5.3
plot_deltaE


%% 5.4 och 5.5
plot_XYZ



%% 5.6 och 5.7
plot_Lab

































