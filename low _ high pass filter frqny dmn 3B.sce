clear;
clc;
clear all;
close;
img=imread("C:\Users\Dell\Downloads\lenna.png");
img_gray=rgb2gray(img);
img_gray=imresize(img_gray,[256,256]);
figure();
xname('Gray image');
imshow(img_gray);
mask_LPF=ones(3,3)/9;
disp(mask_LPF);
img_LPF=conv2(double(img_gray),mask_LPF);
img_LPF=uint8(img_LPF)
figure(0);
xname('Image after LPF');
imshow(uint8(img_LPF));
mask_HPF=ones(3,3);
mask_HPF=mask_HPF*-1;
mask_HPF(2,2)=mask_HPF(2,2)+9
disp(mask_HPF);
mask_HPF=mask_HPF/9
disp(mask_HPF);
img_HPF=conv2(double(img_gray),mask_HPF);
figure(0);
xname('Image after HPF');
img_HPF=(abs(img_HPF)+img_HPF)/2;
img_HPF=uint8(img_HPF)
imshow(uint8(img_HPF));
mask_HBF=ones(3,3);
mask_HBF=mask_HBF*-1;
A=5;
mask_HBF(2,2)=8+A
disp(mask_HBF);
mask_HBF=mask_HBF/9
disp(mask_HBF);
[m,n]=size(img_gray)
padded_img=zeros(m+2,n+2);
u=2;
v=2;
for x=1:m
    for y=1:n
        padded_img(u,v)=img_gray(x,y);
        v=v+1;
    end
    u=u+1;
    v=2;
end
hbf=zeros(m+2,n+2); 
u=1;
v=1;
for x=2:m+1
    for y=2:n+1
        hbf(x,y)=padded_img(x-1,y-1)*mask_HBF(1,1)+padded_img(x-1,y)*mask_HBF(1,2)+padded_img(x-1,y+1)*mask_HBF(1,3)+padded_img(x,y-1)*mask_HBF(2,1)+padded_img(x,y)*mask_HBF(2,2)+padded_img(x,y+1)*mask_HBF(2,3)+padded_img(x+1,y-1)*mask_HBF(3,1)+padded_img(x+1,y)*mask_HBF(3,2)+padded_img(x+1,y+1)*mask_HBF(3,3);
        v=v+1;
    end
    u=u+1;
end
for x=2:m+1
    for y=2:n+1
        hbf_img(x-1,y-1)=hbf(x,y);
    end
end
hbf_img=(abs(hbf_img)+hbf_img)/2;
figure();
xname('HBF image');
imshow(uint8(hbf_img));
N=3
sigma=1
ind=-floor(N/2):floor(N/2);
disp(ind)
[XY]=meshgrid(ind,ind)
mask_gaussian=(1/(2*%pi*sigma))*exp(-(x.^2+y.^2)/(2*sigma*sigma));
mask_gaussian=[[1,2,1];[2,4,2];[1,2,1]];
disp(mask_gaussian)
mask_gaussian=mask_gaussian/sum(mask_gaussian(:));
disp(mask_gaussian)
img_gaussian = conv2(double(img_gray),mask_gaussian);
figure();
xname('Image after Gaussian Filter');
imshow(uint8(img_gaussian));
imwrite(uint8(img_gaussian),'noise filtered img gaussian.jpg');
