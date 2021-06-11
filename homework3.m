clc;
k = 1.38064852e-23;
T =linspace(0,1e10,1000);
xiH = 13.6*1.6e-19;
factor =(1+(2/3)*(1/9)*((3/2)+((xiH)./(k*T))).^2);
%r=log10(T,factor);
plot(T,factor)
hold on;
grid on;
xlabel('Temperature(K)')
ylabel('Factor In Specific Heat')
title('Problem 3,Part g')

