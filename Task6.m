%Clear Command window
clear all;
clc;
%a)
n1 = 0 : 25;
X1= zeros( size( n1 ) );
for m = 0 : 10 
    X1 = X1 + ( ( m+1 ) * ( dirac( n1 - 2 * m ) - dirac( n1 - 2 * m - 1  ) ) ) ;
    X1( X1 == Inf ) = m + 1 ;
    X1( X1 == -Inf ) = -( m + 1 ) ;
end

%b)
n2 = -5 : 20 ;
X2 = (n2.^2) .*( heaviside( n2 + 5 ) - heaviside( n2 - 6 ) ) + 10 * dirac( n2 ) +  20 .* 0.5.^( n2 ) .*( heaviside( n2 - 4 ) - heaviside( n2 - 10 )  ) ;

%c)
n3 = 0 : 20 ;
X3 = ( (0.9).^n3 ) .* cos( 0.2 * pi * n3 + pi / 3 );

%d)
n4 = 0 : 19 ;
period_of_X4 = [1, 2, 3, 2];
X4 = repmat(period_of_X4, 1, 5);

%Graphs 

%a)
subplot(2,2,1);
stem(n1, X1);
xlabel('n');
ylabel('X1[n]');
title('X1');
%b)
subplot(2,2,2);
stem(n2, X2);
xlabel('n');
ylabel('X2[n]');
title('X2');
%c)
subplot(2,2,3);
stem(n3, X3);
xlabel('n');
ylabel('X3[n]');
title('X3');
%d)
subplot(2,2,4);
stem(n4, X4);
xlabel('n');
ylabel('X4[n]');
title('X4');
