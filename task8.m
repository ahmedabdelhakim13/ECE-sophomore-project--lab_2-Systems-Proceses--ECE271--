n=-10:10;
real_part= exp(-0.1).*n;
imaginary_part=exp(0.3*i).*n;
signal= real_part .* imaginary_part;

subplot(2,2,1);
plot(n,abs(signal));

subplot(2,2,2);
plot(n,angle(signal));

subplot(2,2,3);
plot(n,real_part);


subplot(2,2,4);
plot(imaginary_part);