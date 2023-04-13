clear
n=linspace(0,40,20);
x=cos(2*n./3);
y=cos(8*pi*n./38);
subplot(2,2,1);
stem(n,x,'k-o');
xlabel('time');
ylabel('frequency');

subplot(2,2,3);
stem(n,y,'b-o');
xlabel('time');
ylabel('frequency');
axis tight

subplot(2,2,2);
plot(n,x,'k-o');
xlabel('time');
ylabel('frequency');
axis tight

subplot(2,2,4);
plot(n,y,'b-o');
xlabel('time');
ylabel('frequency');
axis tight

figure,stem(n,x,'r-o');
hold on;
stem(n,y,'b-x');