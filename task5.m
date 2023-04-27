clc
x=[0,0,0,0,1,-2,4,6,-5,8,10,0,0,0,0];  %define the sequence
n=linspace(-8,6,15);
%----------------------------;
%defining the terms of the first magnitude.
x11=3*[ x(3:end) zeros(1,2)]; %3x(n+2)
x12=[zeros(1,4) x(1:end-4)];  %x(n-4)
x13=2*x;                      %2x
figure;
y1=x11+x12+x13;               %3x(n+2)+x(n-4)+2x 
stem(n,y1);
title('Y1');
%------------------------------;
%defining the terms of the second magnitude.
x21=[x(5:end) zeros(1,4)];      %x(n+4) 
x22= [zeros(1,1) x(1:end-1)];   %x(n-1) 
xtemp= [x(3:end) zeros(1,2)];  
x23= [ zeros(1,2) xtemp(end:-1:3)]; %x(2-n)
y2=(x21.*x22)+(x23.*x);
figure;
stem(n,y2);
grid on;
title('Y2');
%------------------------------;
figure;
y3=n.*[zeros(1,1) x(1:end-1)] + n.*[zeros(1,2) x(1:end-2)]
+ n.*[zeros(1,3) x(1:end-3)] + n.*[zeros(1,4) x(1:end-4)] 
+n.*[zeros(1,5) x(1:end-5)];
stem(n,y3);
grid on;
title('Y3');
