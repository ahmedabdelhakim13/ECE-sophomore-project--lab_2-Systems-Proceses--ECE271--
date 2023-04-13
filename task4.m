clear
n=linspace(0,40,20);
x=cos(2*n./3);
y=cos(8*pi*n./38);
subplot(3,2,1);
stem(n,x,'k-o');
xlabel('time');
ylabel('frequency');
grid on

subplot(3,2,3);
stem(n,y,'b-o');
xlabel('time');
ylabel('frequency');
grid on

subplot(3,2,2);
plot(n,x,'k-o');
xlabel('time');
ylabel('frequency');
grid on

subplot(3,2,4);
plot(n,y,'b-o');
xlabel('time');
ylabel('frequency');
grid on

figure,stem(n,x,'r-o');
hold on;
stem(n,y,'b-x');
grid on

m=xcorr(x,x)
t1=n;
t2=-fliplr(n)
a1=min(t1)+min(t2);
a2=max(t1)+max(t2);
a=a1:1:a2;
subplot(3,2,[5 6]);

size (t1);
size (t2);

