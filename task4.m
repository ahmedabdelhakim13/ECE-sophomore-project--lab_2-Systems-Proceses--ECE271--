clear
n=linspace(-20,20,20);
%definng the period
x=cos(2*n./3);
y=cos(8*pi*n./38);
subplot(2,2,1);
stem(n,x,'k-o');
xlabel('sampels');
ylabel('frequency');
grid on

subplot(2,2,3);
stem(n,y,'b-o');
xlabel('sampels');
ylabel('frequency');
grid on
%%changing the period of the signalto the double
m=linspace(-40,40,40);
w= resample(x,2,1);
z= upsample(y,2,1);

subplot(2,2,2);
stem(m,w,'k-o');
xlabel('sampels');
ylabel('frequency');
grid on

subplot(2,2,4);
stem(m,z,'k-o');
xlabel('sampels');
ylabel('frequency');
grid on
%for better vesion of the functions
figure;
stem(n,x,'k-o');
figure;
stem(n,y,'k-o');
figure;
stem(m,w,'k-o');
figure;
stem(m,z,'k-o');

%%changing the frequency and period 

n_new=linspace(0,40,20);
t=linspace(0,40,4000);

Xdis=cos((2.*n)./3);%disrete signal
Xcont=cos((2.*t)./3);%contineous signal

Ydis=cos((8.*pi.*n)./38)%disrete signal
Ycont=cos((8.*pi.*t)./38)%contineous signal

subplot(2,2,1)
stem(n_new,Xdis)
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
stem(n_new,Xdis,'k-o');
figure;
stem(n_new,Ydis,'k-o');
figure;
plot(t,Xcont);
figure;
plot(t,Ycont);


