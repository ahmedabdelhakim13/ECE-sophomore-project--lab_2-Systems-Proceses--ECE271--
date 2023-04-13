clear all;
clc;
DcSignal_1 = 4 * ones( 1 , ( 2 - 0 ) * 100 );
t = linspace( 0 , 1 , 100 );
Sinusoidal_signal = cos( 2 * pi * ( t * 0.25 ) )+3;
DcSignal_2 = 3 * ones( 1 , ( 3 - 1) * 100 );
time = linspace( -2 , 3 , ( 3--2 ) * 100 ); 
Main_Signal = [ DcSignal_1 Sinusoidal_signal DcSignal_2 ];
figure
plot( time , Main_Signal );
axis( [ -2 3 0  6 ] );
title('The Signal');
xlabel('Time');
ylabel('Amplitude');
grid on;