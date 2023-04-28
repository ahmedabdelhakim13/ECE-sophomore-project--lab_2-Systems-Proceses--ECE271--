clear all;
clc;
x = linspace( 0 , 10 , 1000 );
Y1 = sin( x ) ./ x;
Y2 = ( 1 ./ ( x - 1 ).^2 ) + x ;
Y3 = ( x.^2 + 1  ) ./ ( x.^2 - 4 ) ;
Y4 = ((( 10 - x ).^(1/3))-2) ./ (  4 - x.^2  ).^(1/2) ;
subplot(2,2,1)
plot(x,Y1)
subplot(2,2,2)
plot(x,Y2)
subplot(2,2,3)
plot(x,Y3)
subplot(2,2,4)
plot(x,Y4)