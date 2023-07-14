clc; 
clear all;
x =[1,2,3;4,5,6;7,8,9];
h = [1,1;1,1;1,1];
y = corr2(x,h);
disp(y);
