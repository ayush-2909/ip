clc;
clear all;
a=imread("C:\Users\Dell\Downloads\cameraman.jpg");
[row col]=size(a);
frequency=1:256;
count=0;
for i=1:256
    for j=1:row
        for k=1:col
            if a(j,k)==i-1
                count=count+1;
            end
        end
    end
frequency(i)=count;
count=0;
end
n=0:255
plot2d3(n,frequency);
xgrid(1);
ylabel('Number of pixels with such intensity levels-->');
xlabel('Intensity Levels-->');
title('HISTOGRAM OF THE IMAGE');
