clc
t=linspace(0,4,400);
x=3*sin(2*pi*t);
x(find(x<0))=0;
x2=x.*(x>0);
plot (t,x);
plot(t,x2);