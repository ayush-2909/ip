clc;
clear;
fm=input('Enter the input signal frequency ');
k=input('Enter the no of input cycles ');
A=input('Enter the amplitude ');
tm=0:1/(fm*fm):k/fm;
x=A*cos(2*%pi*fm*tm);
figure(1);
a=gca();
a.x_location="origin";
a.y_location="origin";
plot(tm,x);
title('original signal');
xlabel('time');
ylabel('amplitude');
xgrid(1);
fnyq=2*fm;
fs=(3/4)*fnyq;
n=0:1/fs:k/fm;
xn=A*cos(2*%pi*fm*n);
figure(2);
a=gca();        
a.x_location="origin";
a.y_location="origin";
plot2d3('gnn',n,xn);
plot(n,xn,'r');
title('under sampling');
xlabel('time');
ylabel('amplitude');
xgrid(1);
fs=fnyq;
n=0:1/fs:k/fm;
xn=A*cos(2*%pi*fm*n);
figure(3);
a=gca();
a.x_location="origin";
a.y_location="origin";
plot2d3('gnn',n,xn);
plot(n,xn,'r');
title('nyquist sampling');
xlabel('time');
ylabel('amplitude');
xgrid(1);
fs=10*fnyq;
n=0:1/fs:k/fm;
xn=A*cos(2*%pi*fm*n);
figure(4);
a=gca();
a.x_location="origin";
a.y_location="origin";
plot2d3('gnn',n,xn);
plot(n,xn,'r');
title('over sampling');
xlabel('time');
ylabel('amplitude');
xgrid(1);
