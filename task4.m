clear
n=linspace(-20,20,20);
%definng the period
x=cos(2*n./3);
y=cos(8*pi*n./38);
subplot(2,2,1);
stem(n,x,'k-o');
xlabel('time');
ylabel('frequency');
grid on

subplot(2,2,3);
stem(n,y,'b-o');
xlabel('time');
ylabel('frequency');
grid on
%%changing the period of the signalto the double
m=linspace(-40,40,40);
w= resample(x,2,1);
z= upsample(y,2,1);

subplot(2,2,2);
stem(m,w,'k-o');
xlabel('time');
ylabel('frequency');
grid on

subplot(2,2,4);
stem(m,z,'k-o');
xlabel('time');
ylabel('frequency');
grid on

%%
%%changing the frequency and period 

n=linspace(0,40,20)%because the sampling time T=2 so sampling freq is 0.5
t=linspace(0,40,4000)%because it was said in the section that in cont time signals we assume the sampling rate to be 100

x_of_n=cos((2.*n)./3)
x_of_t=cos((2.*t)./3)

y_of_n=cos((8.*pi.*n)./38)
y_of_t=cos((8.*pi.*t)./38)

subplot(2,2,1)
stem(n,x_of_n)
xlabel('n')
ylabel('x(n)')

subplot(2,2,2)
plot(t,x_of_t)
xlabel('t')
ylabel('x(t)')

subplot(2,2,3)
stem(n,y_of_n)
xlabel('n')
ylabel('y(n)')

subplot(2,2,4)
plot(t,y_of_t)
xlabel('t')
ylabel('y(t)')


