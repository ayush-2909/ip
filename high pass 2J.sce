clc;
clear all;
a=imread("C:\Users\Dell\Downloads\cameraman.jpg");
subplot(2,2,1);
imshow(a);
title('original image');
[row col]=size(a);
w =[-1,-1,-1;-1,8,-1;-1,-1,-1];
for x=2:1:row-1
    for y = 2:1:col-1
        new (x,y)=(w(1)*a(x-1,y-1))+ (w(2)*a(x-1,y))+(w(3)*a(x-1,y+1))+(w(4)*a(x,y-1))+(w(5)*a(x,y))+(w(6)*a(x,y+1))+(w(7)*a(x+1,y-1))+(w(8)*a(x+1,y))+(w(9)*a(x+1,y+1));
    end
end
subplot (2,2,2);
imshow(uint8(new));
title("high pass filtered image");
