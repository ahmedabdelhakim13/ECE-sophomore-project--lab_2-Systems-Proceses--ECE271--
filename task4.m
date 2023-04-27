clear
n=linspace(0,40,20);
t=linspace(0,40,4000);
%---------------------------------;
Xdis=cos((2.*n)./3);%disrete signal
Xcont=cos((2.*t)./3);%contineous signal
%-------------------------------------;
Ydis=cos((8.*pi.*n)./38)%disrete signal
Ycont=cos((8.*pi.*t)./38)%contineous signal
%--------------------------------------;
subplot(2,2,1)
stem(n,Xdis)
xlabel('sampels');
ylabel('frequency');
grid on;

subplot(2,2,2);
plot(t,Xcont);
xlabel('time');
ylabel('frequency');
grid on;

subplot(2,2,3);
stem(n,Ydis);
xlabel('sampels');
ylabel('frequency');
grid on;
subplot(2,2,4);
plot(t,Ycont);
xlabel('time');
ylabel('frequency)');
grid on;
%for better vesion of the functions
figure;
stem(n,Xdis,'k-o');
figure;
stem(n,Ydis,'k-o');
figure;
plot(t,Xcont);
figure;
plot(t,Ycont);
