clc;
clear all;
a=imread("C:\Users\Dell\Downloads\cameraman.jpg");
a=double(a);
[row col]=size(a);
r1=input("Enter the value of R1:");
s1=input("Enter the value of S1:");
r2=input("Enter the value of R2:");
s2=input("Enter the value of S2:");
m1=s1/r1;
m2=(s2-s1)/(r2-r1);
m3=(255-s2)/(255-r2);
for x=1:1:row
    for y=1:1:col
        if a(x,y)<r1
            b(x,y)=m1*a(x,y);
        else if a(x,y)>=r1 && a(x,y)<=2
                b(x,y)=m2*(a(x,y)-r1) + s1;
            else b(x,y)= m3*(a(x,y)-r2)+s2;
            end
        end
    end
end
subplot(2,1,1);
imshow(uint8(a));
title("Original Image");
subplot(2,1,2);
imshow(uint8(b));
title("Image after contrast stretching Image");

