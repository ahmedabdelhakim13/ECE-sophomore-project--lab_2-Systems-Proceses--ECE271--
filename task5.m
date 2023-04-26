clc

x=[1,-2,4,6,-5,8,10];  %define the sequence
n=linspace(-4,2,7);

x11=3*[ x(3:end) zeros(1,2)];
x12=[zeros(1,4) x(1:end-4)];
x13=2*x;

y1=x11+x12+x13;
subplot(3,1,1)
stem(n,y1);


x21=[x(5:end) zeros(1,4)];      %x(n+4) shiftingleft by 4 units 
x22= [zeros(1,1) x(1:end-1)];   %x(n-1) shifting right by one unit
x__=  [x(3:end) zeros(1,2)];  %x(2-n)shifthing right by 2unit then reflect
x23= [ zeros(1,2) x__(end:-1:3)]; 

y2=x21.*x22+x23.*x;
subplot(3,1,2)
stem(n,y2);

y3=n.*[zeros(1,1) x(1:end-1)] + n.*[zeros(1,2) x(1:end-2)]+ n.*[zeros(1,3) x(1:end-3)] + n.*[zeros(1,4) x(1:end-4)] +n.*[zeros(1,5) x(1:end-5)];
subplot(3,1,3)
stem(n,y3);

