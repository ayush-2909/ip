a=imread("C:\Users\Dell\Downloads\lenna.png");
b=double(a);
c=imnoise(a,'gaussian');
d=double(c);
b=d;
m=(1/9)*(ones(3,3));
[r1,c1]=size(a);
subplot(2,2,1);
imshow(a);
title('Original image');
subplot(2,2,2);
imshow(c);
title('Noise Image');
for i=2:r1-1
    for j=2:c1-1
        a=d(i-1,j-1)+d(i-1,j)+d(i-1,j+1)+d(i,j-1)+d(i,j)+d(i,j+1),+d(i+1,j-1)+d(i+1,j)+d(i+1,j+1);
        b(i,j)=a*(1/9);
    end
end
subplot(2,2,3);
imshow(uint8(b));
title('Filtered Image');
