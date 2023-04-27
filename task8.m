n=-10:1:10;
signal=exp(n.*(-0.1+0.3i));
%------------------;
%function real returns the real part of the signal
Real_part=real(signal); 
subplot(2,2,1)
stem(n,Real_part);
grid on;
ylabel('Real');
xlabel('samples');
title('Real');
%------------------;
%function imaginary returns the imaginary part of the signal
Imaginary_part=imag(signal);
subplot(2,2,2)
stem(n,Imaginary_part);
grid on;
ylabel('Imaginary');
xlabel('samples');
title('Imaginary');
%------------------;
%function abs returns the magnitude of the signal
Magnitude=abs(signal); 
subplot(2,2,3)
stem(n,Magnitude);
grid on;
ylabel('Magnitude');
xlabel('samples');
title('Magnitude');
%-------------------;
%function anglereturns the angle of the signal
Angle=angle(signal);
subplot(2,2,4)
stem(n,Angle);
grid on;
ylabel('Angle');
xlabel('samples');
title('angle');
