clc

x=[1,-2,4,6,-5,8,10];  %define the sequence
n=-4:2;
subplot(4,2,1);
stem(n,x);

x11=3*x;
n11=n-2;
subplot(4,2,2);
stem(n11,x11);

x12=x;
n12=n+4;
subplot(4,2,3);
stem(n12,x12);

x13=2*x;
n13=n;
subplot(4,2,4);
stem(n13,x13);

for n=-10:10 ;
    y1=x11+x12+x13;
   
end
m=linspace(-6,6,7);
subplot(4,2,[5: 8]);
stem(m,y1);


