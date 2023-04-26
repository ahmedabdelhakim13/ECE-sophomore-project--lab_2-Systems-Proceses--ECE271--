clc

X=[1,-2,4,6,-5,8,10];  %define the sequence


% y1 = 3x[n+2] + x[n-4] + 2x[n]
y1 = zeros(1, length(x));
for n = 1:length(x)
    if n+2 <= length(x)
        y1(n) = 3*x(n+2);
    end
    if n-4 >= 1
        y1(n) = y1(n) + x(n-4);
    end
    y1(n) = y1(n) + 2*x(n);
end

% y2 = x[n+4]*x[n-1] + x[2-n]*x[n]
y2 = zeros(1, length(x));
for n = 1:length(x)
    if n+4 <= length(x)
        y2(n) = x(n+4)*x(n-1);
    end
    if 2-n >= 1 && 2-n <= length(x)
        y2(n) = y2(n) + x(2-n)*x(n);
    end
    
    % y3 = sum(x[n-k])
y3 = zeros(1, length(x));
for n = 1:length(x)
    for k = 1:n
        y3(n) = y3(n) + x(n-k+1);
    end
end