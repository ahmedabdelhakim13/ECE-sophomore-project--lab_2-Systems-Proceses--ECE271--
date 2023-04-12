clc
t1 = linspace(0,100,500);
x1=sin(2*pi*0.5*t);
x2=sin(2*pi*2*t);
x3=sin(2*pi*3*t);
x4=sin(2*pi*4.5*t);
%plotting the signals 
figure, plot(t,x1);
figure,plot(t,x2);
figure, plot(t,x3);
figure,plot(t,x4);

t2= linspace(0,100,5000);
y=sin(2*pi*2*t2);
figure,plot(t2,y);