clear
n=linspace(0,40,20);
x=cos(2*n./3);
y=cos(8*pi*n./38);
subplot(2,1,1);
stem(n,x,'k-o');
subplot(2,1,2);
stem(n,y,'g-o');