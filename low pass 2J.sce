clc;
clear all;
a1=imread("C:\Users\Dell\Downloads\cameraman.jpg");
a=double(a1);
imshow(double(a));
title('Original Image');
[row col]=size(a);
w=(1/9)*(ones(3,3));
for x=1:row
    for y=1:col
        new(x,y)=a(x,y);
    end
end
for x=2:1:row-1
    for y=2:1:col-1
        new(x,y)=(w(1)*a(x-1,y-1))+ (w(2)*a(x-1,y))+(w(3)*a(x-1,y+1))+(w(4)*a(x,y-1))+(w(5)*a(x,y))+(w(6)*a(x,y+1))+(w(7)*a(x+1,y-1))+(w(8)*a(x+1,y)+w(9)*a(x+1,y+1));
    end
end
imshow(uint8(new));
title("low pass filtered image");

