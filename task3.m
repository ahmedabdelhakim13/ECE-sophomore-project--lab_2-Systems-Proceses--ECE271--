clc
n=0:100;
%defining number of samples 100 sample.
t=n./5000;
%no of samples(n) = time(t) / samplinf frequency(500) 
x1=sin(2*pi*500*t);
x2=sin(2*pi*2000*t);
x3=sin(2*pi*3000*t);
x4=sin(2*pi*4500*t);
%4functions for the 4 different values of f0
%plotting the signals using stem function
subplot(4,1,1);
stem(n,x1);
subplot(4,1,2);
stem(n,x2);
subplot(4,1,3);
stem(n,x3);
subplot(4,1,4);
stem(n,x4);
% when fs=50000anf f0=2000
t_new=n./50000;
%definning a new time
t_new_even=t_new(2:2:100);
%to select only even samples we take step of 2 from the rang of n[0:100]
x_new=sin(2*pi*2000*t_new);
x_new_even=x_new(2:2:100);
%plottinf the new fun tions
figure;
subplot(2,1,1);
stem(t_new,x_new);
subplot(2,1,2);
stem(t_new_even,x_new_even);
