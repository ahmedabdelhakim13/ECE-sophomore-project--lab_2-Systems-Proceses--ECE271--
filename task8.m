n=-10:1:10;
signal=exp(n.*(-0.1+0.3i));
Real_part=real(signal);  
%function real returns the real part of the signal
Imaginary_part=imag(signal);
%function imaginary returns the imaginary part of the signal
Magnitude=abs(signal);   
%function abs returns the magnitude of the signal
Angle=angle(signal);
%function anglereturns the angle of the signal

subplot(2,2,1)
stem(n,Real_part);
grid on;
ylabel('Real');
%------------------;
subplot(2,2,2)
stem(n,Imaginary_part);
grid on;
ylabel('Imaginary');
%------------------;
subplot(2,2,3)
stem(n,Magnitude);
grid on;
ylabel('Magnitude');
%-------------------;
subplot(2,2,4)
stem(n,Angle);
grid on;
ylabel('Angle');
