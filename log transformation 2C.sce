clc;
clear all;
Img2 = imread("C:\Users\Dell\Downloads\cameraman.jpg");
L = 255;
C = L / log ( 1 + L );
//display( C );
S = C * log ( 1 + double ( Img2 ) );
O = uint8 ( S );
subplot(2,2,1),
imshow(Img2),
title('ORGINAL IMAGE');
subplot(2,2,2);
imshow(O);
title('LOG TRANSFORMED IMAGE');
