clc;
clear all;
a=imread("C:\Users\Dell\Downloads\dice.png");
a=rgb2gray(a);
d=a;
A2=d;
A1=d;
subplot(2,2,1);
imshow(a);
title('org img');
[r,c]=size(d);
m=[1 1 1;1 1 1;1 1 1];
for i=2:1:r-1
    for j=2:1:c-1
        new=[(m(1)*d(i-1,j-1)) (m(2)*d(i-1,j)) (m(3)*d(i-1,j+1))
            (m(4)*d(i,j-1)) (m(5)*d(i,j)) (m(6)*d(i,j+1))
            (m(7)*d(i+1,j-1)) (m(8)*d(i+1,j)) (m(9)*d(i+1,j+1))];
        A2(i,j)=min(new);
    end
end
subplot(2,2,2);
imshow(A2);
title('org img');
d = A2;
A1=A2;
[r,c]=size(d);
for i=2:1:r-1
    for j=2:1:c-1
        new=[(m(1)*d(i-1,j-1)) (m(2)*d(i-1,j)) (m(3)*d(i-1,j+1))
            (m(4)*d(i,j-1)) (m(5)*d(i,j)) (m(6)*d(i,j+1))
            (m(7)*d(i+1,j-1)) (m(8)*d(i+1,j)) (m(9)*d(i+1,j+1))];
        A1(i,j)=max(new);
    end
end
subplot(2,2,3);
imshow(A1);
title('Processed Image - Opening');
