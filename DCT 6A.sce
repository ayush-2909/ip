clear;
clc;
clear all;
close;
img = imread("C:\Users\Dell\Downloads\lenna.png");
figure();
xname('original image');
imshow(img);
img_gray = rgb2gray(img);
img_double = im2double(img_gray);
img_dct = dct(img_double);
figure();
xname('DCT of image using built-in function');
imshow(img_dct);
[m,n]=size(img_gray);
for x=1:m
    for y=1:n
        if x==1
            c(1,y)=sqrt(1/m);
        else
            c(x, y)=sqrt(2/m)*cos((%pi*(2*y+1)*x)/(2*m));
        end
    end
end
result=c*img_double*c';
figure();
xname('DCT of an image using code');
imshow(result);
img_idct=idct(img_dct);
figure;
xname('Inverse DCT using built-in function');
imshow(img_idct);
result_idct=inv(c)*result*inv(c');
figure();
xname('Inverse DCT using code');
imshow(result_idct);
