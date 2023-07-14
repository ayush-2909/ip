clc;
clear all;
a=imread("C:\Users\Dell\Downloads\lenna.png");
a=rgb2gray(a);
subplot(2,1,1);
imshow(a);
title('org img');
d=a;
[r,c]=size(d);
m=[1 1 1;1 1 1;1 1 1];
for i=2:1:r-1
    for j=2:1:c-1
        new=[(m(1)*d(i-1,j-1)) (m(2)*d(i-1,j)) (m(3)*d(i-1,j+1))
            (m(4)*d(i,j-1)) (m(5)*d(i,j)) (m(6)*d(i,j+1))
            (m(7)*d(i+1,j-1)) (m(8)*d(i+1,j)) (m(9)*d(i+1,j+1))];
        A2(i,j)=min(new);
        aa(i,j)=d(i,j)-A2(i,j);
    end
end
subplot(2,1,2);
imshow(aa);
title('Boundary Extracted Image');
