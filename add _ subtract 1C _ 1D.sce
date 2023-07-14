clc;
clear all;
A=imread("C:\Users\Dell\Downloads\lenna.png");
B=imread("C:\Users\Dell\Downloads\pepper.png");
A=rgb2gray(A);
B=rgb2gray(B);
C=imadd(B, A);
D=imsubtract(B, A);
figure(1);
subplot(2,2,1);
imshow(A);
subplot(2,2,2);
imshow(B);
subplot(2,2,3);
imshow(C);
subplot(2,2,4);
imshow(D);
