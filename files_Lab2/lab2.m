%% 1.1
kvarn = imread("kvarn.tif");
kvarn_ = double(kvarn) / 255;
b11 = kvarn_ >=0.5;
%imshow(b11);
imwrite(b11,'b11.png');


%% 1.2
load troskelmatriser.mat tr1 tr2 tr3
tr1
tr2
b12_tr1 = troskel(kvarn_,tr1/19);
b12_tr2 = troskel(kvarn_,tr2/33);
%imshow(b12_tr1)
%imshow(b12_tr2)
imwrite(b12_tr1,'b12_tr1.png');
imwrite(b12_tr2,'b12_tr2.png');


%% 1.3
b13 = troskel(kvarn_,tr3/33);

imwrite(b13,'b13.png');


%% 1.4

matris_linje = [1,2,3,4;5,6,7,8;9,10,11,12;13,14,15,16];
matris_spiral = [1,2,3,4;12,13,14,5;11,16,15,6;10,9,8,7];
b14_linje= troskel(kvarn_,matris_linje/17);
b14_spiral= troskel(kvarn_,matris_spiral/17);

imwrite(b14_linje,'b14_linje.png');
imwrite(b14_spiral,'b14_spiral.png');


%% 2.1

b21 = tabellrast(kvarn_);

imwrite(b21,'b21.png');


%% 2.2
b22 = tabellrast2(kvarn_);
imwrite(b22,'b22.png');



%% 2.4
b24 = tabellrast3(kvarn_);

imwrite(b24,'b24.png');


%% 3.1

felfilter_1 = [0,0,7;3,5,1]/16;
b31 = errordif(kvarn_,felfilter_1);
imwrite(b31,'b31.png');


%% 3.2

felfilter_2 = [0,0,0,7,5;3,5,7,5,3;1,3,5,3,1]/48;
b32 = errordif(kvarn_,felfilter_2);
imwrite(b32,'b32.png');


%% 3.4
felfilter_3 = [0,0,1;0,0,0];
b341 = errordif(kvarn_,felfilter_3);
imwrite(b341,'b341.png');


felfilter_4 = [0, 0, 0.3; 0,0.7,0];
b342 = errordif(kvarn_,felfilter_4);
imwrite(b342,'b342.png');


%% 3.6
brus = rand(size(kvarn_))-0.5;
k = 0.2;
brus = k*brus;
bruset = kvarn_ + brus;
bruset = max(min(bruset,1),0);
b36 = errordif(bruset,felfilter_1);
imshow(b36);
imwrite(b36,'b36.png');


%% 4.0
b40 = imcdp(kvarn_);
imwrite(b40,'b40.png');



%% 5.1 

SNRb11 = mysnr(kvarn_, kvarn_-b11);
SNRb31 = mysnr(kvarn_, kvarn_-b31);
SNRb40 = mysnr(kvarn_, kvarn_-b40);


%% 5.2

MSNRb11 = snr_filter(kvarn_, kvarn_-b11);
MSNRb31 = snr_filter(kvarn_, kvarn_-b31);
MSNRb40 = snr_filter(kvarn_, kvarn_-b40);


%% 5.3
QNSb11 = QNS(kvarn_, b11);
imwrite(QNSb11,'QNSb11.png');

QNSb31 = QNS(kvarn_, b31);
imwrite(QNSb31,'QNSb31.png');

disp(QNSb31)
QNSb40 = QNS(kvarn_, b40);
imwrite(QNSb40,'QNSb40.png');


%% Del 3
musicians = im2double(imread("musicians.tif"));
imwrite(musicians,'musicians.png');

ut=fargraster(musicians, 'imcdp');
imwrite(ut,'ut.png');




























