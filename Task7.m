%Clear Command window
clear all;
clc;
%Generating n which from 0 to 50 by step 1 and Generating Gaussian distributed sequence by using randn command
n = 0 : 50 ;
W = rand( 1 , 51 ) ;
%At sigma = 0.01
sigma = 0.01 ;
X1 = cos( 0.04 * pi * n ) + sigma * W ;
%At sigma = 0.2
sigma = 0.2 ;
X2 = cos( 0.04 * pi * n ) + sigma * W ;
%At sigma = 2
sigma = 2 ;
X3 = cos( 0.04 * pi * n ) + sigma * W ;
%Ploting the graphs 

subplot( 3 , 1 , 1 )
stem(n,X1)
title('Sigma = 0.01');
xlabel('n');
ylabel('X1[n]');
grid on;

subplot( 3 , 1 , 2 )
stem(n,X2)
title('Sigma = 0.2');
xlabel('n');
ylabel('X2[n]');
grid on;

subplot( 3 , 1 , 3 )
stem(n,X3)
title('Sigma = 2');
xlabel('n');
ylabel('X3[n]');
grid on;
